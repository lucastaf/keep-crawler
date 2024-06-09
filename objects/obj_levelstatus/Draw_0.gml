draw_set_valign(fa_middle)
draw_set_halign(fa_center)
draw_set_font(Font_pixelart)

draw_healthbar(450,40,800,80,global.status.xp,c_white,c_aqua,c_aqua,0,true,true)
draw_text_color(625,60,"Level: " + string(global.status.level), c_lime, c_lime, c_green, c_green, 1)
draw_text_color(1155,60,"Dinheiro: " + string(global.status.money),c_orange,c_yellow,c_orange,c_yellow,1 )