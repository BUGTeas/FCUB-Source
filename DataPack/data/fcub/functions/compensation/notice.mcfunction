tellraw @s [{"text":"您的背包及末影箱已成功恢复! 等级已恢复并增加 10%, 并得到了 "},{"score":{"name": "@s","objective": "achievement_point"}},{"text":" 点资历值补偿, 补偿元素银行中的金元素 "},{"score":{"name": "@s","objective": "element_number_metal"}},{"text":" 个, 木元素 "},{"score":{"name": "@s","objective": "element_number_wood"}},{"text":" 个, 水元素 "},{"score":{"name": "@s","objective": "element_number_water"}},{"text":" 个, 火元素 "},{"score":{"name": "@s","objective": "element_number_fire"}},{"text":" 个, 土元素 "},{"score":{"name": "@s","objective": "element_number_fire"}},{"text":" 个, 神族好感补偿至 "},{"score":{"name": "@s","objective": "racefriend0"}},{"text":", 妖族好感补偿至 "},{"score":{"name": "@s","objective": "racefriend1"}},{"text":", 仙族好感补偿至 "},{"score":{"name": "@s","objective": "racefriend2"}},{"text":", 战神族好感补偿至 "},{"score":{"name": "@s","objective": "racefriend3"}},{"text":", 人族好感补偿至 "},{"score":{"name": "@s","objective": "racefriend4"}},{"text":", 当前各副本开箱次数均设为 14, 各副本一次开箱均可触发保底。"}]
#重华镜解锁
	execute if entity @s[advancements={pld:other/tp_stone_all_unlock=true}] run tellraw @s {"text":"您的重华镜记录已经恢复!"}
#盘古
	execute if score @s shen_test_all matches 1 run tellraw @s {"text":"您的盘古试炼祝福已经恢复!"}
#女娲
	execute if score @s ren_test_all matches 1 run tellraw @s {"text":"您的女娲试炼祝福已经恢复!"}
#蚩尤
	execute if score @s zhan_test_all matches 1 run tellraw @s {"text":"您的蚩尤试炼祝福已经恢复!"}
tellraw @s [{"text":"您当前的功勋值为 "},{"score":{"name": "@s","objective": "honor"}},{"text":" 点 §b(贡献者请主动联系腐竹BugTea加回之前的奖励)"}]