package org.fcub.plugin;

import org.bukkit.Server;
import org.bukkit.command.CommandSender;
import org.bukkit.event.Listener;
import org.bukkit.entity.Player;
import org.bukkit.event.EventHandler;
import org.bukkit.event.player.PlayerJoinEvent;
import org.bukkit.event.player.PlayerQuitEvent;
import org.bukkit.scheduler.BukkitRunnable;

import java.util.Set;
import java.util.UUID;

import static org.bukkit.Bukkit.getLogger;
import static org.bukkit.Bukkit.getServer;

public class FCUBListener implements Listener {

    //控制台
    Server server = getServer();
    CommandSender consoleSender = server.getConsoleSender();
    Common common;

    public FCUBListener(Common common) {
        this.common = common;
    }

    //命令执行器
    public void consoleExec(String command){
        server.dispatchCommand(consoleSender, command);
    }
    //登录失败后记录，以免踢出时弹出消息
    boolean loginFail = false;
    //玩家进服事件
    @EventHandler
    public void onPlayerJoin(PlayerJoinEvent event) {
        Player player = event.getPlayer();
        UUID playerUUID = player.getUniqueId();
        String playerName = player.getName();
        boolean isGeyser = common.geyserAPI != null && common.geyserAPI.isBedrockPlayer(playerUUID);
        boolean isFloodgate = common.fgAPI != null && common.fgAPI.isFloodgatePlayer(playerUUID);
        //检查玩家是否绑定账户
        if (common.mlAPI != null && ! common.mlAPI.getPlayerData(playerUUID).getOnlineProfile().getId().equals(playerUUID)) {
            player.addScoreboardTag("linked_account");
        } else {
            player.removeScoreboardTag("linked_account");
        }
        //进服提示区分客户端
        String edition = (isFloodgate || isGeyser) ? "bedrock" : "java";
//        if (fgVaild && !isFloodgate && geyserVaild && isGeyser) loginFail = true;
//        else {
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
                    consoleExec("execute as " + playerUUID + " run tellraw @a[name=!" + playerName + "] [{\"translate\":\"fcub." + edition + ".player\", \"fallback\":\"§" + (edition.equals("java") ? "b" : "a") + "[" + editionView + "]§e \"},{\"translate\":\"multiplayer.player.joined\", \"with\":[{\"selector\":\"@s\"}], \"color\":\"yellow\"}]");
                }
            }.runTaskLater(Main.getPlugin(Main.class), 0L);
//        }
        event.setJoinMessage(null);
    }
    //玩家退出事件
    @EventHandler
    public void onPlayerQuit(PlayerQuitEvent event) {
        event.setQuitMessage(null);
        Player player = event.getPlayer();
        // 如果登录失败，则不显示消息
//        if(loginFail) {
//            loginFail = false;
//            return;
//        }
        UUID playerUUID = player.getUniqueId();
        String playerName = player.getName();
        Set<String> tags = player.getScoreboardTags();
        boolean hideMsg = false;
        boolean isBedrock = false;
        for (String tag : tags) {
            if (tag.equals("hide_join_msg")) hideMsg = true;
            else if (tag.equals("player_bedrock")) isBedrock = true;
            if (hideMsg && isBedrock) break;
        }
        String platformView = isBedrock ? "Bedrock" : "Java";
        String platform = isBedrock ? "bedrock" : "java";
        if (!hideMsg)
            consoleExec("execute as " + playerUUID + " run tellraw @a [{\"translate\":\"fcub." + platform + ".player\", \"fallback\":\"§" + (isBedrock ? "a" : "b") + "[" + platformView + "]§e \"},{\"translate\":\"multiplayer.player.left\", \"with\":[{\"selector\":\"@s\"}], \"color\":\"yellow\"}]");
        if (server.getOnlinePlayers().size() == 1) getLogger().info("所有玩家已退出！");
    }
}
