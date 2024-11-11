#macro playerSize 70

global.selectedClass = obj_playerKnight
global.dungeonLevel = 0
global.killCount = 0
//Recursos
global.status = {
	level : 20,
	money : 1000,
	xp : 0,
}

global.achievements = {
	knight : true,
	archer : false,
	mage : false,
	bombman : false,
	lancer : false
}


global.explosionDamage = 5
global.enemies = [obj_zumbi, obj_esqueleto, obj_cobra, obj_bruxa, obj_cogumelo]
//Upgrades

