playerInstance = obj_player ?? null


instance_create_depth(100,150,10, obj_upgradeItem, {
	lvlObject : playerInstance.lvlUpgrades.vida,
	label: "VIDA",
	itemSprite : spr_shopVida
})
