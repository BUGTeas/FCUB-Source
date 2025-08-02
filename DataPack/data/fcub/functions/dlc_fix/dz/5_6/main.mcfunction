# 获取词条
	execute store success score #system temp4 run data get block ~ ~ ~ Items[{Slot:6b}].tag.legend_id
	# 无词条则为 -1
	scoreboard players remove #system temp4 1
	execute if score #system temp4 matches 0 store result score #system temp4 run data get block ~ ~ ~ Items[{Slot:6b}].tag.legend_id
# 重锻
	# 阳
		execute if data block ~ ~ ~ {Items:[{tag:{element:6}}]} run data modify block ~ ~ ~ Items append value {Slot:0b, Count: 8b, id: "minecraft:brick", tag: {id: "fire:collection", dlc: "collection"}}
		execute if data block ~ ~ ~ {Items:[{tag:{element:6}}]} run data modify block ~ ~ ~ Items append value {Slot:3b, Count: 1b, id: "minecraft:brick", tag: {balance: 0}}
	# 阴
		execute if data block ~ ~ ~ {Items:[{tag:{element:7}}]} run data modify block ~ ~ ~ Items append value {Slot:0b, Count: 8b, id: "minecraft:brick", tag: {id: "ice:collection", dlc: "collection"}}
		execute if data block ~ ~ ~ {Items:[{tag:{element:7}}]} run data modify block ~ ~ ~ Items append value {Slot:3b, Count: 1b, id: "minecraft:brick", tag: {balance: 1}}
	function dlc:dz/armor/5_6/main
# 同步词条
	execute if score #system temp4 matches 0.. run function fcub:dlc_fix/dz/5_6/legend
tellraw @p "装备刷新完成，其属性和当前罪如歌版本一致。"