# 获取附灵
	data remove storage pld:system dzTemp1
	data modify storage pld:system dzTemp1 set from block ~ ~ ~ Items[0].tag.display.Lore[-4]
	data remove storage pld:system dzTemp2
	data modify storage pld:system dzTemp2 set from block ~ ~ ~ Items[0].tag.enchant_id
	data remove storage pld:system dzTemp3
	data modify storage pld:system dzTemp3 set from block ~ ~ ~ Items[0].tag.enchant_lvl
# 重锻
	execute if data block ~ ~ ~ {Items:[{tag:{id:"dlc:ice_sword"}}]} run function dlc:dz/weapon/weapon_sword/1
	execute if data block ~ ~ ~ {Items:[{tag:{id:"dlc:fire_sword"}}]} run function dlc:dz/weapon/weapon_sword/2
	execute if data block ~ ~ ~ {Items:[{tag:{id:"dlc:dream_sword"}}]} run function dlc:dz/weapon/weapon_sword/3
	execute if data block ~ ~ ~ {Items:[{tag:{id:"dlc:fairy_sword"}}]} run function dlc:dz/weapon/weapon_sword/4
	execute if data block ~ ~ ~ {Items:[{tag:{id:"dlc:ice_bow"}}]} run function dlc:dz/weapon/weapon_bow/1
	execute if data block ~ ~ ~ {Items:[{tag:{id:"dlc:fire_bow"}}]} run function dlc:dz/weapon/weapon_bow/2
	execute if data block ~ ~ ~ {Items:[{tag:{id:"dlc:dream_bow"}}]} run function dlc:dz/weapon/weapon_bow/3
	execute if data block ~ ~ ~ {Items:[{tag:{id:"dlc:fairy_bow"}}]} run function dlc:dz/weapon/weapon_bow/4
# 同步附灵
	data modify block ~ ~ ~ Items[0].tag.display.Lore[-3] set from storage pld:system dzTemp1
	data modify block ~ ~ ~ Items[0].tag.enchant_id set from storage pld:system dzTemp2
	data modify block ~ ~ ~ Items[0].tag.enchant_lvl set from storage pld:system dzTemp3