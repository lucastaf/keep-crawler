/// @description Timer Geral
if(!stunned){
	instance_create_depth(x,y,10, obj_poison)	
}
alarm[0] = game_get_speed(gamespeed_fps) * 1.5
