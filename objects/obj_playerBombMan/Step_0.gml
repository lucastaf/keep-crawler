if keyboard_check_pressed(vk_space){
	if ammo > 0{
		instance_create_depth(x, y,-10,obj_bomba)
		ammo --
	}	
}


event_inherited();


if ultativo = true && ultimate > 0 {
	vida = lvlUpgrades.vida.status
	ammo = lvlUpgrades.ammo.status	
}