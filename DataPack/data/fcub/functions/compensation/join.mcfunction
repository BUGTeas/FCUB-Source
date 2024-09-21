#清除大陆标签
	tag @s remove finish_select
#记录原等级
	execute unless score @s fcub_comp_backup_level matches 0.. store result score @s fcub_comp_backup_level run experience query @s levels
#清除等级
	experience set @s 0 points
	experience set @s 0 levels
#暂时清空背包
	function fcub:guide/inventory/clear
#传送到提示区
	tp @s 1308 69 42 180 0
	spawnpoint @s 1308 69 42 180
#给书本
	loot replace entity @s weapon.mainhand loot fcub:compensation/detail_book
#设置状态
	scoreboard players set @s fcub_compensation 1