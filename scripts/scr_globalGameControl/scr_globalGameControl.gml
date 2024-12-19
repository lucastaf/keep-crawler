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

var loadedData = Load()
show_debug_message("DADOS CARREGADOS")
show_debug_message(loadedData)
if loadedData == false{
	global.achievements = {
		knight : true,
		archer : false,
		mage : true,
		bombman : false,
		lancer : false
	}
}else {
	global.achievements = loadedData
}

global.enemies = [obj_zumbi, obj_esqueleto, obj_cobra, obj_bruxa, obj_cogumelo]
//Upgrades

