tellraw @s {"translate":"pl.info.test_zhan.in"}
spawnpoint @s 2848 26 -185
scoreboard players set @s raceeffect 0
scoreboard players set @s feather_mainland -1
scoreboard players set @s test_effectlock 1
scoreboard players set @s in_test_check 1
effect clear @s
tag @s add zhan_test_tp_in
schedule function pld:test/zhan/tpin 5t