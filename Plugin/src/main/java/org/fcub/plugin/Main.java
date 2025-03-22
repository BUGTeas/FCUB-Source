package org.fcub.plugin;

import org.bukkit.Bukkit;
import org.bukkit.command.PluginCommand;
import org.bukkit.plugin.java.JavaPlugin;
import org.fcub.linkdata.InviteItem;
import org.fcub.linkdata.LinkCommand;
import org.fcub.linkdata.LinkTab;
import org.fcub.linkdata.UnlinkCommand;

import java.util.HashMap;
import java.util.Map;

public final class Main extends JavaPlugin {

    // 插件加载
    @Override
    public void onEnable() {

        // 共用接口
        Common common = new Common();

        // 事件监听
        getServer().getPluginManager().registerEvents(new FCUBListener(common), this);

        // 绑定系统
        Map<String, InviteItem> invites = new HashMap<>();
        // 绑定
        PluginCommand flinkCommand = Bukkit.getPluginCommand("fcub:flink");
        PluginCommand linkaccountCommand = Bukkit.getPluginCommand("fcub:linkaccount");
        LinkCommand linkCommand = new LinkCommand(this, common, invites);
        flinkCommand.setExecutor(linkCommand);
        linkaccountCommand.setExecutor(linkCommand);
        // 解绑
        PluginCommand funlinkCommand =  Bukkit.getPluginCommand("fcub:funlink");
        PluginCommand unlinkaccountCommand =  Bukkit.getPluginCommand("fcub:unlinkaccount");
        UnlinkCommand unlinkCommand = new UnlinkCommand(this, common);
        funlinkCommand.setExecutor(unlinkCommand);
        unlinkaccountCommand.setExecutor(unlinkCommand);
        // Tab
        LinkTab linkTab = new LinkTab(invites);
        flinkCommand.setTabCompleter(linkTab);
        linkaccountCommand.setTabCompleter(linkTab);
        funlinkCommand.setTabCompleter(linkTab);
        unlinkaccountCommand.setTabCompleter(linkTab);
    }
}
