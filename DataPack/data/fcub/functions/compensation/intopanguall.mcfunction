#给玩家+10%经验值
	scoreboard players operation @s temp = @s fcub_comp_backup_level
	scoreboard players operation @s temp /= 10 int
	scoreboard players operation @s fcub_comp_backup_level += @s temp
#还原等级
	scoreboard players operation @s exp_level_from_score_temp = @s fcub_comp_backup_level
	function fcub:feature/exp_level_from_score/append
	scoreboard players reset @s exp_level_from_score_temp
#还原背包
	function fcub:feature/inventory/restore
#补偿
	#保底
		#梦盘
			#始皇陵
				scoreboard players set @s instance1_chest 14
			#火焰魔王的巢穴
				scoreboard players set @s instance2_chest 14
			#镇妖塔地上层
				scoreboard players set @s instance3_chest 14
			#镇妖塔地下层
				scoreboard players set @s instance3_0_chest 14
			#哭声回荡的山谷
				scoreboard players set @s instance4_chest 14
			#圣山
				scoreboard players set @s instance5_chest 14
		#罪如歌
			#冰霜巨龙的巢穴
				scoreboard players set @s ice_chest 14
			#千丝谷尽头
				scoreboard players set @s fire_chest 14
			#梦魇幻境
				scoreboard players set @s dream_chest 14
			#历史缝隙
				scoreboard players set @s dark_chest 14
			#悟道之战
				scoreboard players set @s fairy_chest 14
	#钱款
		#基值
			scoreboard players operation @s element_money = @s fcub_comp_backup_level
			scoreboard players operation @s element_money *= @s fcub_comp_backup_level
		#丹师
			execute if score @s fcub_comp_race2 matches 1 run scoreboard players operation @s element_money /= 2 int
	#元素
		#基值
			scoreboard players operation @s element_number_metal = @s fcub_comp_backup_level
			scoreboard players operation @s element_number_metal *= @s fcub_comp_backup_level
			scoreboard players operation @s element_number_wood = @s element_number_metal
			scoreboard players operation @s element_number_earth = @s element_number_metal
			scoreboard players operation @s element_number_water = @s element_number_metal
			scoreboard players operation @s element_number_water /= 5 int
			scoreboard players operation @s element_number_fire = @s element_number_water
		#金
			#战弓
				execute unless score @s fcub_comp_race2 matches 1 run scoreboard players operation @s element_number_metal /= 5 int
			#丹师
				execute if score @s fcub_comp_race2 matches 1 run scoreboard players operation @s element_number_metal /= 2 int
		#木
			#战弓
				execute unless score @s fcub_comp_race2 matches 1 run scoreboard players operation @s element_number_wood /= 5 int
			#丹师
				execute if score @s fcub_comp_race2 matches 1 run scoreboard players operation @s element_number_wood /= #system 3
		#土
			#战弓
				execute unless score @s fcub_comp_race2 matches 1 run scoreboard players operation @s element_number_earth /= 5 int
			#丹师
				execute if score @s fcub_comp_race2 matches 1 run scoreboard players operation @s element_number_earth /= 4 int
#种族好感度
	#基值
		scoreboard players operation @s temp = @s fcub_comp_backup_level
		scoreboard players operation @s temp /= 5 int
	#赋值
		scoreboard players operation @s racefriend0 += @s temp
		scoreboard players operation @s racefriend1 += @s temp
		scoreboard players operation @s racefriend2 += @s temp
		scoreboard players operation @s racefriend3 += @s temp
		scoreboard players operation @s racefriend4 += @s temp
#资历值
	scoreboard players operation @s achievement_point = @s fcub_comp_backup_level
	scoreboard players operation @s achievement_point *= 5 int
#功勋值
	scoreboard players add @s honor 200
#重华镜
	#启用重华晶
		execute if entity @s[scores={race=0},advancements={pld:mission/shen/main/main8=true}] run scoreboard players set @s check_stone 1
		execute if entity @s[scores={race=1},advancements={pld:mission/yao/main/main10=true}] run scoreboard players set @s check_stone 1
		execute if entity @s[scores={race=2},advancements={pld:mission/xian/main/main8=true}] run scoreboard players set @s check_stone 1
		execute if entity @s[scores={race=3},advancements={pld:mission/zhan/main/main9=true}] run scoreboard players set @s check_stone 1
		execute if entity @s[scores={race=4},advancements={pld:mission/ren/main/main8=true}] run scoreboard players set @s check_stone 1
	#全解锁
		execute if entity @s[advancements={pld:other/tp_stone_all_unlock=true}] run function fcub:compensation/tp_stone_all_unlock
#更新菜单书
	scoreboard players reset @s temp
	scoreboard players set @s[scores={check_stone=1..}] temp 1
#试炼祝福恢复
	function fcub:compensation/test_restore
#恢复箭袋
	function fcub:compensation/arrowpack_restore
#恢复羽毛
	function fcub:compensation/feather_restore
#末影箱解锁
    function fcub:compensation/chest_unlock
#更新菜单书
	execute if score @s temp matches 1 run function pld:system/menubook/update/main
#提醒玩家
	function fcub:compensation/notice
#给书本
	function pld:system/test_inv/invmain
	execute if score @s inv_remain matches 1.. run loot give @s loot fcub:compensation/detail_book
	execute unless score @s inv_remain matches 1.. run function fcub:compensation/mail_book
#设置状态
	scoreboard players set @s fcub_compensation 2