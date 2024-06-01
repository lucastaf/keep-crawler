acel = -1
speed = 30 
delay0 = 1
show_debug_message(ulted)
dmg = global.localups.dmg.status * global.dmgmult.lance


if ulted = 1 {
	image_blend = c_aqua
	alarm[0] = 50
	}

var setdelay = function()
{
    delay0 = 0
}
var delay_time = time_source_create(time_source_game, 0.05, time_source_units_seconds, setdelay);
time_source_start(delay_time);

