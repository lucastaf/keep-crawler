if !collision_rectangle(0,0,room_width,room_height,self,0,false){
instance_destroy()
}

if !piercing{
if place_meeting(x,y,obj_zumbi)  || place_meeting(x,y,obj_cobra) || place_meeting(x,y,obj_esqueleto){
alarm[0]=1
}

}