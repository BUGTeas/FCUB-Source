# 进服提示附加
# 客户端不正确、资源包未添加或版本不匹配，会弹出对应的文字提示
# 文本解析顺序：Java正常登录 > Java更新资源包 > 基岩登录异常 > Java语言异常 > Java未添加资源包

# 仿罪如歌的特别玩家欢迎，并与资源包版本提示共存
tag @s[name=Creazeny] add fcub_sinsSinger
tag @s[name=InkPainting] add fcub_sinsSinger
tag @s[name=Soul__23] add fcub_sinsSinger
tag @s[name=xFsaily] add fcub_sinsSinger
tag @s[name=wcqqi] add fcub_sinsSinger
tag @s[name=inkd_MoShang] add fcub_sinsSinger
tag @s[name=yiceng] add fcub_sinsSinger

execute if entity @s[tag=!fcub_sinsSinger] run title @s subtitle {"translate": "fcub.resCheck.v2.1.0.java.subtitle", "color": "green", "with": ["",{"translate": "fcub.resUpdate.java.subtitle", "color": "green", "with": ["v2.1.0", {"translate": "fcub.joinError.bedrock.subtitle", "color": "yellow", "with": [{"translate": "fcub.langRequest.java.subtitle", "fallback": "可在游玩指南/群文件中找到", "color": "yellow"}], "fallback": "%s"}], "fallback": "%2$s"}], "fallback": "%2$s"}

execute if entity @s[tag=!fcub_sinsSinger] run title @s title {"translate": "fcub.resCheck.v2.1.0.java.title", "color": "green", "with": ["",{"translate": "fcub.resUpdate.java.title", "color": "aqua", "with": ["v2.1.0", {"translate": "fcub.joinError.bedrock.title", "color": "red", "with": [{"translate": "fcub.langRequest.java.title", "fallback": "请添加最新版专用资源包", "color": "red"}], "fallback": "%s"}], "fallback": "%2$s"}], "fallback": "%2$s"}

execute if entity @s[tag=!fcub_sinsSinger] run return 0
tag @s remove fcub_sinsSinger

title @s subtitle {"translate": "fcub.resCheck.v2.1.0.java.subtitle", "color": "green", "with": [{"selector": "@s"},{"translate": "fcub.resUpdate.java.subtitle", "color": "green", "with": ["v2.1.0", {"translate": "fcub.joinError.bedrock.subtitle", "color": "yellow", "with": [{"translate": "fcub.langRequest.java.subtitle", "fallback": "可在游玩指南/群文件中找到", "color": "yellow"}], "fallback": "%s"}], "fallback": "%2$s"}], "fallback": "%2$s"}

# 随机标题

execute if score #system tick_operation matches 0 run execute if score #system tick_operation matches 0 run title @s title {"translate": "fcub.resCheck.v2.1.0.java.title", "color": "green", "with": [{"text": "罪如歌欢迎你","color": "gold"},{"translate": "fcub.resUpdate.java.title", "color": "aqua", "with": ["v2.1.0", {"translate": "fcub.joinError.bedrock.title", "color": "red", "with": [{"translate": "fcub.langRequest.java.title", "fallback": "请添加最新版专用资源包", "color": "red"}], "fallback": "%s"}], "fallback": "%2$s"}], "fallback": "%2$s"}

execute if score #system tick_operation matches 1 run execute if score #system tick_operation matches 0 run title @s title {"translate": "fcub.resCheck.v2.1.0.java.title", "color": "green", "with": [{"text": "感谢你对罪如歌的支持","color": "gold"},{"translate": "fcub.resUpdate.java.title", "color": "aqua", "with": ["v2.1.0", {"translate": "fcub.joinError.bedrock.title", "color": "red", "with": [{"translate": "fcub.langRequest.java.title", "fallback": "请添加最新版专用资源包", "color": "red"}], "fallback": "%s"}], "fallback": "%2$s"}], "fallback": "%2$s"}

execute if score #system tick_operation matches 2 run execute if score #system tick_operation matches 0 run title @s title {"translate": "fcub.resCheck.v2.1.0.java.title", "color": "green", "with": [{"text": "祝您金箱子把把出红","color": "gold"},{"translate": "fcub.resUpdate.java.title", "color": "aqua", "with": ["v2.1.0", {"translate": "fcub.joinError.bedrock.title", "color": "red", "with": [{"translate": "fcub.langRequest.java.title", "fallback": "请添加最新版专用资源包", "color": "red"}], "fallback": "%s"}], "fallback": "%2$s"}], "fallback": "%2$s"}

execute if score #system tick_operation matches 3 run execute if score #system tick_operation matches 0 run title @s title {"translate": "fcub.resCheck.v2.1.0.java.title", "color": "green", "with": [{"text": "欢迎回归","color": "gold"},{"translate": "fcub.resUpdate.java.title", "color": "aqua", "with": ["v2.1.0", {"translate": "fcub.joinError.bedrock.title", "color": "red", "with": [{"translate": "fcub.langRequest.java.title", "fallback": "请添加最新版专用资源包", "color": "red"}], "fallback": "%s"}], "fallback": "%2$s"}], "fallback": "%2$s"}