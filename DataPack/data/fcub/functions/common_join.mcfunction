#execute if score @s fcub_final_state matches 1 run function pld:system/online/if_in_dungeon/leave
#execute if score #system fcub_final_state matches 2 run kick @s[scores={fcub_final_state=3}] 您已参加过最终剧情，在本轮结束前将无法进入服务器。
#execute if score #system fcub_final_state matches 2 unless entity @s[scores={fcub_final_state=2..}] run kick @s 由于您错过了圣山之战，本轮真盘古您无法参加。
#欢迎提示
    tellraw @s [{"color":"#ffaa00","bold":false,"text":"幻域无界•盘灵古域互通 (梦回盘灵)  "},{"color":"gray","bold":false,"text":"官方群聊: 490989498"}]
    execute as @s[gamemode=survival] run gamemode adventure
#玩家补偿
    # execute unless score @s fcub_compensation matches 1.. run scoreboard players set @s[tag=!finish_select] fcub_compensation 3
    # execute unless score @s fcub_compensation matches 2.. run function fcub:compensation/join
    #末影箱解锁
        # execute if score @s fcub_compensation matches 2 unless score @s fcub_comp_chest_unlock matches 1 run function fcub:compensation/chest_unlock
    #判定菜单书更新
	    # scoreboard players reset @s temp
    #试炼祝福恢复
        # execute if score @s fcub_compensation matches 2 unless score @s fcub_comp_test_restore matches 1 run function fcub:compensation/test_restore
    #恢复箭袋
        # execute if score @s fcub_compensation matches 2 unless score @s fcub_comp_update matches 1.. run function fcub:compensation/arrowpack_restore
    #恢复羽毛
        # execute if score @s fcub_compensation matches 2 unless score @s fcub_comp_update matches 2.. run function fcub:compensation/feather_restore
    #菜单书更新
        # execute if score @s temp matches 1 run function pld:system/menubook/update/main
#末影箱初始化
    execute unless data entity @s EnderItems[{Slot:0b}] unless data entity @s EnderItems[{Slot:9b}] run item replace entity @s enderchest.0 with minecraft:gray_stained_glass_pane{clickable:1,reset_self_id:1,HideFlags:63,display:{Name:'{"translate":"pl.chest_menu.nothing"}'}}