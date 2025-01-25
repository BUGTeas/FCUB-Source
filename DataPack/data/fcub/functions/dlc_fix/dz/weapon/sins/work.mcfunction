# 储存词条
	data remove storage pcub:fcub dzTemp
	execute store result score #temp temp1 run data get block ~ ~ ~ Items[0].tag.enhance1_id
	execute unless score #temp temp1 matches 101 run data modify storage pcub:fcub dzTemp.1.id set from block ~ ~ ~ Items[0].tag.enhance1_id
	execute unless score #temp temp1 matches 101 run data modify storage pcub:fcub dzTemp.1.lore set from block ~ ~ ~ Items[0].tag.display.Lore[-8]
	execute store result score #temp temp1 run data get block ~ ~ ~ Items[0].tag.enhance2_id
	execute unless score #temp temp1 matches 101 run data modify storage pcub:fcub dzTemp.2.id set from block ~ ~ ~ Items[0].tag.enhance2_id
	execute unless score #temp temp1 matches 101 run data modify storage pcub:fcub dzTemp.2.lore set from block ~ ~ ~ Items[0].tag.display.Lore[-7]
	execute store result score #temp temp1 run data get block ~ ~ ~ Items[0].tag.enhance3_id
	execute unless score #temp temp1 matches 101 run data modify storage pcub:fcub dzTemp.3.id set from block ~ ~ ~ Items[0].tag.enhance3_id
	execute unless score #temp temp1 matches 101 run data modify storage pcub:fcub dzTemp.3.lore set from block ~ ~ ~ Items[0].tag.display.Lore[-6]
	execute store result score #temp temp1 run data get block ~ ~ ~ Items[0].tag.enhance4_id
	execute unless score #temp temp1 matches 101 run data modify storage pcub:fcub dzTemp.4.id set from block ~ ~ ~ Items[0].tag.enhance4_id
	execute unless score #temp temp1 matches 101 run data modify storage pcub:fcub dzTemp.4.lore set from block ~ ~ ~ Items[0].tag.display.Lore[-5]
# 武器移位
data modify block ~ ~ ~ Items[0].Slot set value 3b
# 模拟材料
	# 罪
		data modify block ~ ~ ~ Items append value {Slot:0b, Count: 1b, id: "minecraft:brick", tag: {dlc: "collection", id: "sins:collection"}}
		data modify block ~ ~ ~ Items[{Slot:0b}].Count set from block ~ ~ ~ Items[{Slot:3b}].tag.enhance_lvl
	# 罪之石
		data modify block ~ ~ ~ Items append value {Slot:6b, Count: 1b, id: "minecraft:brick"}
		data modify block ~ ~ ~ Items[{Slot:6b}].Count set from block ~ ~ ~ Items[{Slot:3b}].tag.enhance_lvl
# 开始罪之锻
function dlc:dz/weapon/sins/check
# 同步词条
	data modify block ~ ~ ~ Items[{Slot:5b}].tag.enhance1_id set from storage pcub:fcub dzTemp.1.id
	data modify block ~ ~ ~ Items[{Slot:5b}].tag.display.Lore[-7] set from storage pcub:fcub dzTemp.1.lore
	data modify block ~ ~ ~ Items[{Slot:5b}].tag.enhance2_id set from storage pcub:fcub dzTemp.2.id
	data modify block ~ ~ ~ Items[{Slot:5b}].tag.display.Lore[-6] set from storage pcub:fcub dzTemp.2.lore
	data modify block ~ ~ ~ Items[{Slot:5b}].tag.enhance3_id set from storage pcub:fcub dzTemp.3.id
	data modify block ~ ~ ~ Items[{Slot:5b}].tag.display.Lore[-5] set from storage pcub:fcub dzTemp.3.lore
	data modify block ~ ~ ~ Items[{Slot:5b}].tag.enhance4_id set from storage pcub:fcub dzTemp.4.id
	data modify block ~ ~ ~ Items[{Slot:5b}].tag.display.Lore[-4] set from storage pcub:fcub dzTemp.4.lore
data remove storage pcub:fcub dzTemp
tellraw @p "注意：罪之锻词条可能会随版本产生变化！梦盘原版词条则不受影响"