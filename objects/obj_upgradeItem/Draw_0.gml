
var yCenter = (bbox_top + bbox_bottom) / 2
draw_self()
draw_set_halign(fa_left)
draw_set_valign(fa_middle)

//Sprite
draw_sprite(itemSprite, 0, bbox_left + 30 ,yCenter)
//LABEL
draw_text_outline_transformed(x + 30,yCenter, label, c_white, c_black, 1,1,1)

//Se tiver LEVEL, é upgrade inGame
if struct_get(lvlObject,"level") { 
	//STATUS
	draw_text_outline_transformed(bbox_right - 90,yCenter - 2, lvlObject.status, c_white, c_black, 1,1,1)
	//LEVEL
	draw_text_outline_transformed(x + 30,yCenter + 22, string_concat("lvl ",lvlObject.level), c_white, c_black, 1,0.5,0.5)
	//PREÇO
	draw_text_outline_transformed(bbox_right - 80, bbox_bottom - 4, string_concat("$ ", round(lvlObject.price)), c_white, c_black, 1, 0.75, 0.75)
} 
//Se nao, é upgrade no reset
else {
	//PRICE
	draw_text_outline_transformed(bbox_right - 80, bbox_bottom - 4, string_concat(round(lvlObject.price), " LVLs"), c_white, c_black, 1, 0.7, 0.7)
	//STATUS
	draw_text_outline_transformed(bbox_right - 90,yCenter - 2, lvlObject.status, c_white, c_black, 1,1,1)
}