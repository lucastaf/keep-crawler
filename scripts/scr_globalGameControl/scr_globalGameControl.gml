#macro playerSize 70
#macro explosionDamage 50
#macro enemies [obj_zumbi, obj_esqueleto, obj_cobra, obj_bruxa, obj_cogumelo]
setGlobalStatus()

function setGlobalStatus() {
	global.selectedClass = obj_playerKnight
	global.dungeonLevel = 0
	global.killCount = 0

	global.status = {
		level : 0,
		money : 0,
		xp : 0,
	}
 
	var loadedData = Load()
	if loadedData == false{
		global.achievements = {
			knight : true,
			archer : false,
			mage : false,
			bombman : false,
			lancer : false
		}
	
		global.initialStatus = {
		vida : {
			price: 2,
			status: 0,
		},
		dmg : {
			price: 2,
			status: 0,
		},
		stamina : {
			price: 2,
			status: 0,
		}
	}
	}else {
		global.achievements = loadedData.achievements
		global.initialStatus = loadedData.initialStatus
	}
}

