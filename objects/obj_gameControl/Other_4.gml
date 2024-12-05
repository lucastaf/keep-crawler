if room = rm_game_start {
	createStartGameUpgrades()
}

if room = rm_area1 {
	spawnEnemies(player_instance)	
	spawnBarrels()
}