# 解决万通覆盖导致标签设置被遗漏
tag @s remove is_selecting 
tag @s add finish_select

# 玩家补偿
execute if score @s fcub_compensation matches 1 run function fcub:compensation/intopanguall