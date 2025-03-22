package org.fcub.plugin;

import moe.caa.multilogin.api.MultiLoginAPI;
import moe.caa.multilogin.api.MultiLoginAPIProvider;
import org.bukkit.plugin.PluginManager;
import org.geysermc.floodgate.api.FloodgateApi;
import org.geysermc.geyser.api.GeyserApi;

import static org.bukkit.Bukkit.getServer;

public class Common {
    // 检查插件并获取接口
    PluginManager pMgr = getServer().getPluginManager();
    // Geyser
    public final GeyserApi geyserAPI = pMgr.getPlugin("Geyser-Spigot") != null ?
            GeyserApi.api() : null;
    // Floodgate
    public final FloodgateApi fgAPI = pMgr.getPlugin("floodgate") != null ?
            FloodgateApi.getInstance() : null;
    // MultiLogin
    public final MultiLoginAPI mlAPI = pMgr.getPlugin("MultiLogin") != null ?
            MultiLoginAPIProvider.getApi() : null;

    Common() {
        if (geyserAPI == null) {
            getServer().getLogger().warning("找不到 Geyser API");
        }
        if (fgAPI == null) {
            getServer().getLogger().warning("找不到 Floodgate API");
        }
        if (mlAPI == null) {
            getServer().getLogger().warning("找不到 MultiLogin API");
        }
    }
}
