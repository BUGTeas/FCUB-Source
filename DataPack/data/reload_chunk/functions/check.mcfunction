scoreboard objectives add pcub_reloadChunk_check dummy
scoreboard players operation @s pcub_reloadChunk_check = @s feather_mainland
# 大陆外，但有其他玩家在旁
execute if score @s feather_mainland matches -1 if entity @a[distance=0.01..50] run scoreboard players set @s pcub_reloadChunk_check 2