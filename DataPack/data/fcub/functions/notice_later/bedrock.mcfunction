#进服提示附加
#服务器识别客户端不正确，或资源包版本不匹配，会弹出文字提示
tellraw @s {"translate":"fcub.check_bedrock.rp_request_120.message", "fallback": "§e\nUNSUPPORT LANGUAGE! \nPlease set the game language to Chinese.\n\n不支持的语言！\n请将游戏语言设置为中文 （简体/繁体）。\n\n"}
title @s subtitle {"translate": "fcub.check_bedrock.rp_request_120.subtitle", "fallback": "§e请将游戏语言设置为中文 （简体/繁体）"}
title @s title {"translate": "fcub.check_bedrock.rp_request_120.title", "fallback": "§c不支持的语言"}
tag @s remove fcub_notice_later