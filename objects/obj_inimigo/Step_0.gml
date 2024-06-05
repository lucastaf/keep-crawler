if vida <= 0 {instance_destroy()}

if place_meeting(x,y,obj_explosao) {
	vida -= global.localups.dmg.status*global.dmgmult.bomb
}

if place_meeting(x,y,obj_playerAttack) {
	var attackInstance = instance_place(x,y,obj_playerAttack)
	if !invincibility {
		vida -= attackInstance.dmg
		time_source_start(knockBackTimeSource)
		knockbackAngle = attackInstance.image_angle
		knockBackForce = attackInstance.knockBackPower * knockBackAbsorption
		invincibility = true
	}	
}else{
	invincibility = false	
}



if knockBackForce {
	move_to_angle(knockbackAngle,knockBackForce)
}
