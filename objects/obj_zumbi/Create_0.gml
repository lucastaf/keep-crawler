/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


function Move(){
	if instance_exists(obj_player) {
	mp_potential_step(obj_player.x, obj_player.y, spd, false)
	image_xscale = dcos(direction) > 0 ? 1 : -1
}
	
}
