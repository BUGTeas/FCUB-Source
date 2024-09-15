scoreboard players enable @a element_menu_trigger3

execute as @a[scores={feather_mainland=-1,element_menu_trigger3=2..}] unless score @s element_menu_trigger3 matches 13..18 run tellraw @s {"text":"无法在大陆之外使用此功能。","color":"red"}

execute as @a[scores={feather_mainland=-1,element_menu_trigger3=1}] run tellraw @s {"text":"注意: 仅本服务器支持在大陆外查看钱庄存款。","color":"gold"}

execute as @a[scores={element_menu_trigger3=1}] run function element:optional3/score

execute as @a[scores={feather_mainland=1,element_menu_trigger3=2}] run function element:optional3/tq_store
execute as @a[scores={feather_mainland=1,element_menu_trigger3=3}] run function element:optional3/tq_get_5
execute as @a[scores={feather_mainland=1,element_menu_trigger3=4}] run function element:optional3/tq_get_64

execute as @a[scores={feather_mainland=1,element_menu_trigger3=5}] run function element:optional3/yb_store
execute as @a[scores={feather_mainland=1,element_menu_trigger3=6}] run function element:optional3/yb_get_1
execute as @a[scores={feather_mainland=1,element_menu_trigger3=7}] run function element:optional3/yb_get_10

execute as @a[scores={feather_mainland=1,element_menu_trigger3=8}] run function element:optional3/yp_store
execute as @a[scores={feather_mainland=1,element_menu_trigger3=9}] run function element:optional3/yp_get_1
execute as @a[scores={feather_mainland=1,element_menu_trigger3=10}] run function element:optional3/yp_get_10

execute as @a[scores={feather_mainland=1,element_menu_trigger3=11}] run function element:optional3/quicksell
execute as @a[scores={feather_mainland=1,element_menu_trigger3=12}] run function element:optional3/quickarrow
execute as @a[scores={feather_mainland=1,element_menu_trigger3=40}] run function element:optional3/quickkill

##商店部分

execute as @a[scores={feather_mainland=-1,element_menu_trigger3=13..18}] run tellraw @s {"text":"注意: 仅本服务器支持在大陆外购买钥匙。","color":"gold"}

#1
#副本可用
execute as @a[scores={element_menu_trigger3=13}] run function element:optional3/buy/1
execute as @a[scores={element_menu_trigger3=14}] run function element:optional3/buy/2

#副本可用
execute as @a[scores={element_menu_trigger3=15}] run function element:optional3/buy/3
execute as @a[scores={element_menu_trigger3=16}] run function element:optional3/buy/4

#副本可用
execute as @a[scores={element_menu_trigger3=17}] run function element:optional3/buy/5
execute as @a[scores={element_menu_trigger3=18}] run function element:optional3/buy/6

execute as @a[scores={feather_mainland=1,element_menu_trigger3=19}] run function element:optional3/buy/7
execute as @a[scores={feather_mainland=1,element_menu_trigger3=20}] run function element:optional3/buy/8

execute as @a[scores={feather_mainland=1,element_menu_trigger3=21}] run function element:optional3/buy/9
execute as @a[scores={feather_mainland=1,element_menu_trigger3=22}] run function element:optional3/buy/10

execute as @a[scores={feather_mainland=1,element_menu_trigger3=23}] run function element:optional3/buy/11
execute as @a[scores={feather_mainland=1,element_menu_trigger3=24}] run function element:optional3/buy/12

#2
execute as @a[scores={feather_mainland=1,element_menu_trigger3=25}] run function element:optional3/buy2/1
execute as @a[scores={feather_mainland=1,element_menu_trigger3=26}] run function element:optional3/buy2/2

execute as @a[scores={feather_mainland=1,element_menu_trigger3=27}] run function element:optional3/buy2/3
execute as @a[scores={feather_mainland=1,element_menu_trigger3=28}] run function element:optional3/buy2/4

execute as @a[scores={feather_mainland=1,element_menu_trigger3=29}] run function element:optional3/buy2/5
execute as @a[scores={feather_mainland=1,element_menu_trigger3=30}] run function element:optional3/buy2/6

execute as @a[scores={feather_mainland=1,element_menu_trigger3=31}] run function element:optional3/buy2/7
execute as @a[scores={feather_mainland=1,element_menu_trigger3=32}] run function element:optional3/buy2/8

execute as @a[scores={feather_mainland=1,element_menu_trigger3=33}] run function element:optional3/buy2/9
execute as @a[scores={feather_mainland=1,element_menu_trigger3=34}] run function element:optional3/buy2/10

execute as @a[scores={feather_mainland=1,element_menu_trigger3=35}] run function element:optional3/buy2/11
execute as @a[scores={feather_mainland=1,element_menu_trigger3=36}] run function element:optional3/buy2/12

execute as @a[scores={feather_mainland=1,element_menu_trigger3=37}] run function element:optional3/buy2/13
execute as @a[scores={feather_mainland=1,element_menu_trigger3=38}] run function element:optional3/buy2/14

scoreboard players reset @a[scores={element_menu_trigger3=1..}] element_menu_trigger3