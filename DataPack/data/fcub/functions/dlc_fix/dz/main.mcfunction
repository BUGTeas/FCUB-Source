# 确保除槽位 6（部位）以外，没有其它物品存在
	# 元素
		execute if data block ~ ~ ~ {Items:[{Slot:0b}]} run return 0
	# 核心
		execute if data block ~ ~ ~ {Items:[{Slot:3b}]} run return 0
	# 成品
		execute if data block ~ ~ ~ {Items:[{Slot:5b}]} run return 0
	# 无用槽位
		execute if data block ~ ~ ~ {Items:[{Slot:1b}]} run return 0
		execute if data block ~ ~ ~ {Items:[{Slot:2b}]} run return 0
		execute if data block ~ ~ ~ {Items:[{Slot:4b}]} run return 0
		execute if data block ~ ~ ~ {Items:[{Slot:7b}]} run return 0
		execute if data block ~ ~ ~ {Items:[{Slot:8b}]} run return 0
# 盔甲
	# 阳
		# execute if data block ~ ~ ~ {Items:[{tag:{is_armor:1,element:6}}]} run function fcub:dlc_fix/dz/5_6/main
	# 阴
		# execute if data block ~ ~ ~ {Items:[{tag:{is_armor:1,element:7}}]} run function fcub:dlc_fix/dz/5_6/main
# 武器
	# 多锻
		execute if data block ~ ~ ~ {Items:[{tag:{id:"dlc:ice_sword"}}]} run function fcub:dlc_fix/dz/weapon/sins/check
		execute if data block ~ ~ ~ {Items:[{tag:{id:"dlc:fire_sword"}}]} run function fcub:dlc_fix/dz/weapon/sins/check
		execute if data block ~ ~ ~ {Items:[{tag:{id:"dlc:dream_sword"}}]} run function fcub:dlc_fix/dz/weapon/sins/check
		execute if data block ~ ~ ~ {Items:[{tag:{id:"dlc:fairy_sword"}}]} run function fcub:dlc_fix/dz/weapon/sins/check
		execute if data block ~ ~ ~ {Items:[{tag:{id:"dlc:ice_bow"}}]} run function fcub:dlc_fix/dz/weapon/sins/check
		execute if data block ~ ~ ~ {Items:[{tag:{id:"dlc:fire_bow"}}]} run function fcub:dlc_fix/dz/weapon/sins/check
		execute if data block ~ ~ ~ {Items:[{tag:{id:"dlc:dream_bow"}}]} run function fcub:dlc_fix/dz/weapon/sins/check
		execute if data block ~ ~ ~ {Items:[{tag:{id:"dlc:fairy_bow"}}]} run function fcub:dlc_fix/dz/weapon/sins/check
	# 非多锻无附灵
		# execute if data block ~ ~ ~ {Items:[{tag:{yi1:1}}]} unless data block ~ ~ ~ {Items:[{tag:{yi1:1,yi2:1,yi3:1,yi4:1}}]} run function dlc:dz/weapon/weapon_ld/1
		# execute if data block ~ ~ ~ {Items:[{tag:{yi2:1}}]} unless data block ~ ~ ~ {Items:[{tag:{yi1:1,yi2:1,yi3:1,yi4:1}}]} run function dlc:dz/weapon/weapon_ld/2
		# execute if data block ~ ~ ~ {Items:[{tag:{yi3:1}}]} unless data block ~ ~ ~ {Items:[{tag:{yi1:1,yi2:1,yi3:1,yi4:1}}]} run function dlc:dz/weapon/weapon_ld/3
		# execute if data block ~ ~ ~ {Items:[{tag:{yi4:1}}]} unless data block ~ ~ ~ {Items:[{tag:{yi1:1,yi2:1,yi3:1,yi4:1}}]} run function dlc:dz/weapon/weapon_ld/4