#清空缓存箱
data modify block 0 -1 0 Items set value []
#读取玩家装备/副手
function fcub:guide/inventory/process/read {container:"armor.chest",slot:0}
function fcub:guide/inventory/process/read {container:"armor.feet",slot:1}
function fcub:guide/inventory/process/read {container:"armor.head",slot:2}
function fcub:guide/inventory/process/read {container:"armor.legs",slot:3}
function fcub:guide/inventory/process/read {container:"weapon.offhand",slot:4}
#清空缓存箱
data modify block 0 -1 0 Items set value []
#读取玩家快捷栏
function fcub:guide/inventory/process/read {container:"hotbar.0",slot:0}
function fcub:guide/inventory/process/read {container:"hotbar.1",slot:1}
function fcub:guide/inventory/process/read {container:"hotbar.2",slot:2}
function fcub:guide/inventory/process/read {container:"hotbar.3",slot:3}
function fcub:guide/inventory/process/read {container:"hotbar.4",slot:4}
function fcub:guide/inventory/process/read {container:"hotbar.5",slot:5}
function fcub:guide/inventory/process/read {container:"hotbar.6",slot:6}
function fcub:guide/inventory/process/read {container:"hotbar.7",slot:7}
function fcub:guide/inventory/process/read {container:"hotbar.8",slot:8}
#清空缓存箱
data modify block 0 -1 0 Items set value []
#读取玩家背包
function fcub:guide/inventory/process/read {container:"inventory.0",slot:0}
function fcub:guide/inventory/process/read {container:"inventory.1",slot:1}
function fcub:guide/inventory/process/read {container:"inventory.2",slot:2}
function fcub:guide/inventory/process/read {container:"inventory.3",slot:3}
function fcub:guide/inventory/process/read {container:"inventory.4",slot:4}
function fcub:guide/inventory/process/read {container:"inventory.5",slot:5}
function fcub:guide/inventory/process/read {container:"inventory.6",slot:6}
function fcub:guide/inventory/process/read {container:"inventory.7",slot:7}
function fcub:guide/inventory/process/read {container:"inventory.8",slot:8}
function fcub:guide/inventory/process/read {container:"inventory.9",slot:9}
function fcub:guide/inventory/process/read {container:"inventory.10",slot:10}
function fcub:guide/inventory/process/read {container:"inventory.11",slot:11}
function fcub:guide/inventory/process/read {container:"inventory.12",slot:12}
function fcub:guide/inventory/process/read {container:"inventory.13",slot:13}
function fcub:guide/inventory/process/read {container:"inventory.14",slot:14}
function fcub:guide/inventory/process/read {container:"inventory.15",slot:15}
function fcub:guide/inventory/process/read {container:"inventory.16",slot:16}
function fcub:guide/inventory/process/read {container:"inventory.17",slot:17}
function fcub:guide/inventory/process/read {container:"inventory.18",slot:18}
function fcub:guide/inventory/process/read {container:"inventory.19",slot:19}
function fcub:guide/inventory/process/read {container:"inventory.20",slot:20}
function fcub:guide/inventory/process/read {container:"inventory.21",slot:21}
function fcub:guide/inventory/process/read {container:"inventory.22",slot:22}
function fcub:guide/inventory/process/read {container:"inventory.23",slot:23}
function fcub:guide/inventory/process/read {container:"inventory.24",slot:24}
function fcub:guide/inventory/process/read {container:"inventory.25",slot:25}
function fcub:guide/inventory/process/read {container:"inventory.26",slot:26}
#删除末影箱中的缓存
item replace entity @s enderchest.1 with minecraft:air
#清空缓存箱
data modify block 0 -1 0 Items set value []
tellraw @s {"text":"已恢复您的物品。", "color":"gold"}
tag @s remove inventory_cleared