# 武器雏形
# 梦魇
execute if data block ~ ~ ~ Items[{tag:{id:"dlc:dream_weapon_item"}}] unless data block ~ ~ ~ Items[{tag:{id:"dlc:dream_weapon_item"}}].tag.display.Lore[7] run data modify block ~ ~ ~ Items[{tag:{id:"dlc:dream_weapon_item"}}].tag.display.Lore append value '{"translate":"in.dream.weaponitem.lore.f"}'
# 悟道
execute if data block ~ ~ ~ Items[{tag:{id:"dlc:fairy_weapon_item"}}] unless data block ~ ~ ~ Items[{tag:{id:"dlc:fairy_weapon_item"}}].tag.display.Lore[7] run data modify block ~ ~ ~ Items[{tag:{id:"dlc:fairy_weapon_item"}}].tag.display.Lore append value '{"translate":"in.fairy.weaponitem.lore.f"}'
# 冰霜
execute if data block ~ ~ ~ Items[{tag:{id:"dlc:ice_weapon_item"}}] unless data block ~ ~ ~ Items[{tag:{id:"dlc:ice_weapon_item"}}].tag.display.Lore[7] run data modify block ~ ~ ~ Items[{tag:{id:"dlc:ice_weapon_item"}}].tag.display.Lore append value '{"translate":"in.ice.weaponitem.lore.f"}'
# 千丝
execute if data block ~ ~ ~ Items[{tag:{id:"dlc:fire_weapon_item"}}] unless data block ~ ~ ~ Items[{tag:{id:"dlc:fire_weapon_item"}}].tag.display.Lore[7] run data modify block ~ ~ ~ Items[{tag:{id:"dlc:fire_weapon_item"}}].tag.display.Lore append value '{"translate":"in.fire.weaponitem.lore.f"}'

# 噩梦燃料
execute if data block ~ ~ ~ Items[{id:"minecraft:firework_star",tag:{id:"dream:collection"}}] unless data block ~ ~ ~ Items[{id:"minecraft:firework_star",tag:{id:"dream:collection"}}].tag.display.Lore[7] run data modify block ~ ~ ~ Items[{id:"minecraft:firework_star",tag:{id:"dream:collection"}}].id set value "minecraft:orange_dye"