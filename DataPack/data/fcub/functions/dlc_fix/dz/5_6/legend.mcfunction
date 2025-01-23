tag @p add legend_check

#按照已有id赋值
execute as @p[tag=legend_check] run function pld:system/dz/dzlegend/refine/check_id

# 临时加一空行以确保词条显示位置正确
data modify block ~ ~ ~ Items[{Slot:5b}].tag.display.Lore append value ""

#根据tagid追加词条&legend_id
# #system temp4 = tagid
execute if score #system temp4 matches 0 run function pld:system/dz/dzlegend/refine/modify/0
execute if score #system temp4 matches 1 run function pld:system/dz/dzlegend/refine/modify/1
execute if score #system temp4 matches 2 run function pld:system/dz/dzlegend/refine/modify/2
execute if score #system temp4 matches 3 run function pld:system/dz/dzlegend/refine/modify/3
execute if score #system temp4 matches 4 run function pld:system/dz/dzlegend/refine/modify/4
execute if score #system temp4 matches 5 run function pld:system/dz/dzlegend/refine/modify/5
execute if score #system temp4 matches 6 run function pld:system/dz/dzlegend/refine/modify/6

# 删除临时空行
data remove block ~ ~ ~ Items[{Slot:5b}].tag.display.Lore[-1]

#处理后缀
# #system temp = limit
execute store result score #system temp run data get block ~ ~ ~ Items[{Slot:5b}].tag.limit
# #system temp2 = element
execute store result score #system temp2 run data get block ~ ~ ~ Items[{Slot:5b}].tag.element
# #system temp3 = slot
execute store result score #system temp3 run data get block ~ ~ ~ Items[{Slot:5b}].tag.slot
# #system temp4 = tagid


#名称处理
execute if block ~-3 ~2 ~ chest positioned ~-3 ~3 ~ run function pld:system/dz/dzlegend/tagset/name/summon
execute if block ~-3 ~4 ~ oak_sign run data modify block ~ ~ ~ Items.[{Slot:5b}].tag.display.Name set from block ~-3 ~4 ~ front_text.messages[0]
execute if block ~-3 ~4 ~ oak_sign run setblock ~-3 ~4 ~ air

#清理用过的tag
execute as @p[tag=legend_check] run function pld:system/dz/dzlegend/refine/clear_id

tag @a[tag=legend_check] remove legend_check