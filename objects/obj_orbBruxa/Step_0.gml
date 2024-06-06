if !instance_exists(target){
	target=instance_nearest(x,y,obj_player)
}

if target != noone && instance_exists(target){
	direction = point_direction(x,y,target.x,target.y)
}

if !point_in_rectangle(x,y,0,0,room_width,room_height){
	instance_destroy()
}

if place_meeting(x,y,target){
	alarm[0] = 1
}

if place_meeting(x,y,obj_parede){
	instance_destroy()	
}