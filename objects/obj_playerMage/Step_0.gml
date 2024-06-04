event_inherited();

if instance_exists(obj_laser){
	mana --	
}

if mana <= global.localups.mana.status{
	mana++
}

if ultativo = true && ultimate > 0 {
	mana = global.localups.mana.status
}


if keyboard_check_pressed(vk_space){
	if mana >= 	30{
		instance_create_depth(other.x,other.y,-10,obj_orb)
		mana -= 30	
	}	
}