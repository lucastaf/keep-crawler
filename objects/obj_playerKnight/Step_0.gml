#region Ataque
//Espcial
if keyboard_check(vk_space){
 if stamina >= staminadodge {
	movimento.spd = 18
	dodging = true
	invincibility = true
				
	time_source_start(endDodgingEvent)
	stamina -= staminadodge
 }
}
#endregion

event_inherited()

#region ultmate
if ultativo = true && ultimate > 0 {
	stamina = lvlUpgrades.stamina.status
	attackDmg = lvlUpgrades.dmg.status *2
} else {
	attackDmg = lvlUpgrades.dmg.status	
}
#endregion