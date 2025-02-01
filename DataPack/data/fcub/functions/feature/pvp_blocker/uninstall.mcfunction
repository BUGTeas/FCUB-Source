# 皇城防守 区块/7,-10
	execute store success score #system fcub_guide_temp run forceload add 124 -147
	data modify block 120 54 -146 Command set value "function pld:npcs/middle/pvp1_def"
	setblock 121 59 -146 minecraft:light_weighted_pressure_plate
	execute positioned 120 54 -146 run function pld:npcs/middle/pvp1_def
	data modify block 124 60 -147 front_text.messages set value ['{"translate":""}','{"translate":"pl.spsign.middle1.text2","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.middle1.reads\\",\\"color\\":\\"gold\\"}"}}','{"translate":"pl.spsign.middle1.text3"}','{"translate":""}']
	setblock 124 59 -147 minecraft:stone_button[face=wall,facing=south]
	execute if score #system fcub_guide_temp matches 1 run forceload remove 124 -147
# 妖族防守
	# 区块/25,4
		execute store success score #system fcub_guide_temp run forceload add 401 79
		data modify block 401 46 79 Command set value "function pld:npcs/east/pvp2_def"
		setblock 402 50 79 minecraft:light_weighted_pressure_plate
		execute positioned 401 46 79 run function pld:npcs/east/pvp2_def
		execute if score #system fcub_guide_temp matches 1 run forceload remove 401 79
	# 区块/25,5
		execute store success score #system fcub_guide_temp run forceload add 404 80
		data modify block 404 51 80 front_text.messages set value ['{"text":"","clickEvent":{"action":"run_command","value":"/tellraw @p[distance=..5] {\\"translate\\":\\"pl.spsign.east1.reads\\",\\"color\\":\\"gold\\"}"}}','{"translate":"pl.spsign.east1.text2"}','{"translate":"pl.spsign.east1.text3"}','{"text":""}']
		setblock 404 50 80 minecraft:stone_button[face=wall,facing=west]
		execute if score #system fcub_guide_temp matches 1 run forceload remove 404 80
# 妖族进攻 区块/171,54
	execute store success score #system fcub_guide_temp run forceload add 2750 871
	data modify block 2745 77 868 Command set value "function pld:npcs/yao/pvp3_atk"
	setblock 2748 80 870 minecraft:light_weighted_pressure_plate
	execute positioned 2745 77 868 run function pld:npcs/yao/pvp3_atk
	data modify block 2750 81 872 front_text.messages set value ['{"translate":"pl.spsign.yao1.text1","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.yao1.reads\\",\\"color\\":\\"gold\\"}"}}','{"translate":"pl.spsign.yao1.text2"}','{"translate":"pl.spsign.yao1.text3"}','{"translate":""}']
	setblock 2750 81 871 minecraft:stone_button[face=wall,facing=west]
	execute if score #system fcub_guide_temp matches 1 run forceload remove 2750 871
# 妖塔防守 区块/-11,-12
	execute store success score #system fcub_guide_temp run forceload add -172 -180
	data modify block -170 57 -180 Command set value "function pld:npcs/west/pvp3_def"
	setblock -169 61 -180 minecraft:light_weighted_pressure_plate
	execute positioned -170 57 -180 run function pld:npcs/west/pvp3_def
	data modify block -172 63 -180 front_text.messages set value ['{"translate":"pl.spsign.west2.text1","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.west2.reads\\",\\"color\\":\\"gold\\"}"}}','{"translate":"pl.spsign.west2.text2"}','{"translate":"pl.spsign.west2.text3"}','{"translate":""}']
	setblock -172 62 -180 minecraft:stone_button[face=wall,facing=east]
	execute if score #system fcub_guide_temp matches 1 run forceload remove -172 -180
# 人族进攻
	# 区块/104,11
		execute store success score #system fcub_guide_temp run forceload add 1664 184
		data modify block 1664 176 184 Command set value "function pld:npcs/ren/pvp2_atk"
		execute if score #system fcub_guide_temp matches 1 run forceload remove 1664 184
	# 区块/103,11
		execute store success score #system fcub_guide_temp run forceload add 1662 187
		setblock 1663 181 184 minecraft:light_weighted_pressure_plate
		execute positioned 1664 176 184 run function pld:npcs/ren/pvp2_atk
		data modify block 1662 182 187 front_text.messages set value ['{"translate":"pl.spsign.ren2.text1","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.ren2.reads\\",\\"color\\":\\"gold\\"}"}}','{"translate":"pl.spsign.ren2.text2"}','{"translate":"pl.spsign.ren2.text3"}','{"translate":""}']
		setblock 1662 181 187 minecraft:stone_button[face=wall,facing=west]
		execute if score #system fcub_guide_temp matches 1 run forceload remove 1662 187
# 战神进攻 区块/204,-9
	execute store success score #system fcub_guide_temp run forceload add 3267 -137
	data modify block 3268 17 -139 Command set value "function pld:npcs/zhan/pvp1_atk"
	setblock 3269 20 -138 minecraft:light_weighted_pressure_plate
	execute positioned 3268 17 -139 run function pld:npcs/zhan/pvp1_atk
	data modify block 3268 21 -137 front_text.messages set value ['{"translate":""}','{"translate":"pl.spsign.zhan3.text2","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.zhan3.reads\\",\\"color\\":\\"gold\\"}"}}','{"translate":"pl.spsign.zhan3.text3"}','{"translate":""}']
	setblock 3267 21 -137 minecraft:stone_button[face=wall,facing=north]
	execute if score #system fcub_guide_temp matches 1 run forceload remove 3267 -137