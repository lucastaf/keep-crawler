var destroy = function()
{
    instance_destroy();
}

var destroy_time = time_source_create(time_source_game, 0.5, time_source_units_seconds, destroy);

time_source_start(destroy_time);


audio_play_sound(choose(snd_boom_1, snd_boom_2, snd_boom_3),10,false)
