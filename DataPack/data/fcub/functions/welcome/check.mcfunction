execute as @s[tag=player_bedrock] run function fcub:welcome/bedrock
execute as @s[tag=player_java] run function fcub:welcome/java

#延迟5秒后弹出提示
tag @s add fcub_notice_later
schedule function fcub:welcome/later/check 100