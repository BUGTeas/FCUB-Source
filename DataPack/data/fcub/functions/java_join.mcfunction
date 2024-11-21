#更新
execute as @s[nbt={Inventory:[{tag:{title:"§6菜单", author:"§6天道"}}]}] unless entity @s[nbt={Inventory:[{tag:{title:"§6菜单", author:"§6天道",fcubver:"110"}}]}] run function pld:system/menubook/update/main
#进服提示附加
#服务器识别客户端不正确，或资源包版本不匹配，会弹出文字提示
tag @s add fcub_notice_later
schedule function fcub:notice_later/check 5
title @s subtitle {"translate": "fcub.check_java.rp_request_113.subtitle", "fallback": "§e可在游玩指南/群文件中找到"}
title @s title {"translate": "fcub.check_java.rp_request_113.title","fallback": "§c请添加最新版专用资源包"}