/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white)
draw_arrow(obj_personagem.x,obj_personagem.y,x,y,50)
draw_healthbar(x-35,y-50,x+35,y-40,(100*vida)/vidatotal,c_white,c_red,c_red,0,false,false)
//draw_circle(xtarget,ytarget,4,false)