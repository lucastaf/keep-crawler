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

