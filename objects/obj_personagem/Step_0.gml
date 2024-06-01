//movimento
//movimentação e facing
if keyboard_check(vk_right){
face = "dir"
movimento.hpress = "dir"
movimento.hspd = movimento.spd
}else if keyboard_check(vk_left){
face = "esq"
movimento.hpress = "esq"
movimento.hspd = -movimento.spd
}else {
movimento.hpress = false
movimento.hspd = 0
}
if keyboard_check(vk_up){
face = "cima"
movimento.vpress = "cima"
movimento.vspd = -movimento.spd
}else if keyboard_check(vk_down){
face = "baixo"
movimento.vpress = "baixo"
movimento.vspd = movimento.spd
}else {
movimento.vpress = false
movimento.vspd = 0
}
if movimento.hpress="esq" && movimento.vpress="cima"{face="ec"}
if movimento.hpress="esq" && movimento.vpress="baixo"{face="eb"}
if movimento.hpress="dir" && movimento.vpress="cima"{face="dc"}
if movimento.hpress="dir" && movimento.vpress="baixo"{face="db"}

//Colisão com parede
if place_meeting(x + movimento.hspd,y,obj_parede){
while !place_meeting(x+ sign(movimento.hspd),y,obj_parede){
x += sign(movimento.hspd)
}
movimento.hspd = 0 
}
if place_meeting(x,y + movimento.vspd,obj_parede){
while !place_meeting(x,y+ sign(movimento.vspd),obj_parede){
y += sign(movimento.vspd)
}movimento.vspd = 0 }
x+= movimento.hspd
y+= movimento.vspd
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

//acabou o movimento


//show_debug_message(face)

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
	



