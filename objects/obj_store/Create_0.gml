playerInstance = obj_player ?? null


instance_create_depth(100,150,10, obj_upgradeItem, {
	onConfirm : playerInstance.lvlUpgrades.vida.upgrade,
	sprite_index : spr_itensloja
})
