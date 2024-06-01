// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dodge(){
if stamina > status.staminadodge {
movimento.spd = 25
dodging = true
alarm[1] = 15
stamina-= status.staminadodge
}
	
}

function scr_charge(){
if charge <= 100{
charge++
}	
	
}

function scr_staffatk2(){
if mana >= 	30{
instance_create_depth(x,y,-10,obj_orb)
mana -= 30	
}
}

function scr_bomb(){
if status.bombas > 0{
instance_create_depth(x,y,-10,obj_bomba)
status.bombas --
}
}