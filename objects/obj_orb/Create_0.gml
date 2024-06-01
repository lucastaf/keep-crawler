targets = [instance_nearest(x,y,obj_zumbi),instance_nearest(x,y,obj_esqueleto),instance_nearest(x,y,obj_cobra)]
dmg = global.localups.dmg.status*global.dmgmult.orb
target=noone
speed = 8

for(i=0;i<=2;i++){
	if targets[i] != noone{
		if target = noone{
			target=targets[i]
		}else if distance_to_point(target.x, target.y)  > distance_to_point(targets[i].x, targets[i].y){
			target=targets[i]
		}
	}
}