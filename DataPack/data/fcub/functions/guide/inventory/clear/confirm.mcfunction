#先清空，并放置缓存物品
data modify block 0 -1 0 Items set value [{id:"minecraft:purple_stained_glass_pane",Slot:0,Count:1}]
#读取玩家背包
function fcub:guide/inventory/process/store {container:"armor.chest",slot:0}
function fcub:guide/inventory/process/store {container:"armor.feet",slot:1}
function fcub:guide/inventory/process/store {container:"armor.head",slot:2}
function fcub:guide/inventory/process/store {container:"armor.legs",slot:3}
function fcub:guide/inventory/process/store {container:"weapon.offhand",slot:4}
function fcub:guide/inventory/process/store {container:"hotbar.0",slot:0}
function fcub:guide/inventory/process/store {container:"hotbar.1",slot:1}
function fcub:guide/inventory/process/store {container:"hotbar.2",slot:2}
function fcub:guide/inventory/process/store {container:"hotbar.3",slot:3}
function fcub:guide/inventory/process/store {container:"hotbar.4",slot:4}
function fcub:guide/inventory/process/store {container:"hotbar.5",slot:5}
function fcub:guide/inventory/process/store {container:"hotbar.6",slot:6}
function fcub:guide/inventory/process/store {container:"hotbar.7",slot:7}
function fcub:guide/inventory/process/store {container:"hotbar.8",slot:8}
function fcub:guide/inventory/process/store {container:"inventory.0",slot:0}
function fcub:guide/inventory/process/store {container:"inventory.1",slot:1}
function fcub:guide/inventory/process/store {container:"inventory.2",slot:2}
function fcub:guide/inventory/process/store {container:"inventory.3",slot:3}
function fcub:guide/inventory/process/store {container:"inventory.4",slot:4}
function fcub:guide/inventory/process/store {container:"inventory.5",slot:5}
function fcub:guide/inventory/process/store {container:"inventory.6",slot:6}
function fcub:guide/inventory/process/store {container:"inventory.7",slot:7}
function fcub:guide/inventory/process/store {container:"inventory.8",slot:8}
function fcub:guide/inventory/process/store {container:"inventory.9",slot:9}
function fcub:guide/inventory/process/store {container:"inventory.10",slot:10}
function fcub:guide/inventory/process/store {container:"inventory.11",slot:11}
function fcub:guide/inventory/process/store {container:"inventory.12",slot:12}
function fcub:guide/inventory/process/store {container:"inventory.13",slot:13}
function fcub:guide/inventory/process/store {container:"inventory.14",slot:14}
function fcub:guide/inventory/process/store {container:"inventory.15",slot:15}
function fcub:guide/inventory/process/store {container:"inventory.16",slot:16}
function fcub:guide/inventory/process/store {container:"inventory.17",slot:17}
function fcub:guide/inventory/process/store {container:"inventory.18",slot:18}
function fcub:guide/inventory/process/store {container:"inventory.19",slot:19}
function fcub:guide/inventory/process/store {container:"inventory.20",slot:20}
function fcub:guide/inventory/process/store {container:"inventory.21",slot:21}
function fcub:guide/inventory/process/store {container:"inventory.22",slot:22}
function fcub:guide/inventory/process/store {container:"inventory.23",slot:23}
function fcub:guide/inventory/process/store {container:"inventory.24",slot:24}
function fcub:guide/inventory/process/store {container:"inventory.25",slot:25}
function fcub:guide/inventory/process/store {container:"inventory.26",slot:26}
#放入玩家末影箱
#除非背包已恢复，否则前往不要打开末影箱！
item replace entity @s enderchest.1 from block 0 -1 0 container.0
#清空缓存箱
data modify block 0 -1 0 Items set value []
tellraw @s[scores={race=0..}] {"text":"您的背包被暂时清空， 离开教程后自动恢复。", "color":"gold"}
tag @s add inventory_cleared