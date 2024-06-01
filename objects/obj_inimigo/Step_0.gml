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
		delaydmg=1
		alarm[1]=20
	}	
}

switch(state){
case "perseguindo" :
	if instance_exists(obj_personagem){
		mp_potential_step(obj_personagem.x,obj_personagem.y, spd,0)
		if distance_to_object(obj_personagem) < 15 {
			state = "atacando"	
	}
}
break;

case "atacando" :
	if delayatk = 0{
		delayatk = 1
		alarm[0] = 10
	}
break;

case "fugindo" :

	var targetdirection = point_direction(obj_personagem.x,obj_personagem.y,x,y)
	xtarget = obj_personagem.x + dcos(targetdirection)*(distances.far+100)
	ytarget = obj_personagem.y - dsin(targetdirection)*(distances.far+100)
	mp_potential_step(xtarget,ytarget,spd,false)
break;

case "atacando2" :
	if delayrest = 0{
	delayrest = 1
	alarm[1] = 20
	}
break;

case "knockback":
	if (!knockbackdelay){
		knockbackdelay = 1
		alarm[2] = 30
	}
	switch(knockbackface){
		case"cima":
		y -= spd;
		break;
		case"baixo":
		y += spd;
		break;
		case"esq":
		x -= spd;
		break;
		case"dir":
		x += spd;
		break;
	}

break;

}

show_debug_message("Step herdado do Pai")