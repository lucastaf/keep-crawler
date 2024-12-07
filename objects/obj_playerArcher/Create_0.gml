event_inherited();

ammo = lvlUpgrades.ammo.status

function attack(xpos,ypos){
	if ammo > 0{
	var charged = charge >=100 ? true : false
	audio_play_sound(choose(snd_bow_1, snd_bow_2),1,false)
	var golpe = instance_create_depth(x+(xpos * playerSize), y+(ypos*playerSize),-10,obj_flecha,{
		direction : vectorToAngle([xpos,ypos]),
		image_angle : vectorToAngle([xpos,ypos]),
		relativePosition : [xpos,ypos],
		piercing : charged,
		dmg : lvlUpgrades.dmg.status*4
	})
	if charged {
		golpe.speed=20 golpe.dmg=2*golpe.dmg
	}
		ammo --
		charge = 0
	}
}