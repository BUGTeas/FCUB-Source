tellraw @a[x=-184,y=98,z=-821,distance=..40] {"text":""}


execute unless entity @e[x=-184,y=98,z=-821,distance=..40,type=player,scores={race=0,finish_shen_hide=1}] unless entity @e[type=player,scores={race=0,finish_shen_hide=1}] run tellraw @a[x=-184,y=98,z=-821,distance=..40] {"text":"§7§o缺少一位背负着真相的神族玩家"}
execute unless entity @e[x=-184,y=98,z=-821,distance=..40,type=player,scores={race=0,finish_shen_hide=1}] as @e[type=player,scores={race=0,finish_shen_hide=1}] run tellraw @s [{"text":"<§a系统消息§r> §6§l您想体验最终剧情, 揭晓圣山战场幕后的一切吗?§r 我们需要一位背负着真相的§b§l神族玩家§r, 若你有意参与, 请火速前往§a§l圣山山顶§r, 大家正期待您的到来～"}]


execute unless entity @e[x=-184,y=98,z=-821,distance=..40,type=player,scores={race=1,finish_yao_hide=1}] unless entity @e[type=player,scores={race=1,finish_yao_hide=1}] run tellraw @a[x=-184,y=98,z=-821,distance=..40] {"text":"§7§o缺少一位背负着真相的妖族玩家"}
execute unless entity @e[x=-184,y=98,z=-821,distance=..40,type=player,scores={race=1,finish_yao_hide=1}] as @e[type=player,scores={race=1,finish_yao_hide=1}] run tellraw @s [{"text":"<§a系统消息§r> §6§l您想体验最终剧情, 揭晓圣山战场幕后的一切吗?§r 我们需要一位背负着真相的§b§l妖族玩家§r, 若你有意参与, 请火速前往§a§l圣山山顶§r, 大家正期待您的到来～"}]


execute unless entity @e[x=-184,y=98,z=-821,distance=..40,type=player,scores={race=2,finish_xian_hide=1}] unless entity @e[type=player,scores={race=2,finish_xian_hide=1}] run tellraw @a[x=-184,y=98,z=-821,distance=..40] {"text":"§7§o缺少一位背负着真相的仙族玩家"}
execute unless entity @e[x=-184,y=98,z=-821,distance=..40,type=player,scores={race=2,finish_xian_hide=1}] as @e[type=player,scores={race=2,finish_xian_hide=1}] run tellraw @s [{"text":"<§a系统消息§r> §6§l您想体验最终剧情, 揭晓圣山战场幕后的一切吗?§r 我们需要一位背负着真相的§b§l仙族玩家§r, 若你有意参与, 请火速前往§a§l圣山山顶§r, 大家正期待您的到来～"}]


execute unless entity @e[x=-184,y=98,z=-821,distance=..40,type=player,scores={race=3,finish_zhan_hide=1}] unless entity @e[type=player,scores={race=3,finish_zhan_hide=1}] run tellraw @a[x=-184,y=98,z=-821,distance=..40] {"text":"§7§o缺少一位背负着真相的战神族玩家"}
execute unless entity @e[x=-184,y=98,z=-821,distance=..40,type=player,scores={race=3,finish_zhan_hide=1}] as @e[type=player,scores={race=3,finish_zhan_hide=1}] run tellraw @s [{"text":"<§a系统消息§r> §6§l您想体验最终剧情, 揭晓圣山战场幕后的一切吗?§r 我们需要一位背负着真相的§b§l战神族玩家§r, 若你有意参与, 请火速前往§a§l圣山山顶§r, 大家正期待您的到来～"}]


execute unless entity @e[x=-184,y=98,z=-821,distance=..40,type=player,scores={race=4,finish_ren_hide=1}] unless entity @e[type=player,scores={race=4,finish_ren_hide=1}] run tellraw @a[x=-184,y=98,z=-821,distance=..40] {"text":"§7§o缺少一位背负着真相的人族玩家"}
execute unless entity @e[x=-184,y=98,z=-821,distance=..40,type=player,scores={race=4,finish_ren_hide=1}] as @e[type=player,scores={race=4,finish_ren_hide=1}] run tellraw @s [{"text":"<§a系统消息§r> §6§l您想体验最终剧情, 揭晓圣山战场幕后的一切吗?§r 我们需要一位背负着真相的§b§l人族玩家§r, 若你有意参与, 请火速前往§a§l圣山山顶§r, 大家正期待您的到来～"}]


scoreboard players reset #system fcub_end_check
execute if entity @e[x=-184,y=98,z=-821,distance=..40,type=player,scores={race=0,finish_shen_hide=1}] if entity @e[x=-184,y=98,z=-821,distance=..40,type=player,scores={race=1,finish_yao_hide=1}] if entity @e[x=-184,y=98,z=-821,distance=..40,type=player,scores={race=2,finish_xian_hide=1}] if entity @e[x=-184,y=98,z=-821,distance=..40,type=player,scores={race=3,finish_zhan_hide=1}] if entity @e[x=-184,y=98,z=-821,distance=..40,type=player,scores={race=4,finish_ren_hide=1}] run scoreboard players set #system fcub_end_check 1