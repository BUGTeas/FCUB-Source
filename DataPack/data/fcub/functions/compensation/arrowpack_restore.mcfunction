#箭袋恢复
    scoreboard players set @s[scores={job=1},advancements={pld:experience/job/1/arrowpack=true}] check_arrow_pack 1
    execute if score @s check_arrow_pack matches 1 run tellraw @s {"text":"您的箭袋功能已经恢复!"}
#更新菜单书
	scoreboard players set @s[scores={check_arrow_pack=1}] temp 1
#设置状态
    scoreboard players set @s fcub_comp_update 1