execute as @a[tag=player_bedrock,tag=fcub_notice_later] run function fcub:welcome/later/bedrock
execute as @a[tag=player_java,tag=fcub_notice_later] run function fcub:welcome/later/java

tag @a remove fcub_notice_later