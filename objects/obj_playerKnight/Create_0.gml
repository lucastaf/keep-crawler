event_inherited()

staminaespada = 30
staminadodge = 50
dodging = false

function attack (xpos,ypos){
	if instance_number(obj_swordAttack) <= 3 && other.stamina >= staminaespada{
		audio_play_sound(choose(snd_sword_1, snd_sword_2, snd_sword_3),1,false)
		instance_create_depth(x+xpos*70,y+ypos*70,-10,obj_swordAttack, {
			dmg : lvlUpgrades.dmg.status * 4,
			relativePosition:[xpos,ypos]
		})
		stamina -= staminaespada
		
	}
}

endDodgingEvent = time_source_create(time_source_game, 15, time_source_units_frames, function(){
	movimento.spd = movimento.fullspd
	dodging = false
	invincibility = false
})