# 防止无物品还原造成背包清空
execute unless entity @s[nbt={EnderItems:[{tag:{data:{fcub_inv_storage:{}}}}]}] run return 0

# 清空缓存箱
data modify block 0 -1 0 Items set value []
# 还原玩家背包
function fcub:feature/inventory/apply/process

