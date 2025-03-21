package org.fcub.plugin;

import moe.caa.multilogin.api.MultiLoginAPI;
import moe.caa.multilogin.api.MultiLoginAPIProvider;
import org.bukkit.Bukkit;
import org.bukkit.command.PluginCommand;
import org.bukkit.plugin.java.JavaPlugin;
import org.fcub.linkdata.LinkCommand;
import org.fcub.linkdata.UnlinkCommand;

public final class Main extends JavaPlugin {

    public MultiLoginAPI mlAPI;

    // 插件加载
    @Override
    public void onEnable() {
        // API
        // MultiLogin
        boolean mlVaild = getServer().getPluginManager().getPlugin("MultiLogin") != null;
        mlAPI = mlVaild ? MultiLoginAPIProvider.getApi() : null;
        if (mlAPI == null) {
            getLogger().warning("找不到 MultiLogin API");
        }

        // 事件监听
        getServer().getPluginManager().registerEvents(new FCUBListener(), this);

        // 绑定系统
        // 绑定
        PluginCommand flinkCommand = Bukkit.getPluginCommand("flink");
        PluginCommand linkaccountCommand = Bukkit.getPluginCommand("linkaccount");
        LinkCommand linkCommand = new LinkCommand(this);
        flinkCommand.setExecutor(linkCommand);
        linkaccountCommand.setExecutor(linkCommand);
        // 解绑
        PluginCommand funlinkCommand =  Bukkit.getPluginCommand("funlink");
        PluginCommand unlinkaccountCommand =  Bukkit.getPluginCommand("unlinkaccount");
        UnlinkCommand unlinkCommand = new UnlinkCommand(this);
        funlinkCommand.setExecutor(unlinkCommand);
        unlinkaccountCommand.setExecutor(unlinkCommand);
    }
}
