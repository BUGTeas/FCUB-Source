#常规设置
tellraw @s [{"translate":"dark.words.end.a"}]
tellraw @s [{"translate":"dark.words.end.b"}]

scoreboard players set @s gold_chest 1
tp @s 392 14 -2065 0 0
function newdark:out
#等级奖励，每1级诡秘挑战等级增加3%的概率获得一颗罪之石

summon marker 392 14 -2065 {Tags:["dark_random"]}
execute as @e[tag=dark_random] store result score #system 1 run data get entity @s UUID[0]
kill @e[tag=dark_random]
scoreboard players set #temp 1 100
scoreboard players operation #system 1 %= #temp 1
scoreboard players operation @s 1 = #system dark_hard
scoreboard players operation @s 1 *= #system 3
execute if score @s 1 >= #system 1 run give @s fire_charge{HideFlags:63,Enchantments:[{id:"minecraft:protection",lvl:1s}],id:"dlc:legend_stone",display:{Name:'{"translate":"in.dark.stone.name"}',Lore:['{"translate":"pl.lore.rare6"}','{"translate":"in.dark.stone.lore.a"}','{"translate":"in.dark.stone.lore.b"}','{"translate":"in.dark.stone.lore.c"}','{"translate":"in.dark.stone.lore.d"}','{"translate":"in.dark.stone.lore.e"}','{"translate":"in.dark.stone.lore.f"}','{"translate":"in.dark.stone.lore.g"}']}} 1
execute if score @s 1 >= #system 1 run tellraw @s "由于诡秘挑战等级奖励机制,你获得一颗罪之石"
#恢复数值
scoreboard players set #system 1 1


#首通奖励
advancement grant @s only dlc:adv/instances/dark 
execute if score #system dark_hard matches 18.. run advancement grant @s only dlc:adv/instances/dark/dark18
execute if score #system dark_hard matches 22.. run advancement grant @s only dlc:adv/instances/dark/dark22
execute if score #system dark_hard matches 26.. run advancement grant @s only dlc:adv/instances/dark/dark26
execute if score #system dark_hard matches 30.. run advancement grant @s only dlc:adv/instances/dark/dark30
execute if score #system dark_hard matches 31.. run advancement grant @s only dlc:adv/instances/dark/dark31
execute if score #system dark_hard matches 32.. run advancement grant @s only dlc:adv/instances/dark/dark32
execute if score #system dark_hard matches 33.. run advancement grant @s only dlc:adv/instances/dark/dark33
execute if score #system dark_hard matches 34.. run advancement grant @s only dlc:adv/instances/dark/dark34


#替换最高通关等级
execute unless score @s dark_maxhard > #system dark_hard run scoreboard players operation @s dark_maxhard = #system dark_hard
scoreboard players set @s dark_hard 0

