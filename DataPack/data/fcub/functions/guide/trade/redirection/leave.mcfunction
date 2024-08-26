scoreboard players reset @s fcub_guide_temp
execute store success score @s fcub_guide_temp if entity @s[nbt={Inventory:[{tag:{id:"fcub:guide_trade_target", core_index: 3}}]}] run function fcub:guide/trade/redirection/leave/pass
execute unless score @s fcub_guide_temp matches 1.. store success score @s fcub_guide_temp if entity @s[nbt={Inventory:[{tag:{id:"fcub:guide_trade_target", core_index: 1}}]}] run function fcub:guide/trade/redirection/leave/redirected
execute unless score @s fcub_guide_temp matches 1.. store success score @s fcub_guide_temp if entity @s[nbt={Inventory:[{tag:{id:"fcub:guide_trade_target"}}]}] run function fcub:guide/trade/redirection/leave/wrong
execute unless score @s fcub_guide_temp matches 1.. run function fcub:guide/trade/redirection/leave/failure