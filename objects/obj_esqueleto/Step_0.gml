if vida <= 0 {instance_destroy()}

if distance_to_object(obj_player) <= distance.danger && state != "fugindo"{
tempstate="fugindo"
state = "fugindo"
}
if distance_to_object(obj_player) >= distance.safe && distance_to_object(obj_player) <= distance.away && state != "atacando"{
state = "atacando"
}
if distance_to_object(obj_player) > distance.away && state != "perseguindo"{
state = "perseguindo"
}

//state = "fugindo"
switch(state){
case "fugindo" :

var targetdirection = point_direction(obj_player.x,obj_player.y,x,y)

xtarget = obj_player.x + dcos(targetdirection)*(distance.safe+20)
ytarget = obj_player.y - dsin(targetdirection)*(distance.safe+20)
mp_potential_step(xtarget,ytarget,spd/2,false)
break;


case "atacando" :
if ataqueblock = 0{
alarm[0] = 100
ataqueblock = 1
}

move_towards_point(x,y,0)
break;


case "perseguindo":
mp_potential_step(obj_player.x,obj_player.y,spd+2,false)
break;


mp_potential_step(x+hknockback,y+vknockback,kspd,false)
break;
}

if place_meeting(x,y,obj_flecha){
if delay1= 0{
vida -= obj_flecha.dmg
delay1=1
alarm[2]=5
}	
}
show_debug_message(distance_to_object(obj_player))
show_debug_message(state)

//colisão
if place_meeting(x,y,obj_explosao){
vida -= global.localups.bombdmg.status
}
