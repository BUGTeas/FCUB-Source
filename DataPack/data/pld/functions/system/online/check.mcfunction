function pld:thanks/check
#告知游戏版本
execute if score #updating int matches 1 run tellraw @s {"translate":"pl.info.updating"}

#降低玩家的100%攻击力
attribute @s generic.attack_damage modifier add 101-0-0-0-0 "近战伤害屏蔽" -0.99999 multiply

#检查玩家是否在大陆内
#不在大陆内视为副本中途退出，移动至奈何桥，重置重生点 inpvp不等于1 in_final_battle不等于1 in_test_check不等于1 feather_mainland=-1
execute unless score @s inpvp matches 1 unless score @s in_final_battle matches 1 unless score @s in_test_check matches 1 if score @s feather_mainland matches -1 if entity @s[tag=finish_select] run function pld:system/online/if_in_dungeon/leave





#更新系统发送的邮件
function pld:system/chest_menu/screen/3_mails/get_mails/main











#重置登录记分板
scoreboard players reset @s player_online