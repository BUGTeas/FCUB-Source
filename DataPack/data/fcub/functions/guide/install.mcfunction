#教程房间主体
	forceload add 1472 608 1487 623
	execute positioned 1480 12 613 run kill @e[distance=..4,type=minecraft:item_frame]
	data modify block 1483 11 617 Items set value []
	setblock 1472 -1 608 minecraft:structure_block[mode=load]{ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"fcub:guide",posX:0,posY:1,posZ:0,powered:0b,rotation:"NONE",seed:0L,showair:1b,showboundingbox:1b,sizeX:16,sizeY:24,sizeZ:16}
	setblock 1472 0 608 minecraft:redstone_block
	setblock 1483 4 621 minecraft:light_weighted_pressure_plate
	execute positioned 1483 4 621 run function fcub:guide/trade/same_icon/npc
	setblock 1477 4 621 minecraft:light_weighted_pressure_plate
	execute positioned 1477 4 621 run function fcub:guide/trade/redirection/npc
	forceload remove 1472 608 1487 623
#原版教程修改
	forceload add 1217 -352 1218 -353
	setblock 1218 29 -353 minecraft:air
	setblock 1218 29 -353 minecraft:oak_wall_sign[facing=north]{front_text:{messages:['{"text":"本服务器修改了 UI"}','{"text":"触屏在交易界面中"}','{"text":"按住左侧栏的物品图标"}','{"text":"可查看其对应物品信息"}']}}
	setblock 1217 29 -352 minecraft:chiseled_bookshelf[facing=north,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]
	forceload remove 1217 -352 1218 -353
#入口
	forceload add 1201 -356
	data modify block 1201 26 -356 Command set value "execute as @p[x=1201,y=28,z=-356,distance=..3,tag=is_selecting] run function fcub:guide/into/is_selecting"
	forceload remove 1201 -356
#丹师
	forceload add 1232 -337
	setblock 1232 28 -337 minecraft:chiseled_bookshelf[facing=north,slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]
	forceload remove 1232 -337
#皇城中心入口
	#西南
		execute store success score #system fcub_guide_temp run forceload add 168 74
		setblock 168 45 74 minecraft:air
		setblock 168 45 74 minecraft:oak_sign[rotation=2]{back_text:{has_glowing_text:1b,messages:['{"text":"基岩版游玩时","color":"gold"}','{"text":"遇到了问题？","color":"gold"}','{"text":"点击此告示牌","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"function fcub:guide/into/finish_select"}}','{"text":"查看常见问题解决方法","color":"green"}']},front_text:{has_glowing_text:0b,messages:['{"text":"基岩版游玩时","color":"dark_red"}','{"text":"遇到了问题？","color":"dark_red"}','{"text":"点击此告示牌","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"function fcub:guide/into/finish_select"}}','{"text":"查看常见问题解决方法","color":"dark_purple"}']}}
		execute if score #system fcub_guide_temp matches 1 run forceload remove 168 74
	#西北
		execute store success score #system fcub_guide_temp run forceload add 168 52
		setblock 168 45 52 minecraft:air
		setblock 168 45 52 minecraft:oak_sign[rotation=6]{back_text:{has_glowing_text:1b,messages:['{"text":"基岩版游玩时","color":"gold"}','{"text":"遇到了问题？","color":"gold"}','{"text":"点击此告示牌","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"function fcub:guide/into/finish_select"}}','{"text":"查看常见问题解决方法","color":"green"}']},front_text:{has_glowing_text:0b,messages:['{"text":"基岩版游玩时","color":"dark_red"}','{"text":"遇到了问题？","color":"dark_red"}','{"text":"点击此告示牌","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"function fcub:guide/into/finish_select"}}','{"text":"查看常见问题解决方法","color":"dark_purple"}']}}
		execute if score #system fcub_guide_temp matches 1 run forceload remove 168 52
	#东北
		execute store success score #system fcub_guide_temp run forceload add 190 52
		setblock 190 45 52 minecraft:air
		setblock 190 45 52 minecraft:oak_sign[rotation=10]{back_text:{has_glowing_text:1b,messages:['{"text":"基岩版游玩时","color":"gold"}','{"text":"遇到了问题？","color":"gold"}','{"text":"点击此告示牌","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"function fcub:guide/into/finish_select"}}','{"text":"查看常见问题解决方法","color":"green"}']},front_text:{has_glowing_text:0b,messages:['{"text":"基岩版游玩时","color":"dark_red"}','{"text":"遇到了问题？","color":"dark_red"}','{"text":"点击此告示牌","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"function fcub:guide/into/finish_select"}}','{"text":"查看常见问题解决方法","color":"dark_purple"}']}}
		execute if score #system fcub_guide_temp matches 1 run forceload remove 190 52
	#东南
		execute store success score #system fcub_guide_temp run forceload add 190 74
		setblock 190 45 74 minecraft:air
		setblock 190 45 74 minecraft:oak_sign[rotation=14]{back_text:{has_glowing_text:1b,messages:['{"text":"基岩版游玩时","color":"gold"}','{"text":"遇到了问题？","color":"gold"}','{"text":"点击此告示牌","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"function fcub:guide/into/finish_select"}}','{"text":"查看常见问题解决方法","color":"green"}']},front_text:{has_glowing_text:0b,messages:['{"text":"基岩版游玩时","color":"dark_red"}','{"text":"遇到了问题？","color":"dark_red"}','{"text":"点击此告示牌","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"function fcub:guide/into/finish_select"}}','{"text":"查看常见问题解决方法","color":"dark_purple"}']}}
		execute if score #system fcub_guide_temp matches 1 run forceload remove 190 74