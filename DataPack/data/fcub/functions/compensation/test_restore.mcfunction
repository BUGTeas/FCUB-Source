#四圣兽恢复
    #神
        execute if entity @s[scores={race=0},advancements={pld:mission/shen/main/main9=true}] run scoreboard players set @s dragon 1
        execute if entity @s[scores={race=0},advancements={pld:mission/shen/main/main9=true}] run scoreboard players set @s bird 1
        execute if entity @s[scores={race=0},advancements={pld:mission/shen/main/main9=true}] run scoreboard players set @s tiger 1
        execute if entity @s[scores={race=0},advancements={pld:mission/shen/main/main9=true}] run scoreboard players set @s turtle 1
    #妖
        execute if entity @s[scores={race=1},advancements={pld:mission/yao/main/main10=true}] run scoreboard players set @s dragon 1
        execute if entity @s[scores={race=1},advancements={pld:mission/yao/main/main11=true}] run scoreboard players set @s bird 1
        execute if entity @s[scores={race=1},advancements={pld:mission/yao/main/main11=true}] run scoreboard players set @s tiger 1
        execute if entity @s[scores={race=1},advancements={pld:mission/yao/main/main11=true}] run scoreboard players set @s turtle 1
    #仙
        execute if entity @s[scores={race=2},advancements={pld:mission/xian/main/main8=true}] run scoreboard players set @s dragon 1
        execute if entity @s[scores={race=2},advancements={pld:mission/xian/main/main9=true}] run scoreboard players set @s bird 1
        execute if entity @s[scores={race=2},advancements={pld:mission/xian/main/main9=true}] run scoreboard players set @s tiger 1
        execute if entity @s[scores={race=2},advancements={pld:mission/xian/main/main9=true}] run scoreboard players set @s turtle 1
    #战
        execute if entity @s[scores={race=3},advancements={pld:mission/zhan/main/main8=true}] run scoreboard players set @s dragon 1
        execute if entity @s[scores={race=3},advancements={pld:mission/zhan/main/main10=true}] run scoreboard players set @s bird 1
        execute if entity @s[scores={race=3},advancements={pld:mission/zhan/main/main10=true}] run scoreboard players set @s tiger 1
        execute if entity @s[scores={race=3},advancements={pld:mission/zhan/main/main10=true}] run scoreboard players set @s turtle 1
    #人
        execute if entity @s[scores={race=4},advancements={pld:mission/ren/main/main8=true}] run scoreboard players set @s dragon 1
        execute if entity @s[scores={race=4},advancements={pld:mission/ren/main/main9=true}] run scoreboard players set @s bird 1
        execute if entity @s[scores={race=4},advancements={pld:mission/ren/main/main9=true}] run scoreboard players set @s tiger 1
        execute if entity @s[scores={race=4},advancements={pld:mission/ren/main/main9=true}] run scoreboard players set @s turtle 1
    #消息提示
	    execute if score @s race matches 1.. if score @s dragon matches 1 run tellraw @s {"text":"您的青龙祝福已经恢复!"}
	    execute if score @s race matches 1.. if score @s bird matches 1 if score @s tiger matches 1 if score @s turtle matches 1 run tellraw @s {"text":"您的另外三个圣兽祝福已经恢复!"}
	    execute if score @s race matches 0 if score @s dragon matches 1 if score @s bird matches 1 if score @s tiger matches 1 if score @s turtle matches 1 run tellraw @s {"text":"您的四圣兽祝福已经恢复!"}
#盘古
    scoreboard players set @s[advancements={pld:other/test_shen=true}] shen_test_all 1
    execute unless score @s test_bless matches 10.. if score @s shen_test_all matches 1 run scoreboard players set @s[nbt={Inventory:[{tag:{id:"panling:shen_test_bless"}}]}] test_bless 10
	execute if score @s shen_test_all matches 1 run tellraw @s {"text":"您的盘古试炼祝福已经恢复!"}
#女娲
    scoreboard players set @s[advancements={pld:other/test_ren=true}] ren_test_all 1
    execute unless score @s test_bless matches 10.. if score @s ren_test_all matches 1 run scoreboard players set @s[nbt={Inventory:[{tag:{id:"panling:ren_test_bless"}}]}] test_bless 14
	execute if score @s ren_test_all matches 1 run tellraw @s {"text":"您的女娲试炼祝福已经恢复!"}
#蚩尤
    scoreboard players set @s[advancements={pld:other/test_zhan=true}] zhan_test_all 1
    execute unless score @s test_bless matches 10.. if score @s zhan_test_all matches 1 run scoreboard players set @s[nbt={Inventory:[{tag:{id:"panling:zhan_test_bless"}}]}] test_bless 13
	execute if score @s zhan_test_all matches 1 run tellraw @s {"text":"您的蚩尤试炼祝福已经恢复!"}
#菜单书状态
    execute if score @s shen_test_all matches 1 run scoreboard players set @s check_race_test 1
    execute if score @s ren_test_all matches 1 run scoreboard players set @s check_race_test 1
    execute if score @s zhan_test_all matches 1 run scoreboard players set @s check_race_test 1
#更新菜单书
	scoreboard players set @s[scores={test_bless=10..}] temp 1
	execute if score @s temp matches 1 run function pld:system/menubook/update/main
#设置状态
    scoreboard players set @s fcub_comp_test_restore 1