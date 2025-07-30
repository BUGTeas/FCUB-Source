# 进服提示附加
# 客户端不正确、资源包未添加或版本不匹配，会弹出对应的文字提示
# 文本解析顺序：Java正常登录 > Java更新资源包 > 基岩登录异常 > Java语言异常 > Java未添加资源包

tellraw @s {"translate": "fcub.resCheck.v2.2.0.java.message", "color": "green", "with": [{"translate": "fcub.resUpdate.java.message", "color": "green", "with": ["v2.2.0", {"translate": "fcub.joinError.bedrock.message", "color": "yellow", "with": [{"translate": "fcub.langRequest.java.message", "fallback": "\n为确保正常游戏，\n请务必在本地添加梦回盘灵及服务器专用资源包！\n", "color": "yellow"}], "fallback": "%s"}], "fallback": "%2$s"}], "fallback": "%s"}