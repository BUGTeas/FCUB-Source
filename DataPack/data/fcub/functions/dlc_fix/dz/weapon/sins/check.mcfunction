execute store result score #temp temp2 run data get block ~ ~ ~ Items[0].tag.enhance_lvl
# 有罪之锻
	execute if score #temp temp2 matches 1.. run function fcub:dlc_fix/dz/weapon/sins/work
# 无罪之锻
	$execute if score #temp temp2 matches 0 run function fcub:dlc_fix/dz/weapon/normal $(path)
tellraw @p "武器刷新完成，其属性和当前罪如歌版本一致。"