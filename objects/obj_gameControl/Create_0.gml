function startGame(){	
	player_instance = instance_create_depth(room_width / 2,600,0,global.selectedClass, {
		initialStats : initialStats	
	})
}

function checkAchievements () {
	if global.dungeonLevel >= 2 {
		global.achievements.archer = true
	}
	if global.dungeonLevel >= 25 {
		global.achievements.bombman = true
	}
	if global.killCount >= 50 {
		global.achievements.mage = true
	}
	if global.dungeonLevel >= 50 {
		global.achievements.lancer = true
	}
	
	Save(global.achievements)
}

function onDeath(){
	audio_stop_all()
	instance_destroy(player_instance) 
	checkAchievements()
	global.status.money = 0
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

function goToNextDungeonLevel(){
	global.dungeonLevel++
	if global.dungeonLevel % 5 == 0 {
		room_goto(rm_loja)
		other.resetPosition(650, 600)
	}else if global.dungeonLevel % 20 < 10 {
		room_goto(rm_area2)
		other.resetPosition(800, 512)
	}else{
		room_goto(rm_game_start)	
		other.resetPosition(650, 600)
	}
}
		
startGame()