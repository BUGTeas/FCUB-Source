package org.fcub.linkdata;

import moe.caa.multilogin.api.data.MultiLoginPlayerData;
import net.md_5.bungee.api.ChatColor;
import net.md_5.bungee.api.chat.*;
import net.md_5.bungee.api.chat.hover.content.Entity;
import net.md_5.bungee.api.chat.hover.content.Text;
import org.bukkit.Server;
import org.bukkit.command.Command;
import org.bukkit.command.CommandExecutor;
import org.bukkit.command.CommandSender;
import org.bukkit.entity.Player;
import org.bukkit.scheduler.BukkitRunnable;
import org.fcub.plugin.Common;
import org.fcub.plugin.Main;
import org.jetbrains.annotations.NotNull;

import java.util.Map;
import java.util.Random;
import java.util.UUID;

public class LinkCommand implements CommandExecutor {

    private final long inviteTimeout = 120L;
    private final Main main;
    private final Common common;
    private final Map<String, InviteItem> invites;

    public LinkCommand(Main main, Common common, Map<String, InviteItem> invites) {
        this.main = main;
        this.common = common;
        this.invites = invites;
    }

    public int createInvite(String inviteeName, String specificTargetName){
        int verifyCode = new Random().nextInt(1000,9000);
        invites.put(inviteeName, new InviteItem(verifyCode, specificTargetName));
        new BukkitRunnable() {
            @Override
            public void run(){
                invites.remove(inviteeName);
            }
        }.runTaskLaterAsynchronously(main, 20L * inviteTimeout);    // 验证码 2 分钟后失效
        return verifyCode;
    }

    public void acceptInvite(UUID onlineID, int serviceId, String inviteeName) {
        Server server = main.getServer();
        CommandSender console = server.getConsoleSender();
        server.dispatchCommand(console, String.format("multilogin profile set %s %s %s", inviteeName, serviceId, onlineID));
        new BukkitRunnable() {
            @Override
            public void run(){
                server.dispatchCommand(console, "multilogin confirm");
            }
        }.runTaskLater(main, 10L);
    }

    public static BaseComponent simpleTrans(String translate, ChatColor color) {
        TranslatableComponent message = new TranslatableComponent(translate);
        message.setColor(color);
        return message;
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
        final String playerName = player.getName();

        // 接受邀请
        if (args.length > 1) {
            final String inviteeName = args[0];
            if (inviteeName.equals(playerName)) {
                // 不能和自己绑定
                commandSender.sendMessage("§c不能和自己绑定哦");
//                commandSender.spigot().sendMessage(simpleTrans("fcub.linkdata.error.linkSelf", ChatColor.RED));
                return false;
            }
            final InviteItem inviteItem = invites.get(inviteeName);
            if (inviteItem == null) {
                // 找不到邀请
                commandSender.sendMessage("§c找不到邀请");
//                commandSender.spigot().sendMessage(simpleTrans("fcub.linkdata.error.getInvite", ChatColor.RED));
                return false;
            }
            final String specificTargetName = inviteItem.specificTargetName();
            if (specificTargetName != null && !specificTargetName.equals(playerName)) {
                // 找不到邀请
                commandSender.sendMessage("§c对方未邀请您绑定");
//                commandSender.spigot().sendMessage(simpleTrans("fcub.linkdata.error.getInvite", ChatColor.RED));
                return false;
            }
            final String verifyCode = args[1];
            if (!verifyCode.equals("" + inviteItem.verifyCode())) {
                // 验证码错误
                commandSender.sendMessage("§c验证码不正确，请检查后重试");
//                commandSender.spigot().sendMessage(simpleTrans("fcub.linkdata.error.verify", ChatColor.RED));
                return false;
            }
            int serviceId = playerML.getLoginService().getServiceId();
            acceptInvite(onlineID, serviceId, inviteeName);
            invites.remove(inviteeName);
            new BukkitRunnable() {
                @Override
                public void run(){
                    // 如果 MultiLogin 未踢出玩家，则玩家会看到这条消息
                    commandSender.sendMessage("§6已尝试将您绑定到 " + inviteeName + "，但貌似遇到了点问题。\n§b如果重进后身份及存档仍然未变，请对方重新发起绑定再试。");
//                    commandSender.spigot().sendMessage(new TranslatableComponent("fcub.linkdata.problem"));
                }
            }.runTaskLaterAsynchronously(main, 20L);
            return true;
        }

        // 发起绑定邀请
        if (onlineID.compareTo(player.getUniqueId()) != 0) {
            commandSender.sendMessage("§c请先回到账户原有身份后再试\n§3使用 §6/funlink §3或 §6/unlinkaccount §3命令解除当前绑定，回到您原有的身份及档案");
            return false;
        }
        boolean targetSpecified = args.length > 0;
        if (targetSpecified && args[0].equals(playerName)) {
            // 不能和自己绑定
            commandSender.sendMessage("§c不能和自己绑定哦");
//            commandSender.spigot().sendMessage(simpleTrans("fcub.linkdata.error.linkSelf", ChatColor.RED));
            return false;
        }
        int verifyCode = createInvite(player.getName(), targetSpecified ? args[0] : null);
        // 消息
        // Tips
        if (targetSpecified || command.getName().equals("linkaccount")) {
            commandSender.spigot().sendMessage(new TextComponent("§7tips: 通过参数指定玩家不再是必需, 且简短命令 /flink 可用"));
        }
        // 显示是否指定玩家
        BaseComponent inviteTargetComp =
                targetSpecified ? new TranslatableComponent("§3玩家以 %s §3身份", "§6" + args[0])
                        : new TextComponent("§3任一玩家 (除了自己) ");
//                        targetSpecified ? new TranslatableComponent("fcub.linkdata.invite.specific", args[0])
//                                : new TranslatableComponent("fcub.linkdata.invite.all");
        // 显示对方命令
        String acceptCmd = "/" + command.getName() + " " + playerName + " " + verifyCode;
        TextComponent acceptCmdComp = new TextComponent(acceptCmd);
        acceptCmdComp.setColor(ChatColor.GREEN);
        acceptCmdComp.setClickEvent(new ClickEvent(ClickEvent.Action.COPY_TO_CLIPBOARD, acceptCmd));
        acceptCmdComp.setHoverEvent(new HoverEvent(HoverEvent.Action.SHOW_TEXT,
                new Text(new BaseComponent[]{new TranslatableComponent("chat.copy.click")})));
        // 显示当前玩家存档
        TextComponent playerNameComp = new TextComponent(playerName);
        playerNameComp.setHoverEvent(new HoverEvent(HoverEvent.Action.SHOW_ENTITY, new Entity("minecraft:player", player.getUniqueId().toString(), null)));
        playerNameComp.setColor(ChatColor.GOLD);
        // 最终消息
//        commandSender.spigot().sendMessage(new TranslatableComponent("fcub.linkdata.invite",
        commandSender.spigot().sendMessage(new TranslatableComponent("%s§3在聊天栏输入以下命令, 即可在本服务器内，以您当前的身份 (%s§3) 及存档进入游戏:\n%s§7 (%s §7秒后失效)\n§3对方使用解绑命令 (§6/funlink §3或 §6/unlinkaccount§3) 即可恢复到自己原先的身份及存档。\n§6注意: 解绑命令只能由对方执行! 只在同为自己账户, 或信任对方的前提下继续绑定!",
                inviteTargetComp,
                playerNameComp,
                acceptCmdComp,
                "§7" + inviteTimeout));
        return true;
    }
}
