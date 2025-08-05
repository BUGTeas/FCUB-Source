# 防止无物品还原造成背包清空
execute unless entity @s[nbt={EnderItems:[{tag:{data:{fcub_inv_storage:{}}}}]}] run return 0

# 还原玩家背包
data modify block 0 -1 0 Items set value []
data modify block 0 -1 0 Items append from entity @s EnderItems[0].tag.data.fcub_inv_storage.armor.chest
item replace entity @s armor.chest from block 0 -1 0 container.1
data modify block 0 -1 0 Items set value []
data modify block 0 -1 0 Items append from entity @s EnderItems[0].tag.data.fcub_inv_storage.armor.feet
item replace entity @s armor.feet from block 0 -1 0 container.1
data modify block 0 -1 0 Items set value []
data modify block 0 -1 0 Items append from entity @s EnderItems[0].tag.data.fcub_inv_storage.armor.head
item replace entity @s armor.head from block 0 -1 0 container.1
data modify block 0 -1 0 Items set value []
data modify block 0 -1 0 Items append from entity @s EnderItems[0].tag.data.fcub_inv_storage.armor.legs
item replace entity @s armor.legs from block 0 -1 0 container.1
data modify block 0 -1 0 Items set value []
data modify block 0 -1 0 Items append from entity @s EnderItems[0].tag.data.fcub_inv_storage.weapon.offhand
item replace entity @s weapon.offhand from block 0 -1 0 container.1
data modify block 0 -1 0 Items set value []
data modify block 0 -1 0 Items append from entity @s EnderItems[0].tag.data.fcub_inv_storage.hotbar.0
item replace entity @s hotbar.0 from block 0 -1 0 container.1
data modify block 0 -1 0 Items set value []
data modify block 0 -1 0 Items append from entity @s EnderItems[0].tag.data.fcub_inv_storage.hotbar.1
item replace entity @s hotbar.1 from block 0 -1 0 container.1
data modify block 0 -1 0 Items set value []
data modify block 0 -1 0 Items append from entity @s EnderItems[0].tag.data.fcub_inv_storage.hotbar.2
item replace entity @s hotbar.2 from block 0 -1 0 container.1
data modify block 0 -1 0 Items set value []
data modify block 0 -1 0 Items append from entity @s EnderItems[0].tag.data.fcub_inv_storage.hotbar.3
item replace entity @s hotbar.3 from block 0 -1 0 container.1
data modify block 0 -1 0 Items set value []
data modify block 0 -1 0 Items append from entity @s EnderItems[0].tag.data.fcub_inv_storage.hotbar.4
item replace entity @s hotbar.4 from block 0 -1 0 container.1
data modify block 0 -1 0 Items set value []
data modify block 0 -1 0 Items append from entity @s EnderItems[0].tag.data.fcub_inv_storage.hotbar.5
item replace entity @s hotbar.5 from block 0 -1 0 container.1
data modify block 0 -1 0 Items set value []
data modify block 0 -1 0 Items append from entity @s EnderItems[0].tag.data.fcub_inv_storage.hotbar.6
item replace entity @s hotbar.6 from block 0 -1 0 container.1
data modify block 0 -1 0 Items set value []
data modify block 0 -1 0 Items append from entity @s EnderItems[0].tag.data.fcub_inv_storage.hotbar.7
item replace entity @s hotbar.7 from block 0 -1 0 container.1
data modify block 0 -1 0 Items set value []
data modify block 0 -1 0 Items append from entity @s EnderItems[0].tag.data.fcub_inv_storage.hotbar.8
item replace entity @s hotbar.8 from block 0 -1 0 container.1
data modify block 0 -1 0 Items set value []
data modify block 0 -1 0 Items append from entity @s EnderItems[0].tag.data.fcub_inv_storage.inventory.0
item replace entity @s inventory.0 from block 0 -1 0 container.1
data modify block 0 -1 0 Items set value []
data modify block 0 -1 0 Items append from entity @s EnderItems[0].tag.data.fcub_inv_storage.inventory.1
item replace entity @s inventory.1 from block 0 -1 0 container.1
data modify block 0 -1 0 Items set value []
data modify block 0 -1 0 Items append from entity @s EnderItems[0].tag.data.fcub_inv_storage.inventory.2
item replace entity @s inventory.2 from block 0 -1 0 container.1
data modify block 0 -1 0 Items set value []
data modify block 0 -1 0 Items append from entity @s EnderItems[0].tag.data.fcub_inv_storage.inventory.3
item replace entity @s inventory.3 from block 0 -1 0 container.1
data modify block 0 -1 0 Items set value []
data modify block 0 -1 0 Items append from entity @s EnderItems[0].tag.data.fcub_inv_storage.inventory.4
item replace entity @s inventory.4 from block 0 -1 0 container.1
data modify block 0 -1 0 Items set value []
data modify block 0 -1 0 Items append from entity @s EnderItems[0].tag.data.fcub_inv_storage.inventory.5
item replace entity @s inventory.5 from block 0 -1 0 container.1
data modify block 0 -1 0 Items set value []
data modify block 0 -1 0 Items append from entity @s EnderItems[0].tag.data.fcub_inv_storage.inventory.6
item replace entity @s inventory.6 from block 0 -1 0 container.1
data modify block 0 -1 0 Items set value []
data modify block 0 -1 0 Items append from entity @s EnderItems[0].tag.data.fcub_inv_storage.inventory.7
item replace entity @s inventory.7 from block 0 -1 0 container.1
data modify block 0 -1 0 Items set value []
data modify block 0 -1 0 Items append from entity @s EnderItems[0].tag.data.fcub_inv_storage.inventory.8
item replace entity @s inventory.8 from block 0 -1 0 container.1
data modify block 0 -1 0 Items set value []
data modify block 0 -1 0 Items append from entity @s EnderItems[0].tag.data.fcub_inv_storage.inventory.9
item replace entity @s inventory.9 from block 0 -1 0 container.1
data modify block 0 -1 0 Items set value []
data modify block 0 -1 0 Items append from entity @s EnderItems[0].tag.data.fcub_inv_storage.inventory.10
item replace entity @s inventory.10 from block 0 -1 0 container.1
data modify block 0 -1 0 Items set value []
data modify block 0 -1 0 Items append from entity @s EnderItems[0].tag.data.fcub_inv_storage.inventory.11
item replace entity @s inventory.11 from block 0 -1 0 container.1
data modify block 0 -1 0 Items set value []
data modify block 0 -1 0 Items append from entity @s EnderItems[0].tag.data.fcub_inv_storage.inventory.12
item replace entity @s inventory.12 from block 0 -1 0 container.1
data modify block 0 -1 0 Items set value []
data modify block 0 -1 0 Items append from entity @s EnderItems[0].tag.data.fcub_inv_storage.inventory.13
item replace entity @s inventory.13 from block 0 -1 0 container.1
data modify block 0 -1 0 Items set value []
data modify block 0 -1 0 Items append from entity @s EnderItems[0].tag.data.fcub_inv_storage.inventory.14
item replace entity @s inventory.14 from block 0 -1 0 container.1
data modify block 0 -1 0 Items set value []
data modify block 0 -1 0 Items append from entity @s EnderItems[0].tag.data.fcub_inv_storage.inventory.15
item replace entity @s inventory.15 from block 0 -1 0 container.1
data modify block 0 -1 0 Items set value []
data modify block 0 -1 0 Items append from entity @s EnderItems[0].tag.data.fcub_inv_storage.inventory.16
item replace entity @s inventory.16 from block 0 -1 0 container.1
data modify block 0 -1 0 Items set value []
data modify block 0 -1 0 Items append from entity @s EnderItems[0].tag.data.fcub_inv_storage.inventory.17
item replace entity @s inventory.17 from block 0 -1 0 container.1
data modify block 0 -1 0 Items set value []
data modify block 0 -1 0 Items append from entity @s EnderItems[0].tag.data.fcub_inv_storage.inventory.18
item replace entity @s inventory.18 from block 0 -1 0 container.1
data modify block 0 -1 0 Items set value []
data modify block 0 -1 0 Items append from entity @s EnderItems[0].tag.data.fcub_inv_storage.inventory.19
item replace entity @s inventory.19 from block 0 -1 0 container.1
data modify block 0 -1 0 Items set value []
data modify block 0 -1 0 Items append from entity @s EnderItems[0].tag.data.fcub_inv_storage.inventory.20
item replace entity @s inventory.20 from block 0 -1 0 container.1
data modify block 0 -1 0 Items set value []
data modify block 0 -1 0 Items append from entity @s EnderItems[0].tag.data.fcub_inv_storage.inventory.21
item replace entity @s inventory.21 from block 0 -1 0 container.1
data modify block 0 -1 0 Items set value []
data modify block 0 -1 0 Items append from entity @s EnderItems[0].tag.data.fcub_inv_storage.inventory.22
item replace entity @s inventory.22 from block 0 -1 0 container.1
data modify block 0 -1 0 Items set value []
data modify block 0 -1 0 Items append from entity @s EnderItems[0].tag.data.fcub_inv_storage.inventory.23
item replace entity @s inventory.23 from block 0 -1 0 container.1
data modify block 0 -1 0 Items set value []
data modify block 0 -1 0 Items append from entity @s EnderItems[0].tag.data.fcub_inv_storage.inventory.24
item replace entity @s inventory.24 from block 0 -1 0 container.1
data modify block 0 -1 0 Items set value []
data modify block 0 -1 0 Items append from entity @s EnderItems[0].tag.data.fcub_inv_storage.inventory.25
item replace entity @s inventory.25 from block 0 -1 0 container.1
data modify block 0 -1 0 Items set value []
data modify block 0 -1 0 Items append from entity @s EnderItems[0].tag.data.fcub_inv_storage.inventory.26
item replace entity @s inventory.26 from block 0 -1 0 container.1
data modify block 0 -1 0 Items set value []

