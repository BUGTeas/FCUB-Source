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
    Player loginFaildPlayer = null;
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
        String edition = (isFloodgate || isGeyser) ? "bedrock" : "java";
        if (fgVaild && !isFloodgate && geyserVaild && isGeyser) loginFaildPlayer = player;
        else {
            Set<String> tags = player.getScoreboardTags();
            boolean hideMsg = false;
            for (String tag : tags)
                if (tag.equals("hide_join_msg")) {
                    hideMsg = true;
                    break;
                }
            boolean finalHideMsg = hideMsg;
            new BukkitRunnable() {
                @Override
                public void run() {
                    if (!finalHideMsg)
                        consoleExec("execute as " + playerUUID + " run tellraw @a[name=!" + playerName + "] [{\"translate\":\"fcub." + edition + ".player\"},{\"text\":\" \"},{\"translate\":\"multiplayer.player.joined\", \"with\":[{\"selector\":\"@s\"}], \"color\":\"yellow\"}]");
                    //if (!(isFloodgate && !fgPlayer.isLinked())) targetPlayer.performCommand("bskin quiet " + targetName);
                }
            }.runTaskLater(Main.getPlugin(Main.class), 0L);
        }
        getLogger().info("\n[" + edition.toUpperCase().charAt(0) + edition.substring(1) + "] " + playerDisplay + "（" + playerName + "）加入了游戏");
        event.setJoinMessage(null);
    }
    //玩家退出事件
    @EventHandler
    public void onPlayerQuit(PlayerQuitEvent event) {
        Player player = event.getPlayer();
        if(loginFaildPlayer == player) loginFaildPlayer = null;
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
            if (!hideMsg)
                consoleExec("execute as " + playerUUID + " run tellraw @a[name=!" + playerName + "] [{\"translate\":\"fcub." + platform + ".player\"},{\"text\":\" \"},{\"translate\":\"multiplayer.player.left\", \"with\":[{\"selector\":\"@s\"}], \"color\":\"yellow\"}]");
            getLogger().info("\n[" + platform.toUpperCase().charAt(0) + platform.substring(1) + "] " + playerDisplay + "（" + playerName + "）退出了游戏");
            if (getServer().getOnlinePlayers().size() == 1) getLogger().info("所有玩家已退出！");
        }
        event.setQuitMessage(null);
    }
}
