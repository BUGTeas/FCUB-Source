scoreboard players reset @s fcub_guide_temp
execute store success score @s fcub_guide_temp if entity @s[nbt={Inventory:[{tag:{id:"fcub:guide_trade_target"}}]}] run function fcub:guide/trade/same_icon/leave/pass
execute unless score @s fcub_guide_temp matches 1.. run function fcub:guide/trade/same_icon/leave/failure