const head = "## 此文件由脚本自动生成\n";

// 物品栏储存 & 加载
const invFilePath = `DataPack/data/fcub/functions/feature/inventory/`;
const fs = require("fs");
const invStoreList = [head];
const invApplyList = [head];
const invMake = function (container) {
	// 存入
	invStoreList.push(
		// 读取玩家槽位
		`item replace block 0 -1 0 container.1 from entity @s ${container}`,
		// 写入数据
		`data modify block 0 -1 0 Items[0].tag.data.fcub_inv_storage.${container} set from block 0 -1 0 Items[1]`,
		// 清除缓存槽位
		`data remove block 0 -1 0 Items[1]`,
	);

	// 还原
	invApplyList.push(
		// 读取数据
		`data modify block 0 -1 0 Items append from entity @s EnderItems[0].tag.data.fcub_inv_storage.${container}`,
		// 放入玩家槽位
		`item replace entity @s ${container} from block 0 -1 0 container.1`,
		// 清空缓存箱
		`data modify block 0 -1 0 Items set value []`,
	);
}
invMake("armor.chest");
invMake("armor.feet");
invMake("armor.head");
invMake("armor.legs");
invMake("weapon.offhand");
for (let slot = 0; slot < 9; slot ++) invMake(`hotbar.${slot}`);
for (let slot = 0; slot < 27; slot ++) invMake(`inventory.${slot}`);
// 导出文件
fs.writeFileSync(`${invFilePath}store/process.mcfunction`, invStoreList.join("\n"));
fs.writeFileSync(`${invFilePath}apply/process.mcfunction`, invApplyList.join("\n"));