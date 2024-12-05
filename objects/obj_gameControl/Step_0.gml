var enemiesOnScene = instance_number(obj_inimigo) - instance_number(obj_barril)
if(!enemiesOnScene && !instance_exists(obj_portal)){
	instance_create_depth(650,300,0,obj_portal)	
}

if(keyboard_check_pressed(ord("U"))){
	room = rm_loja	
}

if(keyboard_check_pressed(ord("I"))){
	global.status.level++
}

if(keyboard_check_pressed(ord("O"))){
	global.status.money += 10
}