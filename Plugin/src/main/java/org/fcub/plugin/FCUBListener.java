package org.fcub.plugin;

import moe.caa.multilogin.api.data.MultiLoginPlayerData;
import moe.caa.multilogin.api.service.ServiceType;
import net.md_5.bungee.api.ChatColor;
import net.md_5.bungee.api.chat.ClickEvent;
import net.md_5.bungee.api.chat.HoverEvent;
import net.md_5.bungee.api.chat.TextComponent;
import net.md_5.bungee.api.chat.TranslatableComponent;
import net.md_5.bungee.api.chat.hover.content.Entity;
import org.bukkit.Bukkit;
import org.bukkit.event.Listener;
import org.bukkit.entity.Player;
import org.bukkit.event.EventHandler;
import org.bukkit.event.player.PlayerJoinEvent;
import org.bukkit.event.player.PlayerQuitEvent;
import org.bukkit.scheduler.BukkitRunnable;

import java.util.Set;
import java.util.UUID;

public class FCUBListener implements Listener {

    Common common;

    public FCUBListener(Common common) {
        this.common = common;
    }

    public void joinQuitMessage (Player player, boolean isBedrock, String mode) {
        String playerName = player.getName();
        UUID playerID = player.getUniqueId();
        new BukkitRunnable() {
            @Override
            public void run() {
                // 玩家名称
                TextComponent playerComp = new TextComponent(playerName);
                playerComp.setInsertion(playerName);
                playerComp.setClickEvent(new ClickEvent(ClickEvent.Action.SUGGEST_COMMAND,
                        "/tell " + playerName + " "));
                playerComp.setHoverEvent(new HoverEvent(HoverEvent.Action.SHOW_ENTITY,
                        new Entity("minecraft:player", playerID.toString(), new TextComponent(playerName))));
                // 主文本
                TranslatableComponent messageEx = new TranslatableComponent("multiplayer.player." + mode);
                messageEx.setColor(ChatColor.YELLOW);
                messageEx.addWith(playerComp);
                // 最终加上前缀
                String platform = isBedrock ? "bedrock" : "java";
                TranslatableComponent message = new TranslatableComponent("fcub." + platform + ".player");
                message.setFallback(isBedrock ? "§a[Bedrock]§e " : "§b[Java]§e ");
                message.addExtra(messageEx);
                // 发送
                for (Player other : Bukkit.getServer().getOnlinePlayers()) {
                    if (player != other) {
                        other.spigot().sendMessage(message);
                    }
                }
            }
        }.runTaskAsynchronously(Main.getPlugin(Main.class));
    }

    // 玩家进服事件
    @EventHandler
    public void onPlayerJoin(PlayerJoinEvent event) {
        Player player = event.getPlayer();
        UUID playerUUID = player.getUniqueId();
        MultiLoginPlayerData playerML = common.mlAPI == null ? null : common.mlAPI.getPlayerData(playerUUID);
        // 发送进服消息
        Set<String> tags = player.getScoreboardTags();
        if(!tags.contains("hide_join_msg")) {
            joinQuitMessage(player, playerML != null && playerML.getLoginService().getServiceType() == ServiceType.FLOODGATE, "joined");
        }
        // 检查玩家是否绑定账户
        if (playerML != null && playerML.getOnlineProfile().getId().equals(playerUUID)) {
            player.removeScoreboardTag("linked_account");
        } else {
            player.addScoreboardTag("linked_account");
        }
        // 取消原版进服消息
        event.setJoinMessage(null);
    }
    // 玩家退出事件
    @EventHandler
    public void onPlayerQuit(PlayerQuitEvent event) {
        Player player = event.getPlayer();
        Set<String> tags = player.getScoreboardTags();
        // 发送退出消息
        if (Bukkit.getServer().getOnlinePlayers().size() == 1) {
            Bukkit.getLogger().info("所有玩家已退出！");
        } else if (!tags.contains("hide_join_msg")) {
            joinQuitMessage(player, tags.contains("player_bedrock"), "left");
        }
        // 取消原版退出消息
        event.setQuitMessage(null);
    }
}
