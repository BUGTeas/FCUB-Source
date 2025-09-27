#乾坤袋使用
execute if score @s qiankundai matches 1 as @s[nbt={Inventory:[{tag:{id:"dlc:qiankun_dai"}}]}] at @s run function xsj:qiankun/main

execute if score @s qiankundai_main matches 1 unless entity @s[nbt={Inventory:[{tag:{id:"dlc:qiankun_dai"}}]}] run scoreboard players set @s qiankundai_main 0

execute unless score @s instance3_8f matches 0..1 run scoreboard players set @s instance3_8f 0

execute if score @s job matches 2 if score #system tick_count matches 20 run function xsj:system/zf/tick
execute if score #system tick_count matches 20 run function xsj:qiankun/auto_cun/1s


execute if score @s xsj_right_click_check matches 1.. if entity @s[nbt={SelectedItem:{tag:{fab_id:"fab_main",}}}] run function xsj:system/fab/check

execute if score @s xsj_right_click_check matches 1.. run scoreboard players set @s xsj_right_click_check 0
execute if score @s xsj_sneak_check matches 1.. run scoreboard players set @s xsj_sneak_check 0

execute if score @s fab_tick1_1 matches 0.. run scoreboard players remove @s fab_tick1_1 1
execute if score @s fab_tick2_1 matches 0.. run scoreboard players remove @s fab_tick2_1 1
execute if score @s fab_tick2_2 matches 0.. run scoreboard players remove @s fab_tick2_2 1
execute if score @s fab_tick1_1 matches 0 run function xsj:system/tick/fabtick/tick1_2
execute if score @s fab_tick2_1 matches 0 run function xsj:system/tick/fabtick/tick2_1
execute if score @s fab_tick2_2 matches 0 run function xsj:system/tick/fabtick/tick2_2
#schedule function xsj:system/tick 1s