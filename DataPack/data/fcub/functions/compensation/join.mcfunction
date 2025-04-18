#初始化结构（需要手动加载）
	setblock 1313 67 38 minecraft:structure_block[mode=load]{author:"?",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"fcub:compensation/join_room",posX:-9,posY:1,posZ:1,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:11,sizeY:6,sizeZ:8}
#清除大陆标签
	tag @s remove finish_select
#记录原等级
	execute unless score @s fcub_comp_backup_level matches 0.. store result score @s fcub_comp_backup_level run experience query @s levels
#清除等级
	experience set @s 0 points
	experience set @s 0 levels
#判断丹师
	scoreboard players set @s[nbt={Inventory:[{tag:{limit:2,act:1}}]}] fcub_comp_race2 1
	scoreboard players set @s[nbt={Inventory:[{id:"minecraft:splash_potion"}]}] fcub_comp_race2 1
#设置末影箱状态
	scoreboard players set @s screen -1
#暂时清空背包
	function fcub:guide/inventory_clear
#传送到提示区
	tp @s 1308 69 42 180 0
	spawnpoint @s 1308 69 42 180
#给书本
	loot replace entity @s weapon.mainhand loot fcub:compensation/detail_book
#设置状态
	scoreboard players set @s fcub_compensation 1