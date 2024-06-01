/// @description UI
// You can write your code in this editor
draw_set_halign(fa_center)
draw_healthbar(50,40,50+350,40+20/**/,(100*vida)/status.vidatotal,c_black,c_red,c_red,0,false,false)
draw_healthbar(50,80-5,400,100-5,(100*stamina)/status.staminatotal,c_white,c_green,c_green,0,true,false)
draw_healthbar(980,700,1330,740,(100*ultimate)/status.ulttotal,c_white,c_orange,c_orange,0,false,false)

switch(classes[class].name){
case "mage":
draw_healthbar(50,120-5,400,140-5,(100*mana)/status.manatotal,c_white,c_aqua,c_aqua,0,true,false)
break;

case "archer":
draw_text_outline_transformed(410,120,status.ammo,c_orange,c_white,2,1,1)
draw_healthbar(50,120-5,400,140-5,(100*charge)/100,c_white,c_aqua,c_aqua,0,true,false)
break;

case"bombman":
draw_text_outline_transformed(410,120,status.ammo,c_orange,c_white,2,1,1)
break;
}


//show_debug_message((100*stamina)/stats.staminatotal)
