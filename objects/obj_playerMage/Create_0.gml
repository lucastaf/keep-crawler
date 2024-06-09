event_inherited();

manaOrb = 20
mana = lvlUpgrades.mana.status

laserInstance = undefined
function attack (xpos,ypos){
	if mana >= manaOrb {
		if instance_number(obj_laser) == 0{
			var playerInstance = other
			laserInstance =  instance_create_depth(x,y,-10,obj_laser, {
			relativePosition:[xpos,ypos],
			playerInstance : playerInstance,
			dmg: lvlUpgrades.dmg.status * 2
			})
		}				
	}else{
		if laserInstance != undefined {
			instance_destroy(laserInstance)	
		}
	}
						
}