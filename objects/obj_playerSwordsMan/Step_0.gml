#region Ataque

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