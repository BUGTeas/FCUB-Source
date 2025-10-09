execute as @a[scores={fcub_teleport_test=0..}] run function fcub:teleport_test

# 死亡恢复背包
execute as @a[tag=finish_select,tag=!death_keep_inv,scores={fcub_player_dead=1..}] run function fcub:feature/inventory/restore
scoreboard players reset @a fcub_player_dead

# 强制游戏模式
gamemode adventure @a[tag=!allow_creative,gamemode=survival]
gamemode spectator @a[tag=!allow_creative,gamemode=creative]
gamemode adventure @a[tag=!allow_creative,scores={feather_mainland=-1},gamemode=!adventure]

# 避免因反作弊误判而不落入虚空
execute as @a[tag=player_bedrock,gamemode=adventure] at @s if entity @s[y=-100,dy=-28] run tp @s ~ -128.1 ~

# 重华晶冷却刷新优化
execute if score #system tick_operation matches 3 as @a run function fcub:system/tpsystem/5ticks_player