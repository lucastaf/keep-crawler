var playerInstance = instance_find(obj_player, 0)
function getUpgradeProps(lvlObject, label, itemSprite) {
	return {
		lvlObject : lvlObject,
		label : label,
		itemSprite : itemSprite,
		onClick: function () {
			if(global.status.money >=  lvlObject.price){
			global.status.money -= lvlObject.price
			lvlObject.upgrade()
		}

		}
	}
	
}

var upgradesByClass = {
	obj_playerKnight : [
		getUpgradeProps(playerInstance.lvlUpgrades.vida, "VIDA",spr_shopVida),
		getUpgradeProps(playerInstance.lvlUpgrades.dmg, "DANO",spr_shopDmg),
		getUpgradeProps(playerInstance.lvlUpgrades.stamina, "STAMINA",spr_shopStamina),
	],
	obj_playerArcher : [
		getUpgradeProps(playerInstance.lvlUpgrades.vida, "VIDA",spr_shopVida),
		getUpgradeProps(playerInstance.lvlUpgrades.dmg, "DANO",spr_shopBow),
		getUpgradeProps(playerInstance.lvlUpgrades.stamina, "STAMINA",spr_shopStamina),
		getUpgradeProps(playerInstance.lvlUpgrades.ammo, "AMMO",spr_shopArrow),
	],
	obj_playerMage : [
		getUpgradeProps(playerInstance.lvlUpgrades.vida, "VIDA",spr_shopVida),
		getUpgradeProps(playerInstance.lvlUpgrades.dmg, "DANO",spr_shopStaff),
		getUpgradeProps(playerInstance.lvlUpgrades.stamina, "STAMINA",spr_shopStamina),
		getUpgradeProps(playerInstance.lvlUpgrades.mana, "MANA",spr_shopMana),
	],
	obj_playerBombMan : [
		getUpgradeProps(playerInstance.lvlUpgrades.vida, "VIDA",spr_shopVida),
		getUpgradeProps(playerInstance.lvlUpgrades.dmg, "DANO",spr_shopDmg),
		getUpgradeProps(playerInstance.lvlUpgrades.stamina, "STAMINA",spr_shopStamina),
		getUpgradeProps(playerInstance.lvlUpgrades.ammo, "AMMO",spr_shopBomba),
	],
	obj_playerLancer: [
		getUpgradeProps(playerInstance.lvlUpgrades.vida, "VIDA",spr_shopVida),
		getUpgradeProps(playerInstance.lvlUpgrades.dmg, "DANO",spr_shopDmg),
		getUpgradeProps(playerInstance.lvlUpgrades.stamina, "STAMINA",spr_shopStamina),
	]
	
}

var upgradesList = struct_get(upgradesByClass,object_get_name(playerInstance.object_index))

for(var i = 0; i < array_length(upgradesList); i++){
	var yAmmount = ceil((i+1)/2) * 150
	var XAmmount = (i%2) * 800
	
	instance_create_depth(150 + XAmmount,yAmmount+50,10, obj_upgradeItem, upgradesList[i])

}
