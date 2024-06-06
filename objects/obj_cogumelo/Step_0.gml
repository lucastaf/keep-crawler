
if walking{
	mp_potential_step(targetPoint[0], targetPoint[1],spd, false)
	if distance_to_point(targetPoint[0], targetPoint[1]) < 100 {
		walking = false
		time_source_start(time_source_create(time_source_game,1,time_source_units_seconds,function(){
			targetPoint = getRandomPoint()
			walking = true
		}))
	}
}

event_inherited();

