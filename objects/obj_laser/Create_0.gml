event_inherited()

x = obj_player.x + relativePosition[0] * playerSize
y = obj_player.y + relativePosition[1] * playerSize
pressedKey = "A"


#region //PressedKey
if(relativePosition[0] == -1){
	pressedKey = "A";
	image_angle = 180
}

if(relativePosition[0] == 1)
	pressedKey = "D";	
	
if(relativePosition[1] == -1){
	pressedKey = "W";	
	image_angle = 90
}
if(relativePosition[1] == 1){
	pressedKey = "S";	
	image_angle = 270
}
#endregion

sfx = audio_play_sound(snd_spell_long, 100, true)
audio_sound_loop_start(snd_spell_long, 1.2)
audio_sound_loop_end(snd_spell_long, 4)

audio_sound_loop(sfx, true)