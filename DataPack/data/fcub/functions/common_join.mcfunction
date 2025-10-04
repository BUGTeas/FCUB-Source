#execute if score @s fcub_final_state matches 1 run function pld:system/online/if_in_dungeon/leave
#execute if score #system fcub_final_state matches 2 run kick @s[scores={fcub_final_state=3}] 您已参加过最终剧情，在本轮结束前将无法进入服务器。
#execute if score #system fcub_final_state matches 2 unless entity @s[scores={fcub_final_state=2..}] run kick @s 由于您错过了圣山之战，本轮真盘古您无法参加。
#欢迎提示
    tellraw @s [{"color":"#ffaa00","bold":false,"text":"幻域无界•盘灵古域互通 (梦回盘灵)  "},{"color":"gray","bold":false,"text":"官方群聊: 490989498"}]
    execute as @s[gamemode=survival] run gamemode adventure
    # 第一次进服欢迎提示
    execute unless score @s player_online matches 1.. run function fcub:welcome/check
#玩家补偿
    execute unless score @s fcub_compensation matches 1.. run scoreboard players set @s[tag=!finish_select] fcub_compensation 3
    execute unless score @s fcub_compensation matches 2.. run function fcub:compensation/join
#末影箱初始化
    execute unless data entity @s EnderItems[{Slot:0b}] unless data entity @s EnderItems[{Slot:9b}] run item replace entity @s enderchest.0 with minecraft:gray_stained_glass_pane{clickable:1,reset_self_id:1,HideFlags:63,display:{Name:'{"translate":"pl.chest_menu.nothing"}'}}