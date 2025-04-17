clear @s minecraft:written_book{title: "§6菜单", author: "§6天道"}
clear @s minecraft:book{id: "pcub:menubook"}
data remove storage pld:system sys.output
data modify storage pld:system sys.output append value '{"text":""}'
data modify storage pld:system sys.output append value '{"translate":"pl.book.menu13","clickEvent":{"action":"run_command","value":"/trigger menu set 13"}}'
data modify storage pld:system sys.output append value '{"translate":"pl.book.menu14","clickEvent":{"action":"run_command","value":"/trigger menu set 14"}}'



execute if score @s check_feather matches 1 run data modify storage pld:system sys.output append value '{"translate":"pl.book.menu7","clickEvent":{"action":"run_command","value":"/trigger menu set 7"}}'
execute unless score @s check_feather matches 1 run data modify storage pld:system sys.output append value '{"translate":"pl.book.disable"}'

execute if score @s check_stone matches 1 run data modify storage pld:system sys.output append value '{"translate":"pl.book.menu8","clickEvent":{"action":"run_command","value":"/trigger menu set 8"}}'
execute unless score @s check_stone matches 1 run data modify storage pld:system sys.output append value '{"translate":"pl.book.disable2"}'

execute if score @s check_arrow_pack matches 1 run data modify storage pld:system sys.output append value '{"translate":"pl.book.menu2","clickEvent":{"action":"run_command","value":"/trigger menu set 2"}}'
execute if score @s check_arrow_pack matches 1 run data modify storage pld:system sys.output append value '{"translate":"pl.book.menu2tip"}'
execute unless score @s check_arrow_pack matches 1 run data modify storage pld:system sys.output append value '{"translate":"pl.book.disable2"}'

execute if score @s check_race_test matches 1 run data modify storage pld:system sys.output append value '{"translate":"pl.book.menu5"}'
execute if score @s check_race_test matches 1 if score @s ren_test_all matches 1 run data modify storage pld:system sys.output append value '{"translate":"pl.book.menu5_ren","clickEvent":{"action":"run_command","value":"/trigger test_bless set 14"}}'
execute if score @s check_race_test matches 1 unless score @s ren_test_all matches 1 run data modify storage pld:system sys.output append value '{"translate":"pl.book.disable_bless"}'
execute if score @s check_race_test matches 1 if score @s shen_test_all matches 1 run data modify storage pld:system sys.output append value '{"translate":"pl.book.menu5_shen","clickEvent":{"action":"run_command","value":"/trigger test_bless set 10"}}'
execute if score @s check_race_test matches 1 unless score @s shen_test_all matches 1 run data modify storage pld:system sys.output append value '{"translate":"pl.book.disable_bless"}'
execute if score @s check_race_test matches 1 if score @s zhan_test_all matches 1 run data modify storage pld:system sys.output append value '{"translate":"pl.book.menu5_zhan","clickEvent":{"action":"run_command","value":"/trigger test_bless set 13"}}'
execute if score @s check_race_test matches 1 unless score @s zhan_test_all matches 1 run data modify storage pld:system sys.output append value '{"translate":"pl.book.disable_bless"}'
execute if score @s check_race_test matches 1 run data modify storage pld:system sys.output append value '{"translate":"pl.book.menu6","clickEvent":{"action":"run_command","value":"/trigger menu set 6"}}'
execute unless score @s check_race_test matches 1 run data modify storage pld:system sys.output append value '{"translate":"pl.book.disable2"}'
#tellraw @s {"nbt":"sys.output","storage": "pld:system"}
#execute if score @s check_l6 matches 1 run data modify storage pld:system sys.output append value '{"translate":"pl.book.menu3","clickEvent":{"action":"run_command","value":"/trigger menu set 3"}}'
#execute if score @s check_l6 matches 1 run data modify storage pld:system sys.output append value '{"translate":"pl.book.menu3tip"}'
#execute unless score @s check_l6 matches 1 run data modify storage pld:system sys.output append value '{"translate":"pl.book.disable2"}'

#幻域无界附加
data remove storage pcub:fcub book_content
data modify storage pcub:fcub book_content append value '{"translate":"fcub.menu.title"}'
data modify storage pcub:fcub book_content append value '{"translate":"fcub.menu.forcestack","hoverEvent":{"action": "show_text","value":{"translate":"fcub.menu.forcestack.tips"}},"clickEvent":{"action":"run_command","value":"/pcub stack"}}'
#元素银行
data modify storage pcub:fcub book_content append value '{"translate":"fcub.menu.element","hoverEvent":{"action": "show_text","value":{"translate":"fcub.menu.element.tips"}},"clickEvent":{"action":"run_command","value":"/get-element-menu"}}'
#有关专用命令
data modify storage pcub:fcub book_content append value '{"translate":"fcub.menu.more"}'

