/// @description UI
// You can write your code in this editor
draw_set_halign(fa_center)
draw_healthbar(50,40,50+350,40+20/**/,(100*vida)/lvlUpgrades.vida.status,c_black,c_red,c_red,0,false,false)
draw_healthbar(50,80-5,400,100-5,(100*stamina)/lvlUpgrades.stamina.status,c_white,c_green,c_green,0,true,false)
draw_healthbar(980,700,1330,740,(100*ultimate)/lvlUpgrades.ultimate.status,c_white,c_orange,c_orange,0,false,false)

draw_set_halign(fa_left)
draw_text(100,100,lvlUpgrades.dmg)
//show_debug_message((100*stamina)/stats.staminatotal)
