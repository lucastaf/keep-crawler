global.status.xp += value
if global.status.xp < 1000{	
	audio_play_sound(snd_collect_xp, 20, false)
}
while global.status.xp >= 1000{
	audio_play_sound(snd_level_up, 30, false)
	global.status.xp -= 1000
	global.status.level ++
}

instance_destroy()