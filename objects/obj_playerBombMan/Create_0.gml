event_inherited();

ammo = lvlUpgrades.ammo.status

function attack (xpos,ypos){
	audio_play_sound(choose(snd_swing_1, snd_swing_2),1,false)
	if instance_number(obj_marreta) = 0 {
		instance_create_depth(other.x,other.y,-10,obj_marreta,{
		relativePosition : [xpos,ypos],
		});
	}
}