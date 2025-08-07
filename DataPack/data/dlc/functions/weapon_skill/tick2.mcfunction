#军征虚弱
execute as @a if score @s weapon_rare matches 641 if score @s weapon_branch matches 2 if score @s job matches 1 unless predicate dlc:effect_check/weakness_0 run function dlc:weapon_skill/fairybow/weakness

#[梦境]怪物特效
execute as @e[tag=monster,scores={dreaming=1..}] at @s run particle minecraft:snowflake ~ ~2.2 ~ 0 0 0 0 1 force @a
#碎梦特效 与效果
execute as @a if score @s weapon_rare matches 630 if score @s weapon_branch matches 2 if score @s job matches 0 at @s run function dlc:weapon_skill/dreamsword/weiyan

#吹雪buff下的粒子特效
execute as @a if score @s buff_cx_2 matches 0.. at @s run particle minecraft:firework ~ ~ ~ 0 0 0 0 1 force @a
execute as @a if score @s buff_cx_0 matches 0.. at @s run particle minecraft:firework ~ ~ ~ 0.2 0.2 0.2 0 4 force @a
#惊鸿特效
execute as @a if score @s weapon_rare matches 621 if score @s weapon_branch matches 2 if score @s job matches 1 if score @s weapon_temp6 matches 0.. at @s run particle minecraft:snowflake ~ ~0.3 ~ 0 0 0 0 1
execute as @a if score @s weapon_rare matches 621 if score @s weapon_branch matches 2 if score @s job matches 1 if score @s weapon_temp6 matches 0.. at @s run scoreboard players remove @s weapon_temp6 1