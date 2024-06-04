event_inherited();

draw_text_outline_transformed(410,120,status.ammo,c_orange,c_white,2,1,1)
var barColor = charge < 100 ? c_aqua : c_yellow
draw_healthbar(50,120-5,400,140-5,(100*charge)/100,c_white,barColor,barColor,0,true,false)