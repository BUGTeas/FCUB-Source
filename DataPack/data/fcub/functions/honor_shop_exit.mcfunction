execute store success score #system fcub_guide_temp run forceload add 1352 542
setblock 1352 35 542 minecraft:bedrock
setblock 1352 35 542 minecraft:command_block{Command:"/tp @e[type=minecraft:villager,distance=..4] ~ ~-1000 ~",auto:0b,conditionMet:1b,powered:0b}
execute if score #system fcub_guide_temp matches 1 run forceload remove 1352 542