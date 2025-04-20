execute as @a[scores={fcub_teleport_test=0..}] run function fcub:teleport_test

#死亡恢复背包
execute as @a[tag=finish_select,tag=!death_keep_inv,scores={fcub_player_dead=1..}] run function fcub:feature/inventory/restore
scoreboard players reset @a fcub_player_dead

#强制游戏模式
gamemode adventure @a[tag=!allow_creative,gamemode=survival]
gamemode spectator @a[tag=!allow_creative,gamemode=creative]
gamemode adventure @a[tag=!allow_creative,scores={feather_mainland=-1},gamemode=!adventure]

# 圣铸日月流星修复
execute as @e[type=marker,tag=star_arrow51] at @s run function xsj:system/weapon_skills/crossbow5_6/arrow_action_tick