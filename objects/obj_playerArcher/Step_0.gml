if keyboard_check(vk_space){
	if charge < 100 {
		charge++
	}
}else{
	charge = 0	
}
event_inherited();

