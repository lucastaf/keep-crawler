/// @description Dar o bote
delayatk = 0
var targetdirection = point_direction(x,y,obj_personagem.x,obj_personagem.y)
xtarget = obj_personagem.x + dcos(targetdirection)*(1000)
ytarget = obj_personagem.y - dsin(targetdirection)*(1000)
state = "atacando"