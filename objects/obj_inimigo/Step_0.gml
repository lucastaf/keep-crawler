event_inherited()


#region move
if !place_meeting(x,y, obj_stun){
	Move()
	if(stunned && stunnable){
		stunned = false
		part_emitter_enable(stunParticles, 0, false)
	}
}else {
	if stunnable{
		stunned = true	
		part_system_position(stunParticles,x,bbox_top)
		part_emitter_enable(stunParticles, 0, true)
	}
}

if knockBackForce {
	move_to_angle(knockbackAngle,knockBackForce)
}
#endregion

#region colisões
if place_meeting(x,y,obj_explosao) {
	takeDamage((obj_player.lvlUpgrades.dmg.status))
}


if place_meeting(x,y,obj_playerAttack) {
	var attackInstance = instance_place(x,y,obj_playerAttack)
	if !invincibility {
		takeDamage(attackInstance.dmg, attackInstance.enemyHitSound)
		time_source_start(knockBackTimeSource)
		knockbackAngle = attackInstance.image_angle
		knockBackForce = attackInstance.knockBackPower * knockBackAbsorption
		invincibility = true
	}	
}else{
	invincibility = false	
}
#endregion



