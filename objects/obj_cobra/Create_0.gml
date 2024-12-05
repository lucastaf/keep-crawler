event_inherited()
atkSpdMult = 3

attacking = false
closeDistance = 200
coolDown = 0

function Move(){
	if instance_exists(obj_player){
	var distance = distance_to_object(obj_player)
	if !attacking && !coolDown && distance < closeDistance{
		attacking = 1
		time_source_start(time_source_create(time_source_game,0.5,time_source_units_seconds,function(){
			attacking = 2
			direction = point_direction(x,y,obj_player.x,obj_player.y)
			time_source_start(time_source_create(time_source_game,0.5,time_source_units_seconds,function(){
				speed = 0
				attacking = false
				coolDown = 30
			}))	
		}))
	}else if attacking = 2 {
		if instance_exists(obj_player){
			move_to_angle(direction, spd * atkSpdMult)
		}
	}
	if coolDown {
		coolDown--	
	}
	
	if !attacking {
		mp_potential_step(obj_player.x, obj_player.y, spd, false)
	}
		
}

image_xscale = dcos(direction) > 0 ? 1 : -1	
	
}