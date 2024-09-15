execute as @e[tag=sandbag] at @s run tp @s ~ ~-1000 ~
scoreboard players set #system element_sandbag_type 1
tellraw @a[distance=0..6] [{"text":"测试人偶类型已切换为：","color":"green"},{"text":"死气生物","color":"aqua"}]
function element:optional2/sandbag