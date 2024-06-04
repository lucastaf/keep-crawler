//classes=["swordsman","archer","mage","bombman","lancer"]
status = {
	vidatotal : global.localups.vida.status,
	staminatotal : global.localups.stamina.status,
	dano : global.localups.dmg.status,
	recargault : 10,
	ulttotal: global.localups.ultimate.status,
}

movimento= {
	fullspd: 6,
	spd : 6,
	hspd : 0,
	vspd : 0,
}


invincibility = false
ultativo = false
ultimate = status.ulttotal

stamina = status.staminatotal
vida = status.vidatotal

instance_create_depth(0,0,-100,obj_levelstatus)
alarm[0]=50

function attack(a,b){
	show_debug_message("Funcao Attack chamada em obj_player")
} //Função vazia será reposta nos filhos


