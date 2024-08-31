
var yCenter = (bbox_top + bbox_bottom) / 2
draw_self()
draw_sprite(itemSprite, 0, bbox_left + 30 ,yCenter)
draw_set_valign(fa_middle)


draw_text_outline_transformed(x + 50,yCenter, label, c_white, c_black, 1,1,1)
draw_text_outline_transformed(bbox_right - 50,yCenter - 2, lvlObject.level, c_white, c_black, 1,1,1)
draw_set_halign(fa_left)
draw_text_outline_transformed(bbox_right - 55, bbox_bottom - 2, string_concat("$ ", lvlObject.price), c_white, c_black, 1, 0.5, 0.5)
