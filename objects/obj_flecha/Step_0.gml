if !collision_rectangle(0,0,room_width,room_height,self,0,false){
	instance_destroy()
}


if !piercing && place_meeting(x,y,obj_inimigo){
	alarm[0] = 1
}