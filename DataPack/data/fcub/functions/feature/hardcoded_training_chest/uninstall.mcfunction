# 战士/训练用装备 区块/76,-20
	execute store success score #system fcub_guide_temp run forceload add 1221 -320
	data modify block 1221 27 -320 Command set value "/clone ~ ~ ~1 ~ ~ ~1 ~ ~1 ~4"
	execute if score #system fcub_guide_temp matches 1 run forceload remove 1221 -320
# 弓箭手/训练用装备 区块/76,-21
	execute store success score #system fcub_guide_temp run forceload add 1221 -334
	data modify block 1221 27 -334 Command set value "/clone ~ ~ ~1 ~ ~ ~1 ~ ~1 ~4"
	execute if score #system fcub_guide_temp matches 1 run forceload remove 1221 -334
# 炼丹师/训练用装备 区块/77,-22
	execute store success score #system fcub_guide_temp run forceload add 1237 -348
	data modify block 1237 27 -348 Command set value "/clone ~ ~ ~1 ~ ~ ~1 ~ ~1 ~4"
	execute if score #system fcub_guide_temp matches 1 run forceload remove 1237 -348
# 区块/76,-22
	execute store success score #system fcub_guide_temp run forceload add 1229 -348
	# 炼丹师/药引元素
		data modify block 1229 27 -348 Command set value "/clone ~ ~ ~1 ~ ~ ~1 ~ ~1 ~4"
	# NPC对话泡泡
		data modify block 1216 27 -349 Command set value "/clone ~ ~ ~-1 ~ ~ ~-1 ~ ~1 ~-4"
	execute if score #system fcub_guide_temp matches 1 run forceload remove 1229 -348
# 炼丹师/元素炼化 区块/77,-22
	execute store success score #system fcub_guide_temp run forceload add 1213 -348
	data modify block 1213 27 -348 Command set value "/clone ~ ~ ~1 ~ ~ ~1 ~ ~1 ~4"
	execute if score #system fcub_guide_temp matches 1 run forceload remove 1213 -348