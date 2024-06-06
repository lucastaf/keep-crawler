if instance_exists(obj_player){
	var distance = distance_to_object(obj_player)
	if !attacking && !coolDown && distance < closeDistance{
		attacking = true
		time_source_start(time_source_create(time_source_game,1,time_source_units_seconds,function(){
			if instance_exists(obj_player){
				direction = point_direction(x,y,obj_player.x,obj_player.y)
				speed = spd * atkSpdMult
			}
			time_source_start(time_source_create(time_source_game,0.5,time_source_units_seconds,function(){
				speed = 0
				attacking = false
				coolDown = 50
			}))	
		}))
	}
	if coolDown {
		coolDown--	
	}
	
	if !attacking {
		mp_potential_step(obj_player.x, obj_player.y, spd, false)
	}
		
}
event_inherited()