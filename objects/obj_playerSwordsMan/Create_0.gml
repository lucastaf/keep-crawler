/// @description Insert description here
// You can write your code in this editor
dodging = false
function attack (xpos,ypos){
	if instance_number(obj_swordAttack) <= 3 && other.stamina >= other.status.staminaespada{
		instance_create_depth(x+xpos*70,y+ypos*70,-10,obj_swordAttack, {relativePosition:[xpos,ypos]})
		stamina -= status.staminaespada
	}
}
function dodge() {
	if stamina >= status.staminadodge {
		movimento.spd = 25
		dodging = true
				
	time_source_start(time_source_create(time_source_game, 15, time_source_units_frames, function(){
		movimento.spd = player.movimento.fullspd
		dodging = false
	}))
stamina -= other.status.staminadodge
	}
}