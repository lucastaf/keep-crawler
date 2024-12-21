// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function vectorToAngle(vector = [0,0]){
	return (180/pi) * arctan2( -vector[1], vector[0] )
}


///@param {Real}angle {Real} force
function move_to_angle(angle, force){
	move_and_collide(lengthdir_x(force, angle),lengthdir_y(force, angle),obj_solid)
}


///@param {Real} distance {Real} initialX {Real} initialY
///@param {Real} angle angle in deegrees
///@description Converte de coordenadas polares para cartesiano dado um X,Y inicial
function polarToCartesianCoordinates(distance, angle, initialX = 0, initialY = 0){
	var Xammount = distance * dcos(angle)
	var YAmmount = distance * dsin(angle)
	return {
		x : initialX + Xammount,
		y : initialY - YAmmount // subtração por conta do plano cartesiano invertido
	}
}

