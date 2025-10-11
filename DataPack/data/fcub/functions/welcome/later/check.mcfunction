tellraw @a[tag=fcub_notice_later] [{"text": "[注意] ","color": "yellow","bold": true},{"text": "游玩测试周目即表示您已接受其仍未完善的游戏体验、较短的周目时长以及可能未到位的优化。 本次测试涉及内容调教, 故默认不提供物资。 如有个别物资需求, 请向群内服主或管理员提出。","color": "white","bold": false}]
execute as @a[tag=player_bedrock,tag=fcub_notice_later] run function fcub:welcome/later/bedrock
execute as @a[tag=player_java,tag=fcub_notice_later] run function fcub:welcome/later/java

tag @a remove fcub_notice_later