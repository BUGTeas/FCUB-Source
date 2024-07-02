package org.pcub.fcub;

import org.bukkit.plugin.java.JavaPlugin;
import org.bukkit.Server;
import org.bukkit.event.Listener;
import org.bukkit.command.CommandSender;

import java.util.UUID;

public final class Main extends JavaPlugin {
    //控制台
    Server server = getServer();
    //插件加载
    @Override
    public void onEnable() {
        // Plugin startup logic
        server.getPluginManager().registerEvents(new FCUBListener(), this);
    }

    @Override
    public void onDisable() {
        // Plugin shutdown logic
    }
}
