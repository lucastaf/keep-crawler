#region Movimento

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

move_and_collide(movimento.hspd, movimento.vspd, obj_solid)
#endregion

#region Corrida
if keyboard_check(vk_lshift) && (stamina > 0) {
	movimento.spd = 10
	stamina --
} else if (status.staminatotal > stamina) && !keyboard_check(vk_lshift){
	stamina++ 
}
if keyboard_check_released(vk_shift){
	movimento.spd = movimento.fullspd
}

#endregion

#region Colisões
//colisões
if place_meeting(x,y,obj_explosao){
	vida -= global.localups.dmg.status * global.dmgmult.bomb
}

//slow
if place_meeting(x,y,obj_inimigo){
	if movimento.spd = movimento.fullspd{
		movimento.spd = movimento.fullspd/10
	}
	if !invincibility {
		vida -= instance_place(x,y,obj_inimigo).dmg
		time_source_start(time_source_create(time_source_game,20, time_source_units_frames, function(){
			invincibility = false
		}))
		invincibility = true	
	}
} else if movimento.spd < movimento.fullspd{
	movimento.spd = movimento.fullspd	
}
#endregion

#region defaultRecharges
if status.manatotal > mana{
	mana++
}

#endregion

#region ultimate
if keyboard_check_pressed(ord("Z")) && ultimate >= status.ulttotal{
	ultativo = true
}

if ultativo = true{
	if ultimate > 0{
		ultimate --
		image_blend = c_orange
		switch(classes[class].name){
		case "swordsman":	
			stamina = status.staminatotal
			status.dano = global.localups.sworddmg.status = status.dano *2
		break;
		case "archer":
			status.ammo = global.localups.ammo.status
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
		status.dano = global.localups.dmg.status
	}
}

#endregion

//morte
if vida <= 0{
	instance_destroy()
}
