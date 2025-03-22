package org.fcub.linkdata;

import moe.caa.multilogin.api.data.MultiLoginPlayerData;
import net.md_5.bungee.api.ChatColor;
import org.bukkit.Server;
import org.bukkit.command.Command;
import org.bukkit.command.CommandExecutor;
import org.bukkit.command.CommandSender;
import org.bukkit.entity.Player;
import org.bukkit.scheduler.BukkitRunnable;
import org.fcub.plugin.Common;
import org.fcub.plugin.Main;
import org.jetbrains.annotations.NotNull;

import java.util.UUID;

public class UnlinkCommand implements CommandExecutor {

    private final Main main;
    private final Common common;

    public UnlinkCommand(Main main, Common common) {
        this.main = main;
        this.common = common;
    }

    @Override
    public boolean onCommand(@NotNull CommandSender commandSender, @NotNull Command command, @NotNull String s, String[] args) {
        if (!(commandSender instanceof Player player)) {
            main.getLogger().warning("此命令仅限玩家使用");
            return false;
        }
        if (common.mlAPI == null) {
            String failMsg = "执行失败: 找不到 MultiLogin API";
            commandSender.sendMessage(ChatColor.RED + failMsg);
            main.getLogger().warning(failMsg);
        }
        MultiLoginPlayerData playerML = common.mlAPI.getPlayerData(player.getUniqueId());
        UUID onlineID = playerML.getOnlineProfile().getId();
        int serviceId = playerML.getLoginService().getServiceId();
        if (onlineID.compareTo(player.getUniqueId()) == 0) {
            // 未绑定至任何身份
            commandSender.sendMessage("§c当前未绑定到其它身份");
//            commandSender.spigot().sendMessage(simpleTrans("fcub.unlinkdata.error.notLinked", ChatColor.RED));
            return false;
        }
        Server server = main.getServer();
        CommandSender console = server.getConsoleSender();
        server.dispatchCommand(console, String.format("multilogin profile set %s %s %s", onlineID, serviceId, onlineID));
        new BukkitRunnable() {
            @Override
            public void run(){
                server.dispatchCommand(console, "multilogin confirm");
            }
        }.runTaskLater(main, 10L);
        new BukkitRunnable() {
            @Override
            public void run(){
                // 如果 MultiLogin 未踢出玩家，则玩家会看到这条消息
                commandSender.sendMessage("§6已尝试解除您和 " + player.getName() + " 的绑定，但貌似遇到了点问题。\n§b如果重进后仍然未回到原先的身份及存档，请重新使用命令再试。");
//                commandSender.spigot().sendMessage(new TranslatableComponent("fcub.unlinkdata.problem"));
            }
        }.runTaskLaterAsynchronously(main, 20L);
        return true;
    }
}
