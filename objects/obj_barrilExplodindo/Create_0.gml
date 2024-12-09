var destroy = function()
{
    instance_destroy();
}

var destroy_time = time_source_create(time_source_game, 2, time_source_units_seconds, destroy);

time_source_start(destroy_time);

fireParticles = part_system_create(part_fire)
part_system_position(fireParticles,x,bbox_top)
audio_play_sound(snd_pre_boom,10,false)

xOffset = sprite_get_xoffset(sprite_index)

yOffset = sprite_get_yoffset(sprite_index)