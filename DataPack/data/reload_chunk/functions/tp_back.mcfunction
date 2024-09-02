#移除标记
tag @s remove tp_back
#传送回去
$tp @s $(x) $(y) $(z)
schedule function reload_chunk:kill_placeholder 5
#删除末影箱中的缓存
item replace entity @s enderchest.2 with minecraft:air