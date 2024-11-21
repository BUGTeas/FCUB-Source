scoreboard objectives add pcub_reloadChunk_check dummy
scoreboard players operation @s pcub_reloadChunk_check = @s feather_mainland
#大陆内
execute unless score @s feather_mainland matches -1 run function reload_chunk:tp_out {delay:20}
#大陆外，但有其他玩家在旁
execute store success score @s pcub_reloadChunk_check if score @s feather_mainland matches -1 if entity @a[distance=0.01..50] run function reload_chunk:tp_out {delay:2}