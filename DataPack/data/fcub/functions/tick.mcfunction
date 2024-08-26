execute as @a[scores={fcub_teleport_test=0..}] run function fcub:teleport_test

#死亡恢复背包
execute as @a[tag=finish_select,scores={fcub_player_dead=1..}] run function fcub:guide/inventory/restore
scoreboard players reset @a fcub_player_dead