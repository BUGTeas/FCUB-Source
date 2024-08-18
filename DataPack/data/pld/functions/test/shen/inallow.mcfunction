tellraw @s {"translate":"pl.info.test_shen.in"}
spawnpoint @s 2851 26 334
scoreboard players set @s raceeffect 0
scoreboard players set @s feather_mainland -1
scoreboard players set @s test_effectlock 1
scoreboard players reset @s in_test_check
effect clear @s
tag @s add shen_test_tp_in
schedule function pld:test/shen/tpin 5t