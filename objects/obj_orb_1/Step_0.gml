if !instance_exists(target){
targets = [instance_nearest(x,y,obj_zumbi),instance_nearest(x,y,obj_esqueleto),instance_nearest(x,y,obj_cobra)]
target = noone
for(i=0;i<=2;i++){
if targets[i] != noone{
if target = noone{
target=targets[i]
}else if distance_to_point(target.x, target.y)  > distance_to_point(targets[i].x, targets[i].y){
target=targets[i]
}}}}

if target != noone && instance_exists(target){
direction = point_direction(x,y,target.x,target.y)
}

if !point_in_rectangle(x,y,0,0,room_width,room_height){
instance_destroy()
}