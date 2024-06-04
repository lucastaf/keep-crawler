acel = -1
deleteDelay = 0
speed = 30 
dmg = global.localups.dmg.status * global.dmgmult.lance
direction = vectorToAngle(relativePosition)


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

