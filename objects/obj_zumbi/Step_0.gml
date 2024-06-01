
if vida <= 0 {instance_destroy()}


switch(state){
	case "perseguindo" :
if instance_exists(obj_personagem){
mp_potential_step(obj_personagem.x,obj_personagem.y, spd,0)
if distance_to_object(obj_personagem) < 15{
state = "atacando"	
}
}
break;

case "atacando" :
mp_potential_step(obj_personagem.x,obj_personagem.y, spd,0)
if distance_to_object(obj_personagem) >= 15{
state = "perseguindo"
}
if delay0 = 0{
delay0 = 1
alarm[0] = 10
}

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
alarm[1]=5
}	
}

//colisão
if place_meeting(x,y,obj_explosao){
vida -= global.localups.bombdmg.status
}
