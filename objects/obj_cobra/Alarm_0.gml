/// @description Dar o bote
delayatk = 0
var targetdirection = point_direction(x,y,obj_player.x,obj_player.y)
xtarget = obj_player.x + dcos(targetdirection)*(1000)
ytarget = obj_player.y - dsin(targetdirection)*(1000)
state = "atacando"