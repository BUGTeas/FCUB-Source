execute unless score @s honor matches 400.. run tellraw @s {"translate":"pl.info.not_enough_honor"}
execute if score @s honor matches 400.. run function pld:system/test_inv/invmain
execute if score @s honor matches 400.. if score @s inv_remain matches 0 run tellraw @s {"translate": "pl.info.not_enough_inv_honor"}
execute if score @s honor matches 400.. if score @s inv_remain matches 1.. run tag @s add buy_success
give @s[tag=buy_success] minecraft:black_dye{id:"panling:housekey_sky",display:{Name:'{"text":"§b城东乾府的钥匙"}',Lore:['{"translate":"pl.item.lore.housekeya"}','{"translate":"pl.item.lore.housekeyb"}']}} 2
scoreboard players remove @s[tag=buy_success] honor 400
tellraw @s[tag=buy_success] [{"translate":"pl.info.enough_honor1"},{"score":{"name": "@p","objective": "honor"},"color":"gold"},{"translate":"pl.info.enough_honor2"}]

tag @s remove buy_success
