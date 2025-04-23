# 解决万通覆盖导致标签设置被遗漏 !正式周目删除
tag @s remove is_selecting 
tag @s add finish_select

tp @s[tag=player_bedrock] 1482 4 613 90 30
tellraw @s[tag=!player_bedrock] {"text":"此功能只提供给基岩版玩家哦！","color":"red"}