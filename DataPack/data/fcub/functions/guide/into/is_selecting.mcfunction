scoreboard players reset @s fcub_guide_temp
execute store success score @s fcub_guide_temp if entity @s[tag=player_bedrock] unless score @s fcub_guide_pass matches 1 run tp @s 1474 4 613.0 -90 0
execute if score @s fcub_guide_temp matches 1 run clear @s
execute unless score @s fcub_guide_temp matches 1 run function pld:selections/training/tp_to_story