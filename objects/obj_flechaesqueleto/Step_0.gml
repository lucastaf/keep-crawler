/// @description Insert description here
// You can write your code in this editor
if !collision_rectangle(0,0,room_width,room_height,self,0,false){
instance_destroy()
}

if place_meeting(x,y,obj_swordAttack) || place_meeting(x,y,obj_lanca){
instance_destroy()
}