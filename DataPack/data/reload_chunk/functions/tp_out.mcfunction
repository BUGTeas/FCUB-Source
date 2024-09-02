#先清空，并放置缓存物品
data modify block 0 -1 0 Items set value [{id:"minecraft:purple_stained_glass_pane",Slot:0,Count:1}]
#记录原位置
data modify block 0 -1 0 Items[0].tag.x set from entity @s Pos[0]
data modify block 0 -1 0 Items[0].tag.y set from entity @s Pos[1]
data modify block 0 -1 0 Items[0].tag.z set from entity @s Pos[2]
#放入玩家末影箱
#除非背包已恢复，否则前往不要打开末影箱！
item replace entity @s enderchest.2 from block 0 -1 0 container.0
#清空缓存箱
data modify block 0 -1 0 Items set value []
#添加标记
tag @s remove tp_out
tag @s add tp_back
#传送到无人区
tp @s 1600 1000 -1200
#延迟执行
schedule function reload_chunk:tp_back_delay 2