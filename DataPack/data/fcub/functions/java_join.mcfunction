#更新
execute as @s[nbt={Inventory:[{tag:{title:"§6菜单", author:"§6天道"}}]}] unless entity @s[nbt={Inventory:[{tag:{title:"§6菜单", author:"§6天道",fcubver:"100"}}]}] run function pld:system/menubook/update/main
#进服提示附加
tellraw @s [{"color":"#ffff00","bold":true,"text":"请务必在本地添加专用资源包，以免游戏出现异常！！！\n"},{"color":"#ffffff","bold":false,"text":"如果资源包未加载，您将在右侧看到一串代码："},{"color":"#ffffff","bold":false,"translate":"please.add.dedicated.res_pack.100"}]
#服务器识别客户端不正确时，会弹出文字提示
title @s subtitle {"color":"#ffff00","translate":"please.download.and_add_it"}
title @s title {"color":"#ff5555","translate":"res_pack.100.requested"}