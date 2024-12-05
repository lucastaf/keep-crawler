function startGame(){	
	player_instance = instance_create_depth(room_width / 2,600,0,global.selectedClass, {
		initialStats : initialStats	
	})
}

function checkAchievements () {
	if global.dungeonLevel >= 2 {
		global.achievements.archer = true
	}
	if global.dungeonLevel >= 20 {
		global.achievements.bombman = true
	}
	if global.killCount >= 50 {
		global.achievements.mage = true
	}
}

function onDeath(){
	instance_destroy(player_instance) 
	checkAchievements()
	global.dungeonLevel = 0
	room_goto(rm_game_start)
	startGame()
}



initialStats = {
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

		
startGame()