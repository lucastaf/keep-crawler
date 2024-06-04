//classes=["swordsman","archer","mage","bombman","lancer"]
class=1
status = {
	vidatotal : global.localups.vida.status,
	staminatotal : global.localups.stamina.status,
	manatotal: global.localups.mana.status,
	dano : global.localups.dmg.status,
	ammo : global.localups.ammo.status,
	recargault : 10,
	ulttotal: global.localups.ultimate.status,
	//consumo
	staminaespada : 30,
	staminadodge : 50,
	manaOrb : 20
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

#region //Classes
classes = [
	{ //Mage

		especialAttack: function() {
			 if other.mana >= 	30{
				instance_create_depth(other.x,other.y,-10,obj_orb)
				other.mana -= 30	
			 }
		}

	},
	{ //Bombman
		name: "bombman",
		attack: function (xpos,ypos){
			if instance_number(obj_marreta) = 0 {
			instance_create_depth(other.x,other.y,-10,obj_marreta,{
				relativePosition : [xpos,ypos],
			});
			}
		},
		especialAttack: function () {
			if other.status.ammo > 0{
				instance_create_depth(other.x, other.y,-10,obj_bomba)
				other.status.ammo --
			}
		}

	},
	{ //Lancer
		name: "lancer",
		attack: function (xpos,ypos){
			if instance_number(obj_lanca) = 0 || other.ultativo = 1 {
				instance_create_depth(other.x + xpos, other.y + ypos,-10,obj_lanca,{
					relativePosition : [xpos, ypos],
					ulted : other.ultativo,			
				})
			}
		},
		especialAttack: function () {
			//Ataque especial do lancer é feito pelo obj_lanca
		}
	}
]
#endregion



