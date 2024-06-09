#region Ataque
//Espcial
if keyboard_check(vk_space){
 if stamina >= staminadodge {
	movimento.spd = 25
	dodging = true
				
	time_source_start(endDodgingEvent)
	stamina -= staminadodge
 }
}
#endregion



event_inherited()

if ultativo = true && ultimate > 0 {
	stamina = lvlUpgrades.stamina.status
	attackDmg = lvlUpgrades.dmg.status *2
} else {
	attackDmg = lvlUpgrades.dmg.status	
}