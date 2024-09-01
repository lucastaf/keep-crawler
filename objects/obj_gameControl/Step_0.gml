if(!instance_exists(obj_inimigo) && !instance_exists(obj_portal)){
	instance_create_depth(650,300,0,obj_portal)	
}

if(keyboard_check_pressed(ord("U"))){
	room = room_loja	
}