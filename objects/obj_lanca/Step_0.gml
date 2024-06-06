image_angle = direction
//acel = 1

if speed > 25{speed = 25}
if keyboard_check(vk_space){
	if speed = 0 { speed = 1 }
		direction = point_direction(x,y,obj_player.x,obj_player.y)
		acel = 1
}
else {
	acel = -1
}
if speed > 0 && speed <= 25{
	speed += acel
} 





if place_meeting(x,y,obj_player) && !ulted && deleteDelay{
	instance_destroy()
}



//rodadinha em volta do personagem
if collision_circle(obj_player.x,obj_player.y,100,self,true,false) && ulted && keyboard_check(vk_space){
	direction = point_direction(x,y,obj_player.x,obj_player.y) + 90
}