# 进服提示附加
# 客户端不正确、资源包未添加或版本不匹配，会弹出对应的文字提示
# 文本解析顺序：Java正常登录 > Java更新资源包 > 基岩登录异常 > Java语言异常 > Java未添加资源包
$tellraw @s {"translate": "fcub.check_java.rp_request_$(a)$(b)$(c).message", "color": "green", "with": [\
	{"translate": "fcub.resUpdate.java.message", "color": "green", "with": [\
		"$(a).$(b).$(c)", {"translate": "fcub.joinError.bedrock.message", "color": "yellow", "with": [\
			{"translate": "fcub.langRequest.java.message", "fallback": "\n为确保正常游戏，\n请务必在本地添加梦回盘灵及服务器专用资源包！\n", "color": "yellow"}\
		], "fallback": "%s"}\
	], "fallback": "%2$s"}\
], "fallback": "%s"}
$title @s subtitle {"translate": "fcub.check_java.rp_request_$(a)$(b)$(c).subtitle", "color": "green", "with": [\
	{"translate": "fcub.resUpdate.java.subtitle", "color": "green", "with": [\
		"$(a).$(b).$(c)", {"translate": "fcub.joinError.bedrock.subtitle", "color": "yellow", "with": [\
			{"translate": "fcub.langRequest.java.subtitle", "fallback": "可在游玩指南/群文件中找到", "color": "yellow"}\
		], "fallback": "%s"}\
	], "fallback": "%2$s"}\
], "fallback": "%s"}
$title @s title {"translate": "fcub.check_java.rp_request_$(a)$(b)$(c).title", "color": "green", "with": [\
	{"translate": "fcub.resUpdate.java.title", "color": "aqua", "with": [\
		"$(a).$(b).$(c)", {"translate": "fcub.joinError.bedrock.title", "color": "red", "with": [\
			{"translate": "fcub.langRequest.java.title", "fallback": "请添加最新版专用资源包", "color": "red"}\
		], "fallback": "%s"}\
	], "fallback": "%2$s"}\
], "fallback": "%s"}
tag @s remove fcub_notice_later