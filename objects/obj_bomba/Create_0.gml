var destroy = function()
{
    instance_destroy();
}

var destroy_time = time_source_create(time_source_game, 1, time_source_units_seconds, destroy);
preBoom = audio_play_sound(snd_pre_boom, 20, false)
time_source_start(destroy_time);
