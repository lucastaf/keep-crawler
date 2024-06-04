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

if ultativo = true && ultimate > 0 {
	stamina = status.staminatotal
	status.dano = global.localups.dmg.status *2
} else {
	status.dano = global.localups.dmg.status	
}

event_inherited()