package org.pcub.fcub;

import org.bukkit.Server;
import org.bukkit.command.CommandSender;
import org.bukkit.event.Listener;
import org.bukkit.entity.Player;
import org.bukkit.event.EventHandler;
import org.bukkit.event.player.PlayerJoinEvent;
import org.bukkit.event.player.PlayerQuitEvent;
import org.bukkit.scheduler.BukkitRunnable;
import org.geysermc.floodgate.api.FloodgateApi;
import org.geysermc.geyser.api.GeyserApi;

import java.util.Set;
import java.util.UUID;

import static org.bukkit.Bukkit.getLogger;
import static org.bukkit.Bukkit.getServer;

public class FCUBListener implements Listener {
    //获取类
    FCUBListener self = this;
    //控制台
    Server server = getServer();
    CommandSender consoleSender = server.getConsoleSender();
    //命令执行器
    public void consoleExec(String command){
        server.dispatchCommand(consoleSender, command);
    }
    //检查Geyser插件
    boolean geyserVaild = getServer().getPluginManager().getPlugin("Geyser-Spigot") != null;
    //检查Floodgate插件
    boolean fgVaild = getServer().getPluginManager().getPlugin("floodgate") != null;
    //登录失败后记录，以免踢出时弹出消息
    UUID loginFaildPlayer = null;
    //玩家进服事件
    @EventHandler
    public void onPlayerJoin(PlayerJoinEvent event) {
        Player player = event.getPlayer();
        UUID playerUUID = player.getUniqueId();
        String playerName = player.getName();
        String playerDisplay = player.getDisplayName();
        FloodgateApi fgInstance = (!fgVaild) ? null : FloodgateApi.getInstance();
        boolean isGeyser = geyserVaild && GeyserApi.api().isBedrockPlayer(playerUUID);
        boolean isFloodgate = fgVaild && fgInstance.isFloodgatePlayer(playerUUID);
        //检查玩家是否绑定账户
        fgInstance.getPlayerLink().isLinkedPlayer(playerUUID).thenAccept( isLinked -> {
            if (isLinked) player.addScoreboardTag("linked_account");
            else player.removeScoreboardTag("linked_account");
        });
        //进服提示区分客户端
        String edition = (isFloodgate || isGeyser) ? "bedrock" : "java";
        if (fgVaild && !isFloodgate && geyserVaild && isGeyser) loginFaildPlayer = playerUUID;
        else {
            Set<String> tags = player.getScoreboardTags();
            boolean hideMsg = false;
            for (String tag : tags)
                if (tag.equals("hide_join_msg")) {
                    hideMsg = true;
                    break;
                }
            String editionView = edition.toUpperCase().charAt(0) + edition.substring(1);
            if(!hideMsg) new BukkitRunnable() {
                @Override
                public void run() {
                    consoleExec("execute as " + playerUUID + " run tellraw @a[name=!" + playerName + "] [{\"translate\":\"fcub." + edition + ".player\", \"fallback\":\"§" + ((edition == "java") ? "b" : "a") + "[" + editionView + "]§e \"},{\"translate\":\"multiplayer.player.joined\", \"with\":[{\"selector\":\"@s\"}], \"color\":\"yellow\"}]");
                }
            }.runTaskLater(Main.getPlugin(Main.class), 0L);
            getLogger().info("\n[" + editionView + "] " + playerDisplay + "（" + playerName + "）加入了游戏");
        }
        event.setJoinMessage(null);
    }
    //玩家退出事件
    @EventHandler
    public void onPlayerQuit(PlayerQuitEvent event) {
        Player player = event.getPlayer();
        //如果正常登录，则在退出时显示消息
        if(loginFaildPlayer != null && loginFaildPlayer.compareTo(player.getUniqueId()) == 0) loginFaildPlayer = null;
        else {
            UUID playerUUID = player.getUniqueId();
            String playerName = player.getName();
            String playerDisplay = player.getDisplayName();
            Set<String> tags = player.getScoreboardTags();
            boolean hideMsg = false;
            String platform = "java";
            for (String tag : tags) {
                if (tag.equals("hide_join_msg")) hideMsg = true;
                else if (tag.equals("player_bedrock")) platform = "bedrock";
            }
            consoleExec("execute as " + playerUUID + " run function aiod:timer_sync");
            String platformView = platform.toUpperCase().charAt(0) + platform.substring(1);
            if (!hideMsg)
                consoleExec("execute as " + playerUUID + " run tellraw @a[name=!" + playerName + "] [{\"translate\":\"fcub." + platform + ".player\", \"fallback\":\"§" + ((platform == "java") ? "b" : "a") + "[" + platformView + "]§e \"},{\"translate\":\"multiplayer.player.left\", \"with\":[{\"selector\":\"@s\"}], \"color\":\"yellow\"}]");
            getLogger().info("\n[" + platformView + "] " + playerDisplay + "（" + playerName + "）退出了游戏");
            if (getServer().getOnlinePlayers().size() == 1) getLogger().info("所有玩家已退出！");
        }
        event.setQuitMessage(null);
    }
}
