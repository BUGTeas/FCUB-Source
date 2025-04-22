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
	setblock 1218 29 -353 minecraft:oak_wall_sign[facing=north]{front_text:{messages:['{"translate": "fcub.guide.trade.info.sign.text1", "fallback": "为确保正常游戏"}','{"translate": "fcub.guide.trade.info.sign.text2", "fallback": "请务必在本地添加"}','{"translate": "fcub.guide.trade.info.sign.text3", "fallback": "两个专用资源包"}','{"translate": "fcub.guide.trade.info.sign.text4", "fallback": "然后重新进入服务器"}']}} destroy
	setblock 1217 29 -352 minecraft:chiseled_bookshelf[facing=north,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]
	forceload remove 1217 -352 1218 -353
#皇城中心入口
	#西南
		execute store success score #system fcub_guide_temp run forceload add 168 74
		setblock 168 45 74 minecraft:oak_sign[rotation=2]{back_text:{has_glowing_text:1b,messages:['{"translate": "fcub.guide.enter.sign.back1", "fallback": "为确保正常游戏", "clickEvent": {"action": "run_command", "value": "function fcub:guide/into/finish_select"}}','{"translate": "fcub.guide.enter.sign.back2", "fallback": "请务必在本地添加"}','{"translate": "fcub.guide.enter.sign.back3", "fallback": "两个专用资源包"}','{"translate": "fcub.guide.enter.sign.back4", "fallback": "然后重新进入服务器"}']},front_text:{has_glowing_text:0b,messages:['{"translate": "fcub.guide.enter.sign.front1", "fallback": "为确保正常游戏", "clickEvent": {"action": "run_command", "value": "function fcub:guide/into/finish_select"}}','{"translate": "fcub.guide.enter.sign.front2", "fallback": "请务必在本地添加"}','{"translate": "fcub.guide.enter.sign.front3", "fallback": "两个专用资源包"}','{"translate": "fcub.guide.enter.sign.front4", "fallback": "然后重新进入服务器"}']}} destroy
		execute if score #system fcub_guide_temp matches 1 run forceload remove 168 74
	#西北
		execute store success score #system fcub_guide_temp run forceload add 168 52
		setblock 168 45 52 minecraft:oak_sign[rotation=6]{back_text:{has_glowing_text:1b,messages:['{"translate": "fcub.guide.enter.sign.back1", "fallback": "为确保正常游戏", "clickEvent": {"action": "run_command", "value": "function fcub:guide/into/finish_select"}}','{"translate": "fcub.guide.enter.sign.back2", "fallback": "请务必在本地添加"}','{"translate": "fcub.guide.enter.sign.back3", "fallback": "两个专用资源包"}','{"translate": "fcub.guide.enter.sign.back4", "fallback": "然后重新进入服务器"}']},front_text:{has_glowing_text:0b,messages:['{"translate": "fcub.guide.enter.sign.front1", "fallback": "为确保正常游戏", "clickEvent": {"action": "run_command", "value": "function fcub:guide/into/finish_select"}}','{"translate": "fcub.guide.enter.sign.front2", "fallback": "请务必在本地添加"}','{"translate": "fcub.guide.enter.sign.front3", "fallback": "两个专用资源包"}','{"translate": "fcub.guide.enter.sign.front4", "fallback": "然后重新进入服务器"}']}} destroy
		execute if score #system fcub_guide_temp matches 1 run forceload remove 168 52
	#东北
		execute store success score #system fcub_guide_temp run forceload add 190 52
		setblock 190 45 52 minecraft:oak_sign[rotation=10]{back_text:{has_glowing_text:1b,messages:['{"translate": "fcub.guide.enter.sign.back1", "fallback": "为确保正常游戏", "clickEvent": {"action": "run_command", "value": "function fcub:guide/into/finish_select"}}','{"translate": "fcub.guide.enter.sign.back2", "fallback": "请务必在本地添加"}','{"translate": "fcub.guide.enter.sign.back3", "fallback": "两个专用资源包"}','{"translate": "fcub.guide.enter.sign.back4", "fallback": "然后重新进入服务器"}']},front_text:{has_glowing_text:0b,messages:['{"translate": "fcub.guide.enter.sign.front1", "fallback": "为确保正常游戏", "clickEvent": {"action": "run_command", "value": "function fcub:guide/into/finish_select"}}','{"translate": "fcub.guide.enter.sign.front2", "fallback": "请务必在本地添加"}','{"translate": "fcub.guide.enter.sign.front3", "fallback": "两个专用资源包"}','{"translate": "fcub.guide.enter.sign.front4", "fallback": "然后重新进入服务器"}']}} destroy
		execute if score #system fcub_guide_temp matches 1 run forceload remove 190 52
	#东南
		execute store success score #system fcub_guide_temp run forceload add 190 74
		setblock 190 45 74 minecraft:oak_sign[rotation=14]{back_text:{has_glowing_text:1b,messages:['{"translate": "fcub.guide.enter.sign.back1", "fallback": "为确保正常游戏", "clickEvent": {"action": "run_command", "value": "function fcub:guide/into/finish_select"}}','{"translate": "fcub.guide.enter.sign.back2", "fallback": "请务必在本地添加"}','{"translate": "fcub.guide.enter.sign.back3", "fallback": "两个专用资源包"}','{"translate": "fcub.guide.enter.sign.back4", "fallback": "然后重新进入服务器"}']},front_text:{has_glowing_text:0b,messages:['{"translate": "fcub.guide.enter.sign.front1", "fallback": "为确保正常游戏", "clickEvent": {"action": "run_command", "value": "function fcub:guide/into/finish_select"}}','{"translate": "fcub.guide.enter.sign.front2", "fallback": "请务必在本地添加"}','{"translate": "fcub.guide.enter.sign.front3", "fallback": "两个专用资源包"}','{"translate": "fcub.guide.enter.sign.front4", "fallback": "然后重新进入服务器"}']}} destroy
		execute if score #system fcub_guide_temp matches 1 run forceload remove 190 74