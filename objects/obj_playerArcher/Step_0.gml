if keyboard_check(vk_space){
	if charge < 100 {
		charge++
	}
}else{
	charge = 0	
}

if ultativo = true && ultimate > 0 {
	status.ammo = global.localups.ammo.status
	charge = 100	
}

event_inherited();

