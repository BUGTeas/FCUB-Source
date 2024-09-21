#间隔
schedule function announce:work 300s
scoreboard players add #system fcub_autoAnnounce_index 1
#1
	execute if score #system fcub_autoAnnounce_index matches 1 run tellraw @a[tag=player_bedrock,tag=finish_select,scores={feather_mainland=1}] \
		{"translate":"fcub.notice.bug"}
	execute if score #system fcub_autoAnnounce_index matches 1 run tellraw @a[tag=player_java,tag=finish_select,scores={feather_mainland=1}] \
		[{"text":"§a[Tips] §r请确保梦回盘灵及服务器专用资源包都已在本地添加，以免游戏出现异常。"}]
#2
	execute if score #system fcub_autoAnnounce_index matches 2 run tellraw @a[tag=finish_select,scores={feather_mainland=1}] \
		{"text":"§a[Tips] §r由于平衡性问题本服务器不提供战役玩法, 若您需要功勋点，可以做出贡献 (包括但不限于反馈 Bug、提出建议、举报挂狗), 一经核实奖励 400 点起步！"}
#3
	execute if score #system fcub_autoAnnounce_index matches 3 run tellraw @a[tag=finish_select,scores={feather_mainland=1}] \
		{"text":"§a[Tips] §r服务器现有的 DLC 内容 (均为最新版): 罪如歌、 便捷元素银行、 盘灵无界互通开服方案"}
#4
	execute if score #system fcub_autoAnnounce_index matches 4 run tellraw @a[tag=finish_select,scores={feather_mainland=1}] \
		{"text":"§a[Tips] §r本服务器带有副本保底, 同一副本每开启金宝箱满 15 次必出宝物, 每个副本最多保底 5 次。"}
#5
	execute if score #system fcub_autoAnnounce_index matches 5 run tellraw @a[tag=finish_select,scores={feather_mainland=1}] \
		{"text":"§a[Tips] §r与 NPC 交换任务书时, 需要确保书本已经阅读。"}
#6
	execute if score #system fcub_autoAnnounce_index matches 6 run tellraw @a[tag=player_bedrock,tag=finish_select,scores={feather_mainland=1}] \
		{"text":"§a[Tips] §r成就进度可以在菜单书中查看。"}
	execute if score #system fcub_autoAnnounce_index matches 6 run tellraw @a[tag=player_java,tag=!linked_account,tag=finish_select,scores={feather_mainland=1}] \
		{"text":"§a[Tips] §r如果你希望使基岩版以与当前玩家数据同步，可使用 /linkaccount 命令进行绑定操作。"}
#7
	execute if score #system fcub_autoAnnounce_index matches 7 run tellraw @a[tag=player_bedrock,tag=finish_select,scores={feather_mainland=1}] \
		{"text":"§a[Tips] §r相较于优先地址, 备用进服地址稳定性较差, 建议将群公告中的所有地址都添加上以防万一, 并在每次进服前先尝试优先地址。"}
	execute if score #system fcub_autoAnnounce_index matches 7 run tellraw @a[tag=player_java,tag=finish_select,scores={feather_mainland=1}] \
		{"text":"§a[Tips] §r出现 Bug 请先排查您安装的模组，本服务器不确保与所有模组的兼容性。"}
#8
	execute if score #system fcub_autoAnnounce_index matches 8 run tellraw @a[tag=finish_select,scores={feather_mainland=1}] \
		{"text":"§a[Tips] §r钱庄的红箱中拥有可扩展的储物空间, 也可以在信箱中收取定时补给及落下的副本奖励, 还能查看各属性值等等。"}
#9
	execute if score #system fcub_autoAnnounce_index matches 9 run tellraw @a[tag=player_bedrock,tag=finish_select,scores={feather_mainland=1}] \
		{"text":"§a[Tips] §r如果出现连接正常但个别区块不加载的情况， 可以使用菜单书中的“强制重新加载区块”功能解决。"}
#10
	execute if score #system fcub_autoAnnounce_index matches 10 run tellraw @a[tag=finish_select,scores={feather_mainland=1,fcub_compensation=2}] \
		{"text":"§a[Tips] §r您的玩家数据曾遭丢失, 如遇 Bug 请及时向腐竹 (BugTea) 寻求帮助, 曾经获得功勋值奖励的玩家请主动联系以补回。"}
execute if score #system fcub_autoAnnounce_index matches 10 run scoreboard players reset #system fcub_autoAnnounce_index