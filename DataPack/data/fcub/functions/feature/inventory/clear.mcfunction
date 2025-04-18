# 防止覆盖已有储存
execute if entity @s[nbt={EnderItems:[{tag:{data:{fcub_inv_storage:{}}}}]}] run return 0

function fcub:feature/inventory/store
clear @s