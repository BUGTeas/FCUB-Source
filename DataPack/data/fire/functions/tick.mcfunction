##主tick函数 每tick执行一次

#刷怪笼召唤falling_book判定并召唤特定怪物
execute as @e[type=falling_block] unless entity @s[tag=!fireblaze,tag=!firehusk,tag=!waterdrowned,tag=!waterguardian] run function fire:waterfire/ex0/pos




#execute as @e[type=item,nbt={Item:{id:"minecraft:blaze_rod",tag:{id:"fire:fire"}}}] run data modify entity @s Item.tag.Invulnerable set value 1
schedule function fire:tick 1t