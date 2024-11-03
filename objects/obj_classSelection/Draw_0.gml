draw_set_color(c_white)
draw_set_valign(fa_middle)
draw_text(x + 50,y, self.className)

draw_sprite_ext(object_get_sprite(class),0,x,y, scale, scale, 0 , c_white,  1)

if mouseHover && !self.unlocked {
	draw_text_outline_transformed(mouse_x, mouse_y, self.achievementText, c_white, c_black, 2, 1, 1)	
}