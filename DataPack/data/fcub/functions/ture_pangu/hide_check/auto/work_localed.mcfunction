execute if entity @e[x=-184,y=98,z=-821,distance=..40,type=player,scores={race=0,finish_shen_hide=1}] run setblock ~7 ~ ~ minecraft:fire
execute unless entity @e[x=-184,y=98,z=-821,distance=..40,type=player,scores={race=0,finish_shen_hide=1}] run setblock ~7 ~ ~ minecraft:air

execute if entity @e[x=-184,y=98,z=-821,distance=..40,type=player,scores={race=1,finish_yao_hide=1}] run setblock ~6 ~ ~2 minecraft:fire
execute unless entity @e[x=-184,y=98,z=-821,distance=..40,type=player,scores={race=1,finish_yao_hide=1}] run setblock ~6 ~ ~2 minecraft:air

execute if entity @e[x=-184,y=98,z=-821,distance=..40,type=player,scores={race=2,finish_xian_hide=1}] run setblock ~4 ~ ~4 minecraft:fire
execute unless entity @e[x=-184,y=98,z=-821,distance=..40,type=player,scores={race=2,finish_xian_hide=1}] run setblock ~4 ~ ~4 minecraft:air

execute if entity @e[x=-184,y=98,z=-821,distance=..40,type=player,scores={race=3,finish_zhan_hide=1}] run setblock ~2 ~ ~6 minecraft:fire
execute unless entity @e[x=-184,y=98,z=-821,distance=..40,type=player,scores={race=3,finish_zhan_hide=1}] run setblock ~2 ~ ~6 minecraft:air

execute if entity @e[x=-184,y=98,z=-821,distance=..40,type=player,scores={race=4,finish_ren_hide=1}] run setblock ~ ~ ~7 minecraft:fire
execute unless entity @e[x=-184,y=98,z=-821,distance=..40,type=player,scores={race=4,finish_ren_hide=1}] run setblock ~ ~ ~7 minecraft:air


schedule function fcub:ture_pangu/hide_check/auto/work 2s