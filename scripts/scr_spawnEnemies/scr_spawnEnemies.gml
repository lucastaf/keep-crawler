// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@function spawnEnemies(level);
///@param {instance} playerInstance the current player instance
///@description Spawna inimigos quando a fase começa.
function spawnEnemies(playerInstance){
	var level = global.dungeonLevel
	var enemiesQuantity = (log10(level + 15)*15)-random_range(13, 15) 
	var maxHealth = level * 20
	var minHealth = level * 18
	var maxDmg = level * 10
	var minDmg = level * 8
	for (i = 0; i <= enemiesQuantity; i++){
		var spawnPoint = polarToCartesianCoordinates(350, random_range(0, 360), playerInstance.x, playerInstance.y)
		instance_create_depth(spawnPoint.x,spawnPoint.y,0,global.enemies[random_range(0,array_length(global.enemies))],
		{
			dmg : random_range(minDmg, maxDmg),
			hp : random_range(minHealth, maxHealth)
		})
	}
}
