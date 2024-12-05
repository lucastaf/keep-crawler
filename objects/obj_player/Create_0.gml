event_inherited()

lvlUpgrades = {
//padrao
	vida : {
		level : 1,
		status : 50 + initialStats.vida.status,
		price : 100,
		upgrade : function () {
			selfUpgrade(5,5)
			obj_player.hp = obj_player.lvlUpgrades.vida.status
		}
	},
	dmg : {
		level : 1,
		status : 100 + initialStats.dmg.status,
		price : 100,
		upgrade : function(){
			selfUpgrade(5,5)	
		}
	},
	stamina : {
		level : 1,
		status : 50 + initialStats.stamina.status,
		price : 200,
		upgrade : function(){
			selfUpgrade(5,5)	
		}
	},
	ultimate : {
		level : 1,
		status : 200,
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
		status : 10,
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
hp = lvlUpgrades.vida.status

instance_create_depth(0,0,-100,obj_levelstatus)
alarm[0]=50

function attack(a,b){
	show_debug_message("Funcao Attack chamada em obj_player")
} //Função vazia será reposta nos filhos


function onDeath(){
	obj_gameControl.onDeath()
}
function resetPosition(xPos, yPos){
	x = xPos
	y = yPos
}
