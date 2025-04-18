# 先清空，并放置缓存物品
data modify block 0 -1 0 Items set value [{id:"minecraft:purple_stained_glass_pane",Slot:0,Count:1}]
# 并入末影箱储存
item replace block 0 -1 0 container.0 from entity @s enderchest.0
# 读取玩家背包
function fcub:feature/inventory/store/process
# 放入玩家末影箱
item replace entity @s enderchest.0 from block 0 -1 0 container.0
data modify block 0 -1 0 Items[0].tag.reset_self_id set value 2
item replace entity @s enderchest.9 from block 0 -1 0 container.0
# 清除缓存槽位
data remove block 0 -1 0 Items[0]