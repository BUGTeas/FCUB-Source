execute unless score #system pcub_api_version matches 1 run say [fcub] 当前盘灵无界基础必要组件版本不匹配，可能会出现兼容性错误。

#昆仑bgm时间倒数
scoreboard players set #5ticks_bgm_shen_all time_trigger 350
#真盘检测
scoreboard objectives add fcub_final_state dummy
#真盘预检测
scoreboard objectives add fcub_end_check dummy

#高频传送稳定性测试
scoreboard objectives add fcub_teleport_test dummy

#教程是否通过
scoreboard objectives add fcub_guide_pass dummy
#教程临时记分
scoreboard objectives add fcub_guide_temp dummy

#玩家死亡触发
scoreboard objectives add fcub_player_dead deathCount

#自动公告
#索引值
scoreboard objectives add fcub_autoAnnounce_index dummy
#启动
function announce:work

#玩家补偿
scoreboard objectives add fcub_compensation dummy
scoreboard objectives add fcub_comp_backup_level dummy
scoreboard objectives add fcub_comp_race2 dummy