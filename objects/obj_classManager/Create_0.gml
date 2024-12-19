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
		achievementText : "Kill 50 enemies in a run"
	},
	{
		unlocked : global.achievements.bombman,
		class: obj_playerBombMan,
		className : "Bomban",
		achievementText : "Beat level 25 to unlock"
	},
	{
		unlocked : global.achievements.lancer,
		class: obj_playerLancer,
		className : "Lancer",
		achievementText : "Beat level 50 to unlock"
	}
]


array_foreach(classes, function(item, index) {
	instance_create_depth(x, y + (index * 100), 0, obj_classSelection, item)	
})