var enemiesOnScene = instance_number(obj_inimigo) - instance_number(obj_barril)
if(!enemiesOnScene && !instance_exists(obj_portal)){
	instance_create_depth(650,300,0,obj_portal)	
}