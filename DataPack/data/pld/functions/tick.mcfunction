#==================================世界tick==================================#
#副本tick
#始皇陵全界tick
execute if entity @e[type=armor_stand,tag=instance1] if entity @a[x=2795,y=68,z=-432,dx=47,dy=27,dz=36] run function pld:instances/instance1/ticks/tick
#火魔全界tick
execute if entity @e[type=armor_stand,tag=instance2] if entity @a[x=1052,y=3,z=864,dx=82,dy=55,dz=64] run function pld:instances/instance2/tick
#镇妖塔地上层全界tick
execute if entity @a[x=2640,y=30,z=-960,dx=150,dy=47,dz=150] run function pld:instances/instance3/tick
#镇妖塔地下层全界tick
function pld:instances/instance3_0/tick
#哭声山谷全界tick
execute if entity @a[x=912,y=57,z=1214,dx=62,dy=52,dz=70] run function pld:instances/instance4/tick
#假盘全界tick
execute if entity @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] run function pld:instances/instance5/tick

#pvptick
function pld:pvp/tick

#==================================非玩家实体tick=================================#
execute as @e[type=!player,type=!item_frame,type=!glow_item_frame,type=!bat,type=!villager] unless entity @s[type=falling_block,x=629,y=11,z=-1946,dx=51,dy=43,dz=51] run function pld:ticks/entity/entity_check

#==================================玩家tick=======================================#
execute as @a run function pld:ticks/player/player_tick

#==================================世界1/4tick轮转================================#
execute if score #system tick_operation matches 0 run function pld:ticks/tick1
execute if score #system tick_operation matches 1 run function pld:ticks/tick2
execute if score #system tick_operation matches 2 run function pld:ticks/tick3
execute if score #system tick_operation matches 3 run function pld:ticks/tick4
execute if score #system tick_count matches 20 run function pld:ticks/1s

scoreboard players add #system tick_count 1
scoreboard players operation #system tick_operation = #system tick_count
scoreboard players operation #system tick_operation %= 4 int
execute if score #system tick_count matches 21 run scoreboard players set #system tick_count 1

