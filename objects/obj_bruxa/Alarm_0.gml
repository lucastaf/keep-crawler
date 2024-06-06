alarm[0] = game_get_speed(gamespeed_fps) * 1.8
if instance_exists(obj_player){
	if distance_to_object(obj_player) > closeRange {
		instance_create_depth(x,y,10, obj_orbBruxa)
	}
}