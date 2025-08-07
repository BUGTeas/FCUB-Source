##boss生成点 655 12 -1920
summon skeleton 655 12 -1920 {Team:"monster",Tags:["panling","undead","monster","draw_boss","draw","dlc","0","fk80"],CanPickUpLoot:false,ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],CustomNameVisible:1b,CustomName:'{"text":"背负罪孽之人","color": "gold","italic": false}',DeathLootTable:"ice:diaoluowu",Health:500.0f,Attributes:[ {Name:"generic.max_health",Base:1000d},{Name:"generic.follow_range",Base:30d},{Name:"generic.movement_speed",Base:0.2d},{Name:"generic.attack_damage",Base:20d},{Name:"generic.knockback_resistance",Base:1000d},{Name:"generic.armor",Base:30d},{Name:"generic.armor_toughness",Base:20d}],ArmorItems:[{id:"minecraft:diamond_boots",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:5s}]}},{id:"minecraft:diamond_leggings",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:5s}]}},{id:"minecraft:diamond_chestplate",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:5s}]}},{id:"minecraft:diamond_helmet",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:5s}]}}],HandItems:[{},{}]}
#半血特殊
scoreboard players set #dlc draw.bossskill.mainskill.type 1

#触发武器效果
execute if score #dlc draw.bossskill.mainskill.3.tag matches 1 run function draw:mainskill/3/01/start
execute if score #dlc draw.bossskill.mainskill.3.tag matches 2 run function draw:mainskill/3/02/start
execute if score #dlc draw.bossskill.mainskill.3.tag matches 3 run function draw:mainskill/3/03/start
execute if score #dlc draw.bossskill.mainskill.3.tag matches 4 run function draw:mainskill/3/04/start
execute if score #dlc draw.bossskill.mainskill.3.tag matches 5 run function draw:mainskill/3/11/start
execute if score #dlc draw.bossskill.mainskill.3.tag matches 6 run function draw:mainskill/3/12/start
execute if score #dlc draw.bossskill.mainskill.3.tag matches 7 run function draw:mainskill/3/13/start
execute if score #dlc draw.bossskill.mainskill.3.tag matches 8 run function draw:mainskill/3/14/start
#武器生成后会给周边玩家设置不应有的分数，将其清除以免影响所有玩家使用锻造台
execute positioned 655 12 -1920 run scoreboard players set @p dzsuccess 0