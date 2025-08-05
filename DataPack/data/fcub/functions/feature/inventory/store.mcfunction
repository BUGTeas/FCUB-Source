# 先清空，并放置缓存物品
data modify block 0 -1 0 Items set value [{id:"minecraft:purple_stained_glass_pane",Slot:0,Count:1}]
# 并入末影箱储存
item replace block 0 -1 0 container.0 from entity @s enderchest.0
# 读取玩家背包
item replace block 0 -1 0 container.1 from entity @s armor.chest
data modify block 0 -1 0 Items[0].tag.data.fcub_inv_storage.armor.chest set from block 0 -1 0 Items[1]
data remove block 0 -1 0 Items[1]
item replace block 0 -1 0 container.1 from entity @s armor.feet
data modify block 0 -1 0 Items[0].tag.data.fcub_inv_storage.armor.feet set from block 0 -1 0 Items[1]
data remove block 0 -1 0 Items[1]
item replace block 0 -1 0 container.1 from entity @s armor.head
data modify block 0 -1 0 Items[0].tag.data.fcub_inv_storage.armor.head set from block 0 -1 0 Items[1]
data remove block 0 -1 0 Items[1]
item replace block 0 -1 0 container.1 from entity @s armor.legs
data modify block 0 -1 0 Items[0].tag.data.fcub_inv_storage.armor.legs set from block 0 -1 0 Items[1]
data remove block 0 -1 0 Items[1]
item replace block 0 -1 0 container.1 from entity @s weapon.offhand
data modify block 0 -1 0 Items[0].tag.data.fcub_inv_storage.weapon.offhand set from block 0 -1 0 Items[1]
data remove block 0 -1 0 Items[1]
item replace block 0 -1 0 container.1 from entity @s hotbar.0
data modify block 0 -1 0 Items[0].tag.data.fcub_inv_storage.hotbar.0 set from block 0 -1 0 Items[1]
data remove block 0 -1 0 Items[1]
item replace block 0 -1 0 container.1 from entity @s hotbar.1
data modify block 0 -1 0 Items[0].tag.data.fcub_inv_storage.hotbar.1 set from block 0 -1 0 Items[1]
data remove block 0 -1 0 Items[1]
item replace block 0 -1 0 container.1 from entity @s hotbar.2
data modify block 0 -1 0 Items[0].tag.data.fcub_inv_storage.hotbar.2 set from block 0 -1 0 Items[1]
data remove block 0 -1 0 Items[1]
item replace block 0 -1 0 container.1 from entity @s hotbar.3
data modify block 0 -1 0 Items[0].tag.data.fcub_inv_storage.hotbar.3 set from block 0 -1 0 Items[1]
data remove block 0 -1 0 Items[1]
item replace block 0 -1 0 container.1 from entity @s hotbar.4
data modify block 0 -1 0 Items[0].tag.data.fcub_inv_storage.hotbar.4 set from block 0 -1 0 Items[1]
data remove block 0 -1 0 Items[1]
item replace block 0 -1 0 container.1 from entity @s hotbar.5
data modify block 0 -1 0 Items[0].tag.data.fcub_inv_storage.hotbar.5 set from block 0 -1 0 Items[1]
data remove block 0 -1 0 Items[1]
item replace block 0 -1 0 container.1 from entity @s hotbar.6
data modify block 0 -1 0 Items[0].tag.data.fcub_inv_storage.hotbar.6 set from block 0 -1 0 Items[1]
data remove block 0 -1 0 Items[1]
item replace block 0 -1 0 container.1 from entity @s hotbar.7
data modify block 0 -1 0 Items[0].tag.data.fcub_inv_storage.hotbar.7 set from block 0 -1 0 Items[1]
data remove block 0 -1 0 Items[1]
item replace block 0 -1 0 container.1 from entity @s hotbar.8
data modify block 0 -1 0 Items[0].tag.data.fcub_inv_storage.hotbar.8 set from block 0 -1 0 Items[1]
data remove block 0 -1 0 Items[1]
item replace block 0 -1 0 container.1 from entity @s inventory.0
data modify block 0 -1 0 Items[0].tag.data.fcub_inv_storage.inventory.0 set from block 0 -1 0 Items[1]
data remove block 0 -1 0 Items[1]
item replace block 0 -1 0 container.1 from entity @s inventory.1
data modify block 0 -1 0 Items[0].tag.data.fcub_inv_storage.inventory.1 set from block 0 -1 0 Items[1]
data remove block 0 -1 0 Items[1]
item replace block 0 -1 0 container.1 from entity @s inventory.2
data modify block 0 -1 0 Items[0].tag.data.fcub_inv_storage.inventory.2 set from block 0 -1 0 Items[1]
data remove block 0 -1 0 Items[1]
item replace block 0 -1 0 container.1 from entity @s inventory.3
data modify block 0 -1 0 Items[0].tag.data.fcub_inv_storage.inventory.3 set from block 0 -1 0 Items[1]
data remove block 0 -1 0 Items[1]
item replace block 0 -1 0 container.1 from entity @s inventory.4
data modify block 0 -1 0 Items[0].tag.data.fcub_inv_storage.inventory.4 set from block 0 -1 0 Items[1]
data remove block 0 -1 0 Items[1]
item replace block 0 -1 0 container.1 from entity @s inventory.5
data modify block 0 -1 0 Items[0].tag.data.fcub_inv_storage.inventory.5 set from block 0 -1 0 Items[1]
data remove block 0 -1 0 Items[1]
item replace block 0 -1 0 container.1 from entity @s inventory.6
data modify block 0 -1 0 Items[0].tag.data.fcub_inv_storage.inventory.6 set from block 0 -1 0 Items[1]
data remove block 0 -1 0 Items[1]
item replace block 0 -1 0 container.1 from entity @s inventory.7
data modify block 0 -1 0 Items[0].tag.data.fcub_inv_storage.inventory.7 set from block 0 -1 0 Items[1]
data remove block 0 -1 0 Items[1]
item replace block 0 -1 0 container.1 from entity @s inventory.8
data modify block 0 -1 0 Items[0].tag.data.fcub_inv_storage.inventory.8 set from block 0 -1 0 Items[1]
data remove block 0 -1 0 Items[1]
item replace block 0 -1 0 container.1 from entity @s inventory.9
data modify block 0 -1 0 Items[0].tag.data.fcub_inv_storage.inventory.9 set from block 0 -1 0 Items[1]
data remove block 0 -1 0 Items[1]
item replace block 0 -1 0 container.1 from entity @s inventory.10
data modify block 0 -1 0 Items[0].tag.data.fcub_inv_storage.inventory.10 set from block 0 -1 0 Items[1]
data remove block 0 -1 0 Items[1]
item replace block 0 -1 0 container.1 from entity @s inventory.11
data modify block 0 -1 0 Items[0].tag.data.fcub_inv_storage.inventory.11 set from block 0 -1 0 Items[1]
data remove block 0 -1 0 Items[1]
item replace block 0 -1 0 container.1 from entity @s inventory.12
data modify block 0 -1 0 Items[0].tag.data.fcub_inv_storage.inventory.12 set from block 0 -1 0 Items[1]
data remove block 0 -1 0 Items[1]
item replace block 0 -1 0 container.1 from entity @s inventory.13
data modify block 0 -1 0 Items[0].tag.data.fcub_inv_storage.inventory.13 set from block 0 -1 0 Items[1]
data remove block 0 -1 0 Items[1]
item replace block 0 -1 0 container.1 from entity @s inventory.14
data modify block 0 -1 0 Items[0].tag.data.fcub_inv_storage.inventory.14 set from block 0 -1 0 Items[1]
data remove block 0 -1 0 Items[1]
item replace block 0 -1 0 container.1 from entity @s inventory.15
data modify block 0 -1 0 Items[0].tag.data.fcub_inv_storage.inventory.15 set from block 0 -1 0 Items[1]
data remove block 0 -1 0 Items[1]
item replace block 0 -1 0 container.1 from entity @s inventory.16
data modify block 0 -1 0 Items[0].tag.data.fcub_inv_storage.inventory.16 set from block 0 -1 0 Items[1]
data remove block 0 -1 0 Items[1]
item replace block 0 -1 0 container.1 from entity @s inventory.17
data modify block 0 -1 0 Items[0].tag.data.fcub_inv_storage.inventory.17 set from block 0 -1 0 Items[1]
data remove block 0 -1 0 Items[1]
item replace block 0 -1 0 container.1 from entity @s inventory.18
data modify block 0 -1 0 Items[0].tag.data.fcub_inv_storage.inventory.18 set from block 0 -1 0 Items[1]
data remove block 0 -1 0 Items[1]
item replace block 0 -1 0 container.1 from entity @s inventory.19
data modify block 0 -1 0 Items[0].tag.data.fcub_inv_storage.inventory.19 set from block 0 -1 0 Items[1]
data remove block 0 -1 0 Items[1]
item replace block 0 -1 0 container.1 from entity @s inventory.20
data modify block 0 -1 0 Items[0].tag.data.fcub_inv_storage.inventory.20 set from block 0 -1 0 Items[1]
data remove block 0 -1 0 Items[1]
item replace block 0 -1 0 container.1 from entity @s inventory.21
data modify block 0 -1 0 Items[0].tag.data.fcub_inv_storage.inventory.21 set from block 0 -1 0 Items[1]
data remove block 0 -1 0 Items[1]
item replace block 0 -1 0 container.1 from entity @s inventory.22
data modify block 0 -1 0 Items[0].tag.data.fcub_inv_storage.inventory.22 set from block 0 -1 0 Items[1]
data remove block 0 -1 0 Items[1]
item replace block 0 -1 0 container.1 from entity @s inventory.23
data modify block 0 -1 0 Items[0].tag.data.fcub_inv_storage.inventory.23 set from block 0 -1 0 Items[1]
data remove block 0 -1 0 Items[1]
item replace block 0 -1 0 container.1 from entity @s inventory.24
data modify block 0 -1 0 Items[0].tag.data.fcub_inv_storage.inventory.24 set from block 0 -1 0 Items[1]
data remove block 0 -1 0 Items[1]
item replace block 0 -1 0 container.1 from entity @s inventory.25
data modify block 0 -1 0 Items[0].tag.data.fcub_inv_storage.inventory.25 set from block 0 -1 0 Items[1]
data remove block 0 -1 0 Items[1]
item replace block 0 -1 0 container.1 from entity @s inventory.26
data modify block 0 -1 0 Items[0].tag.data.fcub_inv_storage.inventory.26 set from block 0 -1 0 Items[1]
data remove block 0 -1 0 Items[1]
# 放入玩家末影箱
item replace entity @s enderchest.0 from block 0 -1 0 container.0
data modify block 0 -1 0 Items[0].tag.reset_self_id set value 2
item replace entity @s enderchest.9 from block 0 -1 0 container.0
# 清除缓存槽位
data remove block 0 -1 0 Items[0]