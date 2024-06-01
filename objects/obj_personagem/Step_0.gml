#region  //movimento

if keyboard_check(vk_right){
	movimento.hspd = movimento.spd
}else if keyboard_check(vk_left){
	movimento.hspd = -movimento.spd
}else {
	movimento.hspd = 0
}
if keyboard_check(vk_up){
	movimento.vspd = -movimento.spd
}else if keyboard_check(vk_down){
	movimento.vspd = movimento.spd
}else {
	movimento.vspd = 0
}

move_and_collide(movimento.hspd, movimento.vspd, obj_parede)
#endregion

#region //Ataque
if keyboard_check_pressed(ord("W")){
	classes[class].attack(0,-1)
}
if keyboard_check_pressed(ord("A")){
	classes[class].attack(-1,0)
}
if keyboard_check_pressed(ord("S")){
	classes[class].attack(0,1)
}
if keyboard_check_pressed(ord("D")){
	classes[class].attack(1,0)
}

#endregion
	




//colisões
if place_meeting(x,y,obj_explosao){
vida -= global.localups.bombdmg.status
}

//slow
if place_meeting(x,y,obj_zumbi) || place_meeting(x,y,obj_esqueleto){
if dodging = false{
movimento.spd = movimento.fullspd/2
}
}else if dodging = false{
movimento.spd = movimento.fullspd
}


//corrida
if keyboard_check(vk_lshift) & (stamina > 0) {
movimento.spd = 10
stamina --
} else { 
	if (status.staminatotal > stamina) & !keyboard_check(vk_lshift){
		stamina++ 
		}
	if dodging = false{
	spd = movimento.fullspd
	}
	}	
	

if status.manatotal > mana{
mana++
}

//ultimate
if ultativo = true{
if ultimate > 0{
ultimate --
image_blend = c_orange
switch(class){
case "swordsman":	
	stamina = status.staminatotal
	status.dano = global.localups.sworddmg.status = status.dano *2
break;
case "archer":
status.flechas = global.localups.bowammo.status
charge = 100
break;
case "mage":
mana = status.manatotal
break;
case "bombman":
vida = status.vidatotal
status.bombas = global.localups.bombammo.status
break;
//o ultimate do lancer esta descrito junto do ataque padrao
}

}else{
ultativo = false
image_blend = c_white
status.dano = global.localups.sworddmg.status

}
}

//morte
if vida <= 0{
instance_destroy()
}
//Classe = Arqueiro
if class = "archer"{
if keyboard_check_direct(vk_space){
scr_charge()	
}else{
if charge>0 && ultativo = false{
charge--
}
}

}




