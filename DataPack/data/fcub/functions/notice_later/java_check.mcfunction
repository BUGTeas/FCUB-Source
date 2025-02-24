# 仿罪如歌的特别玩家欢迎，并与资源包版本提示共存
tag @s[name=Creazeny] add singer
tag @s[name=InkPainting] add singer
tag @s[name=Soul__23] add singer
execute if entity @s[tag=!singer] run function fcub:notice_later/java {a:1, b:2, c:2, title:'""', subtitle:'""'}
execute if entity @s[tag=!singer] run return 0
execute if score #system tick_operation matches 0 run function fcub:notice_later/java {a:1, b:2, c:2, title:'{"text": "罪如歌欢迎你","color": "gold"}', subtitle:'{"selector": "@s"}'}
execute if score #system tick_operation matches 1 run function fcub:notice_later/java {a:1, b:2, c:2, title:'{"text": "感谢你对罪如歌的支持","color": "gold"}', subtitle:'{"selector": "@s"}'}
execute if score #system tick_operation matches 2 run function fcub:notice_later/java {a:1, b:2, c:2, title:'{"text": "祝您金箱子把把出红","color": "gold"}', subtitle:'{"selector": "@s"}'}
execute if score #system tick_operation matches 3 run function fcub:notice_later/java {a:1, b:2, c:2, title:'{"text": "欢迎回归","color": "gold"}', subtitle:'{"selector": "@s"}'}
tag @s remove singer