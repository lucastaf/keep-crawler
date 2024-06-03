
draw_set_font(Font_pixelart)
//draw_rectangle_colour(64, 64, 1302, 704, c_orange, c_orange, c_yellow, c_yellow, false);
draw_set_halign(fa_center)
draw_set_valign(fa_center)

//cordenada esquerda
//(341,50,5,false)
//cordenada direita
//(1024,50,5,false)
//cordenada centro
//(683,50,5,false)

//altura = 640(64,704)(128,642)514 area utilizavel/5, 102 por bloco
//draw_rectangle(allboxes.boxx[i]-192,allboxes.boxy[i]-32,allboxes.boxx[i]+192,allboxes.boxy[i]+32,false)


for (i=0;i<=5;i++){
if i!=5 || extra_class{
draw_text_outline_transformed(allboxes.boxx[i],allboxes.boxy[i] - 70,allboxes.boxnames[i],c_white,c_black,2,1.5,1.5)
draw_text_outline_transformed(allboxes.boxx[i],allboxes.boxy[i] + 60,"$ "+string(allboxes.boxprice[i]),c_white,c_black,2,1,1)
draw_text_outline_transformed(allboxes.boxx[i],allboxes.boxy[i] + 90,"LVL "+string(allboxes.boxlevel[i]),c_white,c_black,1,0.5,0.5)
}
}

//show_debug_message(allboxes.boxstatus[0])

if currentselec != "false" && (extra_class=true || currentselec!= 5){
	draw_text_outline_transformed(obj_player.x,obj_player.y+64,allboxes.boxstatus[currentselec],c_white,c_black,2,1,1)
//draw_text_outline_centered(mouse_x,mouse_y,string(allboxes.boxstatus[currentmouse]) + " -> " + string(allboxes.boxstatus[currentmouse]+50),c_white,c_black,2,1,1,fa_right)
}