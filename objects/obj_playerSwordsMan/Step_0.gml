#region Ataque
if keyboard_check_pressed(ord("W")){
	attack(0,-1)
}
if keyboard_check_pressed(ord("A")){
	attack(-1,0)
}
if keyboard_check_pressed(ord("S")){
	attack(0,1)
}
if keyboard_check_pressed(ord("D")){
	attack(1,0)
}

//Espcial
if keyboard_check(vk_space){
 if stamina >= status.staminadodge {
	movimento.spd = 25
	dodging = true
				
	time_source_start(endDodgingEvent)
	stamina -= other.status.staminadodge
 }
}

#endregion

event_inherited()