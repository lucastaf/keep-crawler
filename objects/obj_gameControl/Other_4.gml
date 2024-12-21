if room = rm_game_start {
	createStartGameUpgrades()
}

if room == rm_area2 || room == rm_area1 {
	spawnEnemies()	
	spawnBarrels()
}