/// @description Stun

if vida <= 0 {instance_destroy()}

if place_meeting(x,y,obj_explosao) {
	vida -= global.localups.dmg.status*global.dmgmult.bomb
}
