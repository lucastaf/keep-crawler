event_inherited()
acel = -1
deleteDelay = 0
speed = 30 
direction = vectorToAngle(relativePosition)
audio_play_sound(snd_swing_1, 1, false)

if ulted = 1 {
	image_blend = c_aqua
	alarm[0] = 150
}

var setdelay = function()
{
    deleteDelay = 1
}
var delay_time = time_source_create(time_source_game, 0.05, time_source_units_seconds, setdelay);
time_source_start(delay_time);

