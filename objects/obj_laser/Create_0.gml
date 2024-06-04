dmg = global.localups.dmg.status * global.dmgmult.orb / 10
x = obj_player.x + relativePosition[0] * playerSize
y = obj_player.y + relativePosition[1] * playerSize
pressedKey = "A"


#region //PressedKey
if(relativePosition[0] == -1)
	pressedKey = "A";

if(relativePosition[0] == 1)
	pressedKey = "D";	
	
if(relativePosition[1] == -1){
	pressedKey = "W";	
	image_angle = 90
}
if(relativePosition[1] == 1){
	pressedKey = "S";	
	image_angle = 90
}
#endregion