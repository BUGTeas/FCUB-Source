#皇城防守
	forceload add 120 -146 124 -147
	data modify block 120 54 -146 Command set value ""
	kill @e[type=villager,x=121,y=59,z=-146,distance=..8]
	setblock 121 59 -146 minecraft:air
	data modify block 124 60 -147 front_text.messages set value ['{"text":"服务器已弃用战役"}','{"text":"但您依旧可以"}','{"text":"为服务器做出贡献"}','{"text":"以获得功勋值"}']
	setblock 124 59 -147 minecraft:air
	forceload remove 120 -146 124 -147
#妖族防守
	forceload add 401 79 404 80
	data modify block 401 46 79 Command set value ""
	kill @e[type=villager,x=402,y=50,z=79,distance=..8]
	setblock 402 50 79 minecraft:air
	data modify block 404 51 80 front_text.messages set value ['{"text":"服务器已弃用战役"}','{"text":"但您依旧可以"}','{"text":"为服务器做出贡献"}','{"text":"以获得功勋值"}']
	setblock 404 50 80 minecraft:air
	forceload remove 401 79 404 80
#妖族进攻
	forceload add 2745 868 2750 872
	data modify block 2745 77 868 Command set value ""
	kill @e[type=villager,x=2748,y=80,z=870,distance=..8]
	setblock 2748 80 870 minecraft:air
	data modify block 2750 81 872 front_text.messages set value ['{"text":"服务器已弃用战役"}','{"text":"但您依旧可以"}','{"text":"为服务器做出贡献"}','{"text":"以获得功勋值"}']
	setblock 2750 81 871 minecraft:air
	forceload remove 2745 868 2750 872
#妖塔防守
	forceload add -169 -180 -172 -180
	data modify block -170 57 -180 Command set value ""
	kill @e[type=villager,x=-169,y=61,z=-180,distance=..8]
	setblock -169 61 -180 minecraft:air
	data modify block -172 63 -180 front_text.messages set value ['{"text":"服务器已弃用战役"}','{"text":"但您依旧可以"}','{"text":"为服务器做出贡献"}','{"text":"以获得功勋值"}']
	setblock -172 62 -180 minecraft:air
	forceload remove -169 -180 -172 -180
#人族进攻
	forceload add 1664 184 1662 187
	data modify block 1664 176 184 Command set value ""
	kill @e[type=villager,x=1663,y=181,z=184,distance=..8]
	setblock 1663 181 184 minecraft:air
	data modify block 1662 182 187 front_text.messages set value ['{"text":"服务器已弃用战役"}','{"text":"但您依旧可以"}','{"text":"为服务器做出贡献"}','{"text":"以获得功勋值"}']
	setblock 1662 181 187 minecraft:air
	forceload remove 1664 184 1662 187
#战神进攻
	forceload add 3269 -139 3267 -137
	data modify block 3268 17 -139 Command set value ""
	kill @e[type=villager,x=3269,y=20,z=-138,distance=..8]
	setblock 3269 20 -138 minecraft:air
	data modify block 3268 21 -137 front_text.messages set value ['{"text":"服务器已弃用战役"}','{"text":"但您依旧可以"}','{"text":"为服务器做出贡献"}','{"text":"以获得功勋值"}']
	setblock 3267 21 -137 minecraft:air
	forceload remove 3269 -139 3267 -137