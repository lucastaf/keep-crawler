/// @description UI
// You can write your code in this editor
draw_set_valign(fa_middle)
draw_set_halign(fa_left)

draw_healthbar(50,40,400,40+25/**/,(100*hp)/lvlUpgrades.vida.status,c_white,c_red,c_red,0,false,true)
draw_healthbar(50,80,400,80 + 25,(100*stamina)/lvlUpgrades.stamina.status,c_white,c_green,c_green,0,false,true)
draw_healthbar(980,700,1330,740,(100*ultimate)/lvlUpgrades.ultimate.status,c_white,c_orange,c_orange,0,false,false)

draw_text_transformed_color(60,40 + 12,string_concat(floor(hp),"/", lvlUpgrades.vida.status),0.8,0.8,0,c_white,c_white,c_white,c_white,1)
draw_text_transformed_color(60,80 + 12,string_concat(floor(stamina),"/", lvlUpgrades.stamina.status),0.8,0.8,0,c_white,c_white,c_white,c_white,1)
//show_debug_message((100*stamina)/stats.staminatotal)
