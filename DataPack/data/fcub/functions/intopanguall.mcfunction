# 修正万通覆盖进入大陆函数，导致的部分错误
	# 属性介绍书
	clear @s minecraft:written_book{title:"§6扩展包新增属性介绍"}
	give @s minecraft:written_book{title:"§6扩展包新增属性介绍",author:"§6天道",pages:['{"translate":"pl.book.t1.page1"}','{"translate":"pl.book.t1.page2"}','{"translate":"pl.book.t1.page3"}']}
	# 给予支线任务属性奖励
	attribute @s minecraft:generic.armor_toughness modifier remove 0-0-0-2-0
	attribute @s[scores={race=0,ex_shen=1}] minecraft:generic.armor_toughness modifier add 0-0-0-2-0 "神族支线奖励-韧性" 1 add
	attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-2-3
	attribute @s[scores={race=3,ex_zhan=1}] minecraft:generic.attack_damage modifier add 0-0-0-2-3 "战神族支线奖励-近战攻击" 1 add
	# 设置补给时间
	scoreboard players set @s supply5ticks 36000
	# 清空到达标记
	scoreboard players set @s dragon_check 0
	scoreboard players set @s tiger_check 0
	scoreboard players set @s turtle_check 0
	scoreboard players set @s bird_check 0
	
	tag @s remove is_selecting
	tag @s add finish_select

# 玩家补偿
execute if score @s fcub_compensation matches 1 run function fcub:compensation/intopanguall