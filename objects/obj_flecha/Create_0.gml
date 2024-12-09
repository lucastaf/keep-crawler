event_inherited()
knockBackPower = 5
speed = 10

function enemyHitSound(){
	audio_play_sound(choose(snd_bow_hit_1,snd_bow_hit_2,snd_bow_hit_3),20,false)
}