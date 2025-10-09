tag @s remove fcub_tpstone_resetcool
# 如果冷却结束
execute unless score @s tp_cool_tick matches 2.. run return 0
# 如果已经在计时
execute if score @s fcub_tpstone_resetcool_timer matches 1.. run return 0
# 如果副手有重生石
execute if predicate pld:offhand/relive_stone run return 0
# 如果背包中没有重生石，或者手持的不是重华晶
execute store result score #temp temp run clear @s[nbt={SelectedItem:{tag:{id:"panling:tp_stone"}}}] nether_star{id:"panling:relive_stone"} 0
execute unless score #temp temp matches 1.. run return 0

# 弹出提示，并开始计时
title @s actionbar {"text": "再次使用，消耗一枚重生石以刷新冷却并激活", "color": "gold", "bold": true}
scoreboard players set @s fcub_tpstone_resetcool_timer 14