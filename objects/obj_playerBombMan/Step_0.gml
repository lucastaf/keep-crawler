if keyboard_check_pressed(vk_space){
	if status.ammo > 0{
		instance_create_depth(x, y,-10,obj_bomba)
		status.ammo --
	}	
}

if ultativo = true && ultimate > 0 {
	vida = status.vidatotal
	status.bombas = global.localups.ammo.status	
}

event_inherited();

