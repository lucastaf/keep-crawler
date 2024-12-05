event_inherited();
randomise()
function getRandomPoint(){
	var xPoint = random_range(0,room_width)
	var yPoint = random_range(0,room_height)
	return [xPoint, yPoint]
}

targetPoint = getRandomPoint()
walking = true
alarm[0] = game_get_speed(gamespeed_fps) * 1

function Move(){
	if walking{
	mp_potential_step(targetPoint[0], targetPoint[1],spd, false)
	if distance_to_point(targetPoint[0], targetPoint[1]) < 100 {
		walking = false
		time_source_start(time_source_create(time_source_game,0.5,time_source_units_seconds,function(){
			targetPoint = getRandomPoint()
			walking = true
		}))
	}
}
	
	
}