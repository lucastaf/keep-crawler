#macro playerSize 70
#macro explosionDamage 50

global.selectedClass = obj_playerKnight
global.dungeonLevel = 0
global.killCount = 0
//Recursos
global.status = {
	level : 0,
	money : 0,
	xp : 0,
}

global.achievements = {
	knight : true,
	archer : false,
	mage : true,
	bombman : false,
	lancer : false
}

global.enemies = [obj_zumbi, obj_esqueleto, obj_cobra, obj_bruxa, obj_cogumelo]
//Upgrades

