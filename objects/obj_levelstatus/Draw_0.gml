draw_set_valign(fa_middle)
draw_set_halign(fa_center)
draw_set_font(Font_pixelart)

draw_healthbar(window_get_width()/2 - 175,40,window_get_width()/2 + 175,80,global.status.xp,c_white,c_aqua,c_aqua,0,true,true)
draw_text_color(window_get_width()/2,60,"Level: " + string(global.status.level), c_lime, c_lime, c_green, c_green, 1)
draw_set_halign(fa_right)
draw_text_color(1200,60,"Dinheiro: " + string(global.status.money),c_orange,c_yellow,c_orange,c_yellow,1 )
draw_text_color(1200,100,"Dungeon: " + string(global.dungeonLevel),c_orange,c_yellow,c_orange,c_yellow,1 )