event_inherited();

status.ammo = global.localups.ammo.status

function attack(xpos,ypos){
	if status.ammo > 0{
	var charged = charge >=100 ? true : false
	var golpe = instance_create_depth(x+(xpos * playerSize), y+(ypos*playerSize),-10,obj_flecha,{
		direction : vectorToAngle([xpos,ypos]),
		image_angle : vectorToAngle([xpos,ypos]),
		relativePosition : [xpos,ypos],
		piercing : charged,
	})
	if charged {golpe.speed=20 golpe.dmg=2*golpe.dmg}
		status.ammo --
		charge = 0
	}
}