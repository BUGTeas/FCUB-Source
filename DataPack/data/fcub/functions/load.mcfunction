# 满足此条件则提示兼容性：(当前版本 > 所需版本 || 最低兼容版本 > 所需版本)
execute unless score #system pcub_api_version matches 6.. run say [幻域无界数据包] 当前梦盘互通套件版本低于 v1.6.0，可能会出现兼容性错误。
execute unless score #system pcub_api_minVersion matches ..6 run say [幻域无界数据包] 本套件版本过低，与当前梦盘互通套件版本存在兼容性问题，请升级

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
scoreboard objectives add fcub_comp_update dummy

# 从记分板设置等级
scoreboard objectives add exp_level_from_score_temp dummy

# 武器变更检测
scoreboard objectives add fcub_last_weapon_rare dummy