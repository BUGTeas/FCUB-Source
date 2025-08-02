##死亡时触发
execute if score @s dlc_ins matches 5 run function draw:advancements/dead





#清空副本积分表
scoreboard players reset @s dlc_ins

#清空死亡次数保证不再触发
scoreboard players reset @s dlc_player_death
#执行暗本出本
function newdark:out
