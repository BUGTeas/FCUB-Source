data modify storage pld:system Temp_player_new_mails append value {sent:"天道",is_taked:0b,title:'{"translate":"pl.chest_menu.system_lost.name"}',content:['{"translate":"pl.chest_menu.system_lost.lore.a"}','{"text":"故将此书送至信箱。","color":"yellow","italic":false}'],attached_items:[]}
loot replace block 0 -1 0 container.0 loot fcub:compensation/detail_book

data modify storage pld:system Temp_player_new_mails[0].attached_items append from block 0 -1 0 Items[0]

function pld:system/chest_menu/screen/3_mails/get_mails/personal

