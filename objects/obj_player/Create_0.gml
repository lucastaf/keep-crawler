lvlUpgrades = {
//padrao
	vida : {
		level : 1,
		status : 100 + initialStats.vida,
		price : 100,
		upgrade : function () {
			selfUpgrade(5,5)
		}
	},
	dmg : {
		level : 1,
		status : 100 + initialStats.dmg,
		price : 100,
		upgrade : function(){
			selfUpgrade(5,5)	
		}
	},
	stamina : {
		level : 1,
		status : 50 + initialStats.stamina,
		price : 200,
		upgrade : function(){
			selfUpgrade(5,5)	
		}
	},
	ultimate : {
		level : 1,
		status : 10000,
		price : 200
	},

	//por classe
	mana : {
		level : 1,
		status : 100,
		price : 100,
		upgrade : function(){
			selfUpgrade(5,5)	
		}
	},
	ammo : {
		level : 1,
		status : 50,
		price : 10,
		upgrade : function(){
			selfUpgrade(5,5)	
		}
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

function resetPosition(){
	x = 650
	y = 600
}