give @s written_book{fcubver:"110",pages: ['{"extra":[{"translate":"pl.book.menu9","clickEvent":{"action":"run_command","value":"/trigger menu set 9"}},{"translate":"pl.book.menu10","clickEvent":{"action":"run_command","value":"/trigger menu set 10"}},{"translate":"pl.book.menu11","clickEvent":{"action":"run_command","value":"/trigger menu set 11"}},{"translate":"pl.book.menu1","clickEvent":{"action":"run_command","value":"/trigger menu set 1"}},{"translate":"pl.book.menu4"},{"translate":"pl.book.menu4_select1","clickEvent":{"action":"run_command","value":"/trigger SlotSet set 1"}},{"translate":"pl.book.menu4_select2","clickEvent":{"action":"run_command","value":"/trigger SlotSet set 2"}},{"translate":"pl.book.menu4_select3","clickEvent":{"action":"run_command","value":"/trigger SlotSet set 3"}},{"translate":"pl.book.menu4_select4","clickEvent":{"action":"run_command","value":"/trigger SlotSet set 4"}},{"translate":"pl.book.menu4_select5","clickEvent":{"action":"run_command","value":"/trigger SlotSet set 5"}},{"translate":"pl.book.menu4_select6","clickEvent":{"action":"run_command","value":"/trigger SlotSet set 6"}},{"translate":"pl.book.menu4_select7","clickEvent":{"action":"run_command","value":"/trigger SlotSet set 7"}},{"translate":"pl.book.menu4_select8","clickEvent":{"action":"run_command","value":"/trigger SlotSet set 8"}},{"translate":"pl.book.menu4_select9","clickEvent":{"action":"run_command","value":"/trigger SlotSet set 9"}},{"translate":"pl.book.menu4_select-1","clickEvent":{"action":"run_command","value":"/trigger SlotSet set -1"}},{"translate":"pl.book.menu12","clickEvent":{"action":"run_command","value":"/trigger menu set 12"}}],"text":""}','{"storage": "pld:system","nbt": "sys.output[]","interpret": true,"separator": {"text": ""}}','{"storage": "pcub:fcub","nbt": "book_content[]","interpret": true,"separator": {"text": ""}}'],title:"§6菜单", author:"§6天道"}

#give @s written_book{pages: ['{"extra":[{"clickEvent":{"action":"run_command","value":"/trigger menu set 1"},"translate":"pl.book.menu1"},{"translate":"pl.book.menu4"},{"clickEvent":{"action":"run_command","value":"/trigger SlotSet set 1"},"translate":"pl.book.menu4_select1"},{"clickEvent":{"action":"run_command","value":"/trigger SlotSet set 2"},"translate":"pl.book.menu4_select2"},{"clickEvent":{"action":"run_command","value":"/trigger SlotSet set 3"},"translate":"pl.book.menu4_select3"},{"clickEvent":{"action":"run_command","value":"/trigger SlotSet set 4"},"translate":"pl.book.menu4_select4"},{"clickEvent":{"action":"run_command","value":"/trigger SlotSet set 5"},"translate":"pl.book.menu4_select5"},{"clickEvent":{"action":"run_command","value":"/trigger SlotSet set 6"},"translate":"pl.book.menu4_select6"},{"clickEvent":{"action":"run_command","value":"/trigger SlotSet set 7"},"translate":"pl.book.menu4_select7"},{"clickEvent":{"action":"run_command","value":"/trigger SlotSet set 8"},"translate":"pl.book.menu4_select8"},{"clickEvent":{"action":"run_command","value":"/trigger SlotSet set 9"},"translate":"pl.book.menu4_select9"},{"clickEvent":{"action":"run_command","value":"/trigger SlotSet set -1"},"translate":"pl.book.menu4_select-1"},{"clickEvent":{"action":"run_command","value":"/trigger menu set 2"},"translate":"pl.book.menu2"},{"translate":"pl.book.menu2tip"},{"clickEvent":{"action":"run_command","value":"/trigger menu set 3"},"translate":"pl.book.menu3"},{"translate":"pl.book.menu3tip"}],"text":""}','{"extra":[{"translate":"pl.book.menu5"},{"clickEvent":{"action":"run_command","value":"/trigger test_bless set 14"},"translate":"pl.book.menu5_ren"},{"clickEvent":{"action":"run_command","value":"/trigger test_bless set 10"},"translate":"pl.book.menu5_shen"},{"clickEvent":{"action":"run_command","value":"/trigger test_bless set 13"},"translate":"pl.book.menu5_zhan"},{"clickEvent":{"action":"run_command","value":"/trigger menu set 6"},"translate":"pl.book.menu6"},{"clickEvent":{"action":"run_command","value":"/trigger menu set 7"},"translate":"pl.book.menu7"},{"translate":"pl.book.menu7tip"},{"clickEvent":{"action":"run_command","value":"/trigger menu set 8"},"translate":"pl.book.menu8"},{"translate":"pl.book.menu8tip"}],"text":""}'],title:"§6菜单", author:"§6天道"}

