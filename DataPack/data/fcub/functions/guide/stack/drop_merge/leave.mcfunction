function fcub:guide/stack/drop_merge/clear
execute if entity @s[tag=is_selecting] run function fcub:guide/stack/drop_merge/leave/is_selecting
execute unless entity @s[tag=is_selecting] run function fcub:guide/stack/drop_merge/leave/finish_select