if vida <= 0 {instance_destroy()}

if place_meeting(x,y,obj_flecha) {
	vida -= obj_flecha.dmg
}

if place_meeting(x,y,obj_explosao) {
	vida -= global.localups.dmg.status*global.dmgmult.bomb
}

if place_meeting(x,y,obj_lanca) {
	if delaydmg = 0 {
		vida -= obj_lanca.dmg
		delaydmg= 1
		alarm[1]=20
	}	
}



show_debug_message("Step herdado do Pai")