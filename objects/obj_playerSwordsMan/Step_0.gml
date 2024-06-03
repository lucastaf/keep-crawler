#region Ataque
if keyboard_check_pressed(ord("W")){
	classes[class].attack(0,-1)
}
if keyboard_check_pressed(ord("A")){
	classes[class].attack(-1,0)
}
if keyboard_check_pressed(ord("S")){
	classes[class].attack(0,1)
}
if keyboard_check_pressed(ord("D")){
	classes[class].attack(1,0)
}

//Espcial
if class = 1 {
	if keyboard_check(vk_space){
		classes[class].especialAttack()
	}else if !ultativo{
		charge = 0
	}
}else{
	if keyboard_check_pressed(vk_space){
		classes[class].especialAttack()	
	}
}

#endregion