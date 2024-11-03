classes = [
	{
		unlocked : true,
		class: obj_playerSwordsMan,
		className : "Knight",
		achievementText : "Unlocked by default"
	},
	{
		unlocked : false,
		class: obj_playerArcher,
		className : "Archer",
		achievementText : "Beat level 10 to unlock"
	},
	{
		unlocked : false,
		class: obj_playerMage,
		className : "Wizzard",
		achievementText : "Kill 50 enemies"
	},
	{
		unlocked : false,
		class: obj_playerBombMan,
		className : "Bomban",
		achievementText : "Beat level 20 to unlock"
	},
	{
		unlocked : false,
		class: obj_playerLancer,
		className : "Lancer",
		achievementText : "Defeat the final boss to unlock"
	}
]


array_foreach(classes, function(item, index) {
	instance_create_depth(x, y + (index * 100), 0, obj_classSelection, item)	
})