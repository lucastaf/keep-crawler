if vida <= 0 {instance_destroy()}

if distance_to_object(obj_personagem) <= distance.danger && state != "fugindo"{
tempstate="fugindo"
state = "fugindo"
}
if distance_to_object(obj_personagem) >= distance.safe && distance_to_object(obj_personagem) <= distance.away && state != "atacando"{
state = "atacando"
}
if distance_to_object(obj_personagem) > distance.away && state != "perseguindo"{
state = "perseguindo"
}

//state = "fugindo"
switch(state){
case "fugindo" :

var targetdirection = point_direction(obj_personagem.x,obj_personagem.y,x,y)

xtarget = obj_personagem.x + dcos(targetdirection)*(distance.safe+20)
ytarget = obj_personagem.y - dsin(targetdirection)*(distance.safe+20)
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
mp_potential_step(obj_personagem.x,obj_personagem.y,spd+2,false)
break;

case "knockback" :
switch(knockbackface){
case "cima" :
hknockback = 0
vknockback = -kspd
break;
case "baixo" :
hknockback = 0
vknockback = +kspd
break;
case "dir" :
hknockback = +kspd
vknockback = 0
break;
case "esq" :
hknockback = -kspd
vknockback = 0
break;
}
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
show_debug_message(distance_to_object(obj_personagem))
show_debug_message(state)

//colisão
if place_meeting(x,y,obj_explosao){
vida -= global.localups.bombdmg.status
}
