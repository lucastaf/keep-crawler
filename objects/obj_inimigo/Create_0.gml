event_inherited()

function Move(){
	show_debug_message("Rodando a função move do obj_inimigo, repor essa função para o inimigo atual")
	show_debug_message("Inimigo sem move: " + object_get_name(object_index))
}

//Levels
level = dmg + maxHealth

knockBackTimeSource = time_source_create(time_source_game,20, time_source_units_frames, function(){
						invincibility = false
						knockBackForce = 0
						})
hp = maxHealth
//States
invincibility = false
knockBackForce = 0
knockbackAngle = 0
stunned = false
stunnable = true

stunParticles = part_system_create(part_stun)

flashOpacity = 0