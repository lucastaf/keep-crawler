event_inherited();

mana = status.manatotal

laserInstance = undefined
function attack (xpos,ypos){
	if mana >= status.manaOrb {
		if instance_number(obj_laser) == 0{
			var playerInstance = other
			laserInstance =  instance_create_depth(x,y,-10,obj_laser, {
			relativePosition:[xpos,ypos],
			playerInstance : playerInstance 
			})
		}				
	}else{
		if laserInstance != undefined {
			instance_destroy(laserInstance)	
		}d	
	}
						
}