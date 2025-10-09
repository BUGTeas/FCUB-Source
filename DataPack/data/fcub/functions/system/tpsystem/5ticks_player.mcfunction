# 基本原理：如果不满足条件，则屏蔽下一刻的梦盘检测，即将触发值设为-1，使下一刻的触发不被梦盘检测到

# 将上一轮被忽略的触发补回 / 延迟触发
scoreboard players add @s[scores={fcub_using_tpstone=1}] using_tpstone 1
scoreboard players remove @s[scores={fcub_using_tpstone=1..}] fcub_using_tpstone 1

# 如果正处冷却，且副手没有重生石，则在指定时间内再次触发时，直接从背包扣除重生石刷新冷却
execute as @s[scores={fcub_tpstone_resetcool_timer=1..}] run function fcub:system/tpsystem/reset_cool_wait
# 当副手无重生石，触发结束后（避免长按导致误操作）开始计时
execute as @s[tag=fcub_tpstone_resetcool,scores={using_tpstone=0}] run function fcub:system/tpsystem/cooling
tag @s[scores={using_tpstone=1..}] add fcub_tpstone_resetcool

# 修复长按重生石浪费
scoreboard players set @s[scores={using_tpstone=1..,tp_cool_tick=1}] using_tpstone -1

# 修复非重华晶诡异菌钓竿触发刷新
execute as @s[scores={using_tpstone=1..}] unless entity @s[nbt={SelectedItem:{tag:{id:"panling:tp_stone"}}}] run scoreboard players set @s using_tpstone -1

# 如果在下一刻被触发，且本数据包加载在梦盘包之后，则触发值会先被梦盘检测并归0，导致此函数被绕过
# 所以如果本轮（每4刻一轮）没有触发，则默认屏蔽梦盘检测，而这也会导致下一刻的触发被忽略
scoreboard players set @s[scores={using_tpstone=0}] using_tpstone -1