scoreboard objectives add pcub_reloadChunk_check dummy
scoreboard players operation @s pcub_reloadChunk_check = @s feather_mainland
execute unless score @s feather_mainland matches -1 run function reload_chunk:tp_out
execute store success score @s pcub_reloadChunk_check if score @s feather_mainland matches -1 if entity @a[distance=0.01..50] run function reload_chunk:tp_out