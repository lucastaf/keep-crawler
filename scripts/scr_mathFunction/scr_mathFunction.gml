// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function vectorToAngle(vector = [0,0]){
	return (180/pi) * arctan2( -vector[1], vector[0] )
}