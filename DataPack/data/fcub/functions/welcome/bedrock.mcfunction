# 进服提示附加
# 客户端不正确或资源包版本不匹配，会弹出对应的文字提示
# 文本解析顺序：基岩正常登录 > Java登录异常 > 基岩语言异常

title @s subtitle {"translate": "fcub.check.bedrock", "with": ["", {"translate":"fcub.joinError.java.subtitle", "fallback": "请将游戏语言设置为中文 （简体/繁体）", "color": "yellow"}], "fallback": "%2$s"}
title @s title {"translate": "fcub.check.bedrock", "with": ["", {"translate":"fcub.joinError.java.title", "fallback": "不支持的语言", "color": "red"}], "fallback": "%2$s"}