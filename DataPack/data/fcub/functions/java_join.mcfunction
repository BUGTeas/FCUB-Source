#更新
execute as @s[nbt={Inventory:[{tag:{title:"§6菜单", author:"§6天道"}}]}] unless entity @s[nbt={Inventory:[{tag:{title:"§6菜单", author:"§6天道",fcubver:"110"}}]}] run function pld:system/menubook/update/main
#延迟0.5秒后弹出提示
tag @s add fcub_notice_later
schedule function fcub:notice_later/check 5