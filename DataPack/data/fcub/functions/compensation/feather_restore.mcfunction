#箭袋恢复
    execute as @s[scores={race=0}] if entity @s[advancements={pld:system/mission_guide/shen/main/feather=true}] run scoreboard players set @s check_feather 1
    execute as @s[scores={race=1}] if entity @s[advancements={pld:system/mission_guide/yao/main/feather=true}] run scoreboard players set @s check_feather 1
    execute as @s[scores={race=2}] if entity @s[advancements={pld:system/mission_guide/xian/main/feather=true}] run scoreboard players set @s check_feather 1
    execute as @s[scores={race=3}] if entity @s[advancements={pld:system/mission_guide/zhan/main/feather=true}] run scoreboard players set @s check_feather 1
    execute as @s[scores={race=4}] if entity @s[advancements={pld:system/mission_guide/ren/main/feather=true}] run scoreboard players set @s check_feather 1
    execute if score @s check_feather matches 1 run tellraw @s {"text":"您的新芽之羽补领功能已经恢复!"}
#更新菜单书
	scoreboard players set @s[scores={check_feather=1}] temp 1
#设置状态
    scoreboard players set @s fcub_comp_update 2