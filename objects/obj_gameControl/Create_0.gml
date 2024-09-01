#macro playerSize 70

selectedClass = obj_playerMage
instance_create_depth(650,600,0,selectedClass)

if !instance_exists(obj_levelstatus){
instance_create_depth(0,0,-100,obj_levelstatus)
}
//Recursos
global.status = {
	level : 1,
	money : 1000,
	xp : 0,
}

global.explosionDamage = 5

//Upgrades

