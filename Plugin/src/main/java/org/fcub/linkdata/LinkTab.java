package org.fcub.linkdata;

import org.bukkit.Bukkit;
import org.bukkit.command.Command;
import org.bukkit.command.CommandSender;
import org.bukkit.command.TabCompleter;
import org.bukkit.entity.Player;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class LinkTab implements TabCompleter {
    private final Map<String, InviteItem> invites;

    public LinkTab(Map<String, InviteItem> invites) {
        this.invites = invites;
    }

    @Override
    public @Nullable List<String> onTabComplete(@NotNull CommandSender commandSender, @NotNull Command command, @NotNull String s, @NotNull String[] args) {
        if (command.getName().equals("funlink") || command.getName().equals("unlinkaccount") || args.length > 1) {
            return List.of();
        }
        String senderName = commandSender.getName();
        ArrayList<String> nameList = new ArrayList<>();
        // 遍历当前在线玩家
        for (Player onlinePlayer : Bukkit.getServer().getOnlinePlayers()) {
            String onlineName = onlinePlayer.getName();
            if (senderName.equals(onlineName)) {
                continue;
            }
            nameList.add(onlinePlayer.getName());
        }
        // 遍历活跃邀请列表
        invites.forEach((name, value) -> {
            if (senderName.equals(name) || nameList.contains(name)) {
                return;
            }
            nameList.add(name);
        });
        return nameList;
    }
}
