tp @e[tag=monster,tag=sword] ~ ~-1000 ~
kill @e[tag=monster,tag=sword]
summon wither 558 11 -2030 {Team:"monster",Tags:["panling","undead","monster","sword","sword_boss","dlc","2"],NoAI:1,CanPickUpLoot:false,ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],CustomNameVisible:1b,CustomName:'{"text":"以杀悟道之人","color": "gold","italic": false}',DeathLootTable:"ice:diaoluowu",Health:1000.0f,Attributes:[ {Name:"generic.max_health",Base:1000d}, {Name:"generic.follow_range",Base:30d},{Name:"generic.movement_speed",Base:0d},{Name:"generic.flying_speed",Base:0d},{Name:"generic.armor",Base:30d},{Name:"generic.armor_toughness",Base:20d},{Name:"generic.attack_knockback",Base:9999d}]}
tellraw @a[scores={dlc_ins=4}] [{"text":"以杀悟道之人使用道法吟唱技能,将以特殊手段为主","color": "aqua"}]
scoreboard players set #dlc sword_on 1
scoreboard players set #dlc sword.skillcool.1 20
scoreboard players set #dlc sword.skillcool.2 40
scoreboard players set #dlc sword.skillcool.3 60