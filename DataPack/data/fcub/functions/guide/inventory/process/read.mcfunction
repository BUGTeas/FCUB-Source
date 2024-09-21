#读取数据
$data modify block 0 -1 0 Items append from entity @s EnderItems[{tag:{guide_temp:{}}}].tag.guide_temp.$(container)
#放入玩家槽位
$item replace entity @s $(container) from block 0 -1 0 container.$(slot)