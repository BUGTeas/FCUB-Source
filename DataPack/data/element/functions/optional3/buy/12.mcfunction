tag @s add ifslot
#判断银行存款
execute unless entity @s[scores={element_money=40..}] run tag @s remove ifslot
execute unless entity @s[scores={element_money=40..}] run tellraw @s {"text":"您在掌上钱庄的存款不足","color":"red"}
#判断背包有无空位
execute if entity @s[tag=ifslot] run give @s glass{id:"panling:placeholder_c",display:{Name:'{"text":" "}'}} 1
execute if entity @s[tag=ifslot] unless entity @s[nbt={Inventory:[{tag:{id:"panling:placeholder_c"}}]}] run tellraw @s {"text":"您的背包空间不足,请先清理背包","color":"red"}
execute if entity @s[tag=ifslot] unless entity @s[nbt={Inventory:[{tag:{id:"panling:placeholder_c"}}]}] run tag @s remove ifslot
#购买
execute if entity @s[tag=ifslot] run scoreboard players remove @s element_money 40
execute if entity @s[tag=ifslot] run clear @s glass{id:"panling:placeholder_c"}
execute if entity @s[tag=ifslot] at @s run summon item ~ ~1 ~ {Item:{id:"minecraft:potion",Count:15b,tag:{id: "panling:td1", CustomPotionColor: 16262179, custom_potion_effects: [{id: "minecraft:instant_health", amplifier: 1b}], CustomModelData: 80, display: {Name: '{"translate":"pl.item.name.td1"}', Lore: ['[{"text":"§9"},{"translate":"pcub.potion.effect.instant_health"},{"translate":"pcub.potion.potency.1"}]']}}}}
execute if entity @s[tag=ifslot] run tellraw @s {"text":"已购买一般疗伤丹15剂","color":"green"}
kill @e[type=item,nbt={Item:{id:"minecraft:glass",tag:{id:"panling:placeholder_c"}}}]
tag @s remove ifslot