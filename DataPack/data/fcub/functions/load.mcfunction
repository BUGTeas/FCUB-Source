execute unless score #system pcub_api_version matches 1 run say [fcub] 当前盘灵无界基础必要组件版本不匹配，可能会出现兼容性错误。

#强制玩家进服游戏模式
scoreboard objectives add fcub_gamemode dummy
#隐藏进服提示
scoreboard objectives add fcub_hidden dummy

#禁用玩家碰撞
team modify normal collisionRule pushOwnTeam
team modify attack collisionRule pushOwnTeam
team modify defence collisionRule pushOwnTeam
#昆仑bgm时间倒数
scoreboard players set #5ticks_bgm_shen_all time_trigger 350
#真盘检测
scoreboard objectives add fcub_final_state dummy
#真盘预检测
scoreboard objectives add fcub_end_check dummy

#高频传送稳定性测试
scoreboard objectives add fcub_teleport_test dummy