/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
draw_text(x-35,y-50,hp)
draw_healthbar(x-35,y-50,x+35,y-40,hp/maxHealth * 100,c_white,c_red,c_red,0,false,false)
