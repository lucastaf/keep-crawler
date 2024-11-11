classes = [
	{
		unlocked : global.achievements.knight,
		class: obj_playerKnight,
		className : "Knight",
		achievementText : "Unlocked by default"
	},
	{
		unlocked : global.achievements.archer,
		class: obj_playerArcher,
		className : "Archer",
		achievementText : "Beat level 10 to unlock"
	},
	{
		unlocked : global.achievements.mage,
		class: obj_playerMage,
		className : "Wizzard",
		achievementText : "Kill 50 enemies"
	},
	{
		unlocked : global.achievements.mage,
		class: obj_playerBombMan,
		className : "Bomban",
		achievementText : "Beat level 20 to unlock"
	},
	{
		unlocked : global.achievements.lancer,
		class: obj_playerLancer,
		className : "Lancer",
		achievementText : "Defeat the final boss to unlock"
	}
]


array_foreach(classes, function(item, index) {
	instance_create_depth(x, y + (index * 100), 0, obj_classSelection, item)	
})