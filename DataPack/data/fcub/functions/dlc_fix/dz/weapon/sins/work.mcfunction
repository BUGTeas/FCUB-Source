# 武器移位
data modify block ~ ~ ~ Items[{Slot:6b}].Slot set value 3b
# 模拟材料
	# 罪
		data modify block ~ ~ ~ Items append value {Slot:0b, Count: 1b, id: "minecraft:brick", tag: {dlc: "collection", id: "sins:collection"}}
		data modify block ~ ~ ~ Items[{Slot:0b}].Count set from block ~ ~ ~ Items[{Slot:3b}].tag.enhance_lvl
	# 罪之石
		data modify block ~ ~ ~ Items append value {Slot:6b, Count: 1b, id: "minecraft:brick"}
		data modify block ~ ~ ~ Items[{Slot:6b}].Count set from block ~ ~ ~ Items[{Slot:3b}].tag.enhance_lvl
# 开始罪之锻
function dlc:dz/weapon/sins/check