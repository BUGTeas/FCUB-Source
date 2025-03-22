package org.fcub.plugin;

import moe.caa.multilogin.api.MultiLoginAPI;
import moe.caa.multilogin.api.MultiLoginAPIProvider;
import org.bukkit.Bukkit;
import org.bukkit.command.PluginCommand;
import org.bukkit.plugin.java.JavaPlugin;
import org.fcub.linkdata.LinkCommand;
import org.fcub.linkdata.UnlinkCommand;

public final class Main extends JavaPlugin {

    // 插件加载
    @Override
    public void onEnable() {

        // 共用接口
        Common common = new Common();

        // 事件监听
        getServer().getPluginManager().registerEvents(new FCUBListener(common), this);

        // 绑定系统
        // 绑定
        PluginCommand flinkCommand = Bukkit.getPluginCommand("fcub:flink");
        PluginCommand linkaccountCommand = Bukkit.getPluginCommand("fcub:linkaccount");
        LinkCommand linkCommand = new LinkCommand(this, common);
        flinkCommand.setExecutor(linkCommand);
        linkaccountCommand.setExecutor(linkCommand);
        // 解绑
        PluginCommand funlinkCommand =  Bukkit.getPluginCommand("fcub:funlink");
        PluginCommand unlinkaccountCommand =  Bukkit.getPluginCommand("fcub:unlinkaccount");
        UnlinkCommand unlinkCommand = new UnlinkCommand(this, common);
        funlinkCommand.setExecutor(unlinkCommand);
        unlinkaccountCommand.setExecutor(unlinkCommand);
    }
}
