# 如果手持的不是重华晶
execute unless entity @s[nbt={SelectedItem:{tag:{id:"panling:tp_stone"}}}] run return 0
# 屏蔽下一刻
scoreboard players set @s using_tpstone -1

execute store result score #temp temp run clear @s nether_star{id:"panling:relive_stone"} 0
# 如果背包中有重生石，执行刷新函数
execute if score #temp temp matches 1.. run function pld:system/tpsystem/reset_cool
# 刷新后自动激活（延迟3轮，以等待梦盘记分项就位）
execute if score #temp temp matches 1.. run scoreboard players set @s fcub_using_tpstone 3
# 否则弹出提示
execute unless score #temp temp matches 1.. run tellraw @s {"text": "刷新失败，背包中没有重生石", "color": "red"}