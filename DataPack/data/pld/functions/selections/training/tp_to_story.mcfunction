execute unless entity @s[tag=is_selecting] run return 0

execute if entity @s[tag=player_bedrock] run function fcub:guide/into/is_selecting
execute if entity @s[tag=player_java] run function fcub:guide/tp_to_story