# 获取附灵
	data remove storage pld:system dzTemp1
	data modify storage pld:system dzTemp1 set from block ~ ~ ~ Items.[{Slot:6b}].tag.display.Lore[-4]
	data remove storage pld:system dzTemp2
	data modify storage pld:system dzTemp2 set from block ~ ~ ~ Items.[{Slot:6b}].tag.enchant_id
	data remove storage pld:system dzTemp3
	data modify storage pld:system dzTemp3 set from block ~ ~ ~ Items.[{Slot:6b}].tag.enchant_lvl
# 重锻
	$function dlc:dz/weapon/$(path)
# 同步附灵
	data modify block ~ ~ ~ Items.[0].tag.display.Lore[-3] set from storage pld:system dzTemp1
	data modify block ~ ~ ~ Items.[0].tag.enchant_id set from storage pld:system dzTemp2
	data modify block ~ ~ ~ Items.[0].tag.enchant_lvl set from storage pld:system dzTemp3