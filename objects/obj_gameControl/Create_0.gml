function startGame(){	
	player_instance = instance_create_depth(650,600,0,global.selectedClass, {
		initialStats : initialStats	
	})
}

function onDeath(){
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