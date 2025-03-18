package org.fcub.plugin;

import org.bukkit.plugin.java.JavaPlugin;

public final class Main extends JavaPlugin {
    // 插件加载
    @Override
    public void onEnable() {
        getServer().getPluginManager().registerEvents(new FCUBListener(), this);
    }
}
