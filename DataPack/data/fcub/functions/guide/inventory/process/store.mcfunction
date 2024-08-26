#清空缓存槽位
data remove block 0 -1 0 Items[1]
#读取玩家槽位
$item replace block 0 -1 0 container.1 from entity @s $(container)
#写入数据
data remove storage pcub:fcub guide.temp
data modify storage pcub:fcub guide.temp set from block 0 -1 0 Items[1]
$data modify storage pcub:fcub guide.temp.Slot set value $(slot)
$data modify block 0 -1 0 Items[0].tag.guide_temp.$(container) set from storage pcub:fcub guide.temp
#清空玩家槽位物品
$item replace entity @s $(container) with minecraft:air