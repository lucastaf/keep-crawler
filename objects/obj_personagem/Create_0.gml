//classes=["swordsman","archer","mage","bombman","lancer"]
class=0
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
alarm[0]=50
movimento= {
	fullspd: 6,
	spd : 6,
	hspd : 0,
	vspd : 0,
}


ultativo = false
ultimate = status.ulttotal
dodging = false
charge = 0

mana = status.manatotal
stamina = status.staminatotal
vida = status.vidatotal

instance_create_depth(0,0,-100,obj_levelstatus)

#region //Classes
classes = [
	{ //Swordsman
		name: "swordsman",
		/// @param {real} xpos @param {real} ypos
		attack: function(xpos,ypos){
			if instance_number(obj_ataque) <= 3 && other.stamina >= other.status.staminaespada{
			instance_create_depth(other.x+xpos*70,other.y+ypos*70,-10,obj_ataque, {relativePosition:[xpos,ypos]})
			other.stamina -= other.status.staminaespada
			}
		},
		especialAttack: function() {
			if other.stamina >= other.status.staminadodge {
				player = other
				other.movimento.spd = 25
				other.dodging = true
				
				time_source_start(time_source_create(time_source_game, 15, time_source_units_frames, function(){
					player.movimento.spd = player.movimento.fullspd
					player.dodging = false
				}))
				other.stamina -= other.status.staminadodge
			}
		}
		
	},
	{ //Archer
		name: "archer",
		attack: function (xpos,ypos){
			if other.status.ammo > 0{
				var charged = other.charge >=100 ? true : false
				var golpe = instance_create_depth(other.x+(xpos * playerSize), other.y+(ypos*playerSize),-10,obj_flecha,{
					direction : (180/pi) * arctan2( -ypos, xpos ),
					image_angle : (180/pi) * arctan2( xpos, ypos )
				})
				if charged {golpe.piercing=true golpe.speed=20 golpe.dmg=2*golpe.dmg}
				other.status.ammo --
				other.charge = 0
				}
		},
		especialAttack: function() {
			if other.charge <= 100{
				other.charge++
			}	
		}
		
	},
	{ //Mage
		name: "mage",
		laserInstance : undefined,
		attack: function scr_staffatk(xpos,ypos){
			
			if other.mana >= other.status.manaOrb {
				if instance_number(obj_laser) == 0{
					var playerInstance = other
					laserInstance =  instance_create_depth(other.x,other.y,-10,obj_laser, { relativePosition:[xpos,ypos], playerInstance : playerInstance } )
				}
				
			}else{
				if laserInstance != undefined {
					instance_destroy(laserInstance)	
				}	
			}
			
			
		},
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



