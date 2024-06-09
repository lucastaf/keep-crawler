lvlUpgrades = {
//padrao
vida : {
	level : 1,
	status : 100,
	price : 100,
},
dmg : {
	level : 1,
	status : 100,
	price : 100,
},
stamina : {
	level : 1,
	status : 50,
	price : 200,
},
ultimate : {
	level : 1,
	status : 10000,
	price : 200,	
},
xpmult : {
	level : 1,
	status : 1,
	price : 200,
},

//por classe
mana : {
	level : 1,
	status : 100,
	price : 100,
},
ammo : {
	level : 1,
	status : 50,
	price : 10,	
},
}
	
//classes=["swordsman","archer","mage","bombman","lancer"]
recargault = 10
movimento= {
	fullspd: 6,
	spd : 6,
	hspd : 0,
	vspd : 0,
}


invincibility = false
ultativo = false
ultimate = lvlUpgrades.ultimate.status

stamina = lvlUpgrades.stamina.status
vida = lvlUpgrades.vida.status

instance_create_depth(0,0,-100,obj_levelstatus)
alarm[0]=50

function attack(a,b){
	show_debug_message("Funcao Attack chamada em obj_player")
} //Função vazia será reposta nos filhos


