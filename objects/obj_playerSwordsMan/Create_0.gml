event_inherited()

status.staminaespada = 30
status.staminadodge = 50
dodging = false
function attack (xpos,ypos){
	if instance_number(obj_swordAttack) <= 3 && other.stamina >= other.status.staminaespada{
		instance_create_depth(x+xpos*70,y+ypos*70,-10,obj_swordAttack, {dmg : status.dano,relativePosition:[xpos,ypos]})
		stamina -= status.staminaespada
	}
}

endDodgingEvent = time_source_create(time_source_game, 15, time_source_units_frames, function(){
	movimento.spd = movimento.fullspd
	dodging = false
})