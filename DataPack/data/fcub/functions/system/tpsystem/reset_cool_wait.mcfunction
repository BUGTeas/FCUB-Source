# 再次触发
execute as @s[scores={using_tpstone=1..}] run function fcub:system/tpsystem/reset_cool
# 计时
scoreboard players remove @s fcub_tpstone_resetcool_timer 1
# 时间到停止计时
scoreboard players reset @s[scores={fcub_tpstone_resetcool_timer=0}] fcub_tpstone_resetcool_timer
# 冷却结束停止计时
scoreboard players reset @s[scores={tp_cool_tick=1}] fcub_tpstone_resetcool_timer