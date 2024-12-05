alarm[0] = 50
if(!stunned){
	if instance_exists(obj_player){
		if distance_to_object(obj_player) > closeRange {
			instance_create_depth(x,y,10, obj_flechaesqueleto)
		}
	}
}