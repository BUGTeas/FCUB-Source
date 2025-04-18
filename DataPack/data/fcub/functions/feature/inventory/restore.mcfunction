# 防止无物品还原造成背包清空
execute unless entity @s[nbt={EnderItems:[{tag:{data:{fcub_inv_storage:{}}}}]}] run return 0

function fcub:feature/inventory/apply
# 删除末影箱中的缓存
item replace block 0 -1 0 container.0 from entity @s enderchest.0
data remove block 0 -1 0 Items[0].tag.data.fcub_inv_storage
item replace entity @s enderchest.0 from block 0 -1 0 container.0
data modify block 0 -1 0 Items[0].tag.reset_self_id set value 2
item replace entity @s enderchest.9 from block 0 -1 0 container.0

tellraw @s {"text":"已恢复您的物品。", "color":"gold"}