tellraw @s {"translate":"pl.info.test_ren.in"}
spawnpoint @s 1662 26 -230
scoreboard players set @s raceeffect 0
scoreboard players set @s feather_mainland -1
scoreboard players set @s test_effectlock 1
scoreboard players set @s in_test_check 1
effect clear @s
tag @s add ren_test_tp_in
schedule function pld:test/ren/tpin 5t

