# 霜主基础属性
execute if score @s weapon_rare matches 610 as @s[scores={job=0,weapon_branch=2}] run function dlc:attribute/0/weapon/icesword

# 武器变更时脱离罪如歌战斗状态，以免记分项共用导致的异常
execute if score @s fight_time matches 1.. unless score @s fcub_last_weapon_rare = @s weapon_rare run function dlc:main/fight/out
scoreboard players operation @s fcub_last_weapon_rare = @s weapon_rare
