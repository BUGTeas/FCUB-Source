execute if score @s exp_level_from_score_temp matches 16777216.. run function fcub:feature/exp_level_from_score/append/process_16777216
execute if score @s exp_level_from_score_temp matches 65536.. run function fcub:feature/exp_level_from_score/append/process_65536
execute if score @s exp_level_from_score_temp matches 256.. run function fcub:feature/exp_level_from_score/append/process_256
execute if score @s exp_level_from_score_temp matches 1.. run function fcub:feature/exp_level_from_score/append/process_1

# 释放记分板
execute unless score @s exp_level_from_score_temp matches 0 run return -1
scoreboard players reset @s exp_level_from_score_temp