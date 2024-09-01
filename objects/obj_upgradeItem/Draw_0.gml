
var yCenter = (bbox_top + bbox_bottom) / 2
draw_self()
draw_set_halign(fa_left)
draw_set_valign(fa_middle)

//Sprite
draw_sprite(itemSprite, 0, bbox_left + 30 ,yCenter)
//LABEL
draw_text_outline_transformed(x + 30,yCenter, label, c_white, c_black, 1,1,1)
//LEVEL
draw_text_outline_transformed(bbox_right - 80,yCenter - 2, string_concat("lvl ",lvlObject.level), c_white, c_black, 1,1,1)
//PREÇO
draw_text_outline_transformed(bbox_right - 80, bbox_bottom - 4, string_concat("$ ", round(lvlObject.price)), c_white, c_black, 1, 0.75, 0.75)
