# 主手硬币有标记
execute if data entity @s SelectedItem.tag.fcub_yi5_update2 run return 0
# 主手不是旧版硬币
execute unless data entity @s SelectedItem.tag.yi1 run return 0
execute unless data entity @s SelectedItem.tag.yi2 run return 0
execute unless data entity @s SelectedItem.tag.yi3 run return 0
execute unless data entity @s SelectedItem.tag.yi4 run return 0
# 背包中有四意
execute if data entity @s Inventory.[{id:"minecraft:enchanted_book",tag:{yi1:1}}] run return 0
execute if data entity @s Inventory.[{id:"minecraft:enchanted_book",tag:{yi1:2}}] run return 0
execute if data entity @s Inventory.[{id:"minecraft:enchanted_book",tag:{yi1:3}}] run return 0
execute if data entity @s Inventory.[{id:"minecraft:enchanted_book",tag:{yi1:4}}] run return 0
# 给予新版
execute at @s run function dlc:dz/weapon/weapon_ld/1234
# 原旧版不清除，但做上标记以免重复刷
item modify entity @s weapon.mainhand fcub:dlc_fix/weapon/ld_1234
tellraw @s "\n命运硬币更新成功，请检查背包。\n旧版本硬币仍然保留，但不可再次用于更新。\n"
execute at @s run playsound entity.arrow.hit_player ambient @s ~ ~1 ~
# 屏蔽交易界面
tag @s add ignoreTradeUI