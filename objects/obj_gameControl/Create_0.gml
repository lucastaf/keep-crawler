function startGame(){	
	player_instance = instance_create_depth(650,600,0,global.selectedClass, {
		initialStats : initialStats	
	})
}

function onDeath(){
	room_goto(room_gameStart)
	startGame()
}
initialStats = {
	vida : 0,
	dmg : 0,
	stamina : 0
}



		
startGame()