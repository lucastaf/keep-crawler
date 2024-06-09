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

image_xscale = movimento.hspd < 0 ? -1 : (movimento.hspd > 0 ? 1 : image_xscale)
move_and_collide(movimento.hspd, movimento.vspd, obj_solid)
#endregion

#region Corrida
if keyboard_check(vk_lshift) && (stamina > 0) {
	movimento.spd = 10
	stamina --
} else if (lvlUpgrades.stamina.status > stamina) && !keyboard_check(vk_lshift){
	stamina++ 
}
if keyboard_check_released(vk_shift){
	movimento.spd = movimento.fullspd
}

#endregion

#region ataque
if keyboard_check_pressed(ord("W")){
	attack(0,-1)
}
if keyboard_check_pressed(ord("A")){
	attack(-1,0)
}
if keyboard_check_pressed(ord("S")){
	attack(0,1)
}
if keyboard_check_pressed(ord("D")){
	attack(1,0)
}
#endregion

#region Colisões
//colisões
if place_meeting(x,y,obj_explosao){
	vida -= global.status.level*global.explosionDamage
}

//slow
if place_meeting(x,y,obj_ataqueInimigo){
	if movimento.spd = movimento.fullspd{
		movimento.spd = movimento.fullspd/2
	}
	if !invincibility {
		vida -= instance_place(x,y,obj_ataqueInimigo).dmg
		time_source_start(time_source_create(time_source_game,20, time_source_units_frames, function(){
			invincibility = false
		}))
		invincibility = true	
	}
} else if movimento.spd < movimento.fullspd{
	movimento.spd = movimento.fullspd	
}
#endregion

#region ultimate
if keyboard_check_pressed(ord("Z")) && ultimate >= lvlUpgrades.ultimate.status{
	ultativo = true
}

if ultativo = true{
	if ultimate > 0{
		ultimate --
		image_blend = c_orange
	}else{
		ultativo = false
		image_blend = c_white
	}
}

#endregion

//morte
if vida <= 0{
	instance_destroy()
}
