event_inherited()
knockBackPower = 15
image_angle = vectorToAngle(relativePosition)
alarm[0] = 15

function enemyHitSound(){
	audio_play_sound(choose(snd_sword_hit_1,snd_sword_hit_2,snd_sword_hit_3),20,false)
}