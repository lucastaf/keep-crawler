event_inherited()

var distance
if object_exists(obj_player)
	distance = distance_to_object(obj_player)
else
	distance = 0
	
if distance < closeRange {
	var targetdirection = point_direction(obj_player.x,obj_player.y,x,y)
	mp_potential_step(lengthdir_x(300, targetdirection),lengthdir_y(300,targetdirection),spd,false)
} else if distance < longRange {
	//Atacando	
} else {
	mp_potential_step(obj_player.x, obj_player.y, spd * 1.3, false)
}

image_xscale = dcos(direction) > 0 ? 1 : -1	