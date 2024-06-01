//direction = point_direction(x,y,obj_personagem.x,obj_personagem.y)
image_angle = direction
//acel = 1
if !keyboard_check(vk_space){
acel = -1
}
if speed > 25{speed = 25}
if speed > 0 && speed <= 25{
speed += acel
}


//habilidade secundaria
if keyboard_check(vk_space) && !delay0{
if speed = 0{speed = 1}
direction = point_direction(x,y,obj_personagem.x,obj_personagem.y)
acel = 1
}





if place_meeting(x,y,obj_personagem) && delay0 = 0{
instance_destroy()
}



//rodadinha em volta do personagem
if collision_circle(obj_personagem.x,obj_personagem.y,100,self,true,false) && delay0=0 && ulted{
direction = point_direction(x,y,obj_personagem.x,obj_personagem.y) + 90
}