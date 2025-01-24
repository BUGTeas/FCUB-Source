# 盔甲
	# 阳
		execute if data block ~ ~ ~ {Items:[{Slot:6b,Count:1b,tag:{is_armor:1,element:6}}]} run function fcub:dlc_fix/dz/5_6/main {index:0, id:"fire"}
	# 阴
		execute if data block ~ ~ ~ {Items:[{Slot:6b,Count:1b,tag:{is_armor:1,element:7}}]} run function fcub:dlc_fix/dz/5_6/main {index:1, id:"ice"}
# 武器
	# 多锻
		execute if data block ~ ~ ~ {Items:[{Slot:6b,tag:{id:"dlc:ice_sword"}}]} run function fcub:dlc_fix/dz/weapon/sins/check {path:{path:"weapon_sword/1"}}
		execute if data block ~ ~ ~ {Items:[{Slot:6b,tag:{id:"dlc:fire_sword"}}]} run function fcub:dlc_fix/dz/weapon/sins/check {path:{path:"weapon_sword/2"}}
		execute if data block ~ ~ ~ {Items:[{Slot:6b,tag:{id:"dlc:dream_sword"}}]} run function fcub:dlc_fix/dz/weapon/sins/check {path:{path:"weapon_sword/3"}}
		execute if data block ~ ~ ~ {Items:[{Slot:6b,tag:{id:"dlc:fairy_sword"}}]} run function fcub:dlc_fix/dz/weapon/sins/check {path:{path:"weapon_sword/4"}}
		execute if data block ~ ~ ~ {Items:[{Slot:6b,tag:{id:"dlc:ice_bow"}}]} run function fcub:dlc_fix/dz/weapon/sins/check {path:{path:"weapon_bow/1"}}
		execute if data block ~ ~ ~ {Items:[{Slot:6b,tag:{id:"dlc:fire_bow"}}]} run function fcub:dlc_fix/dz/weapon/sins/check {path:{path:"weapon_bow/2"}}
		execute if data block ~ ~ ~ {Items:[{Slot:6b,tag:{id:"dlc:dream_bow"}}]} run function fcub:dlc_fix/dz/weapon/sins/check {path:{path:"weapon_bow/3"}}
		execute if data block ~ ~ ~ {Items:[{Slot:6b,tag:{id:"dlc:fairy_bow"}}]} run function fcub:dlc_fix/dz/weapon/sins/check {path:{path:"weapon_bow/4"}}
	# 非多锻无附灵
		execute if data block ~ ~ ~ {Items:[{Slot:6b,tag:{yi1:1}}]} unless data block ~ ~ ~ {Items:[{tag:{yi1:1,yi2:1,yi3:1,yi4:1}}]} run function dlc:dz/weapon/weapon_ld/1
		execute if data block ~ ~ ~ {Items:[{Slot:6b,tag:{yi2:1}}]} unless data block ~ ~ ~ {Items:[{tag:{yi1:1,yi2:1,yi3:1,yi4:1}}]} run function dlc:dz/weapon/weapon_ld/2
		execute if data block ~ ~ ~ {Items:[{Slot:6b,tag:{yi3:1}}]} unless data block ~ ~ ~ {Items:[{tag:{yi1:1,yi2:1,yi3:1,yi4:1}}]} run function dlc:dz/weapon/weapon_ld/3
		execute if data block ~ ~ ~ {Items:[{Slot:6b,tag:{yi4:1}}]} unless data block ~ ~ ~ {Items:[{tag:{yi1:1,yi2:1,yi3:1,yi4:1}}]} run function dlc:dz/weapon/weapon_ld/4