other.resetPosition()
global.dungeonLevel++
if global.dungeonLevel % 5 == 0 {
	room_goto(rm_loja)
}else if global.dungeonLevel < 10 {
	room_goto(rm_area1)
}else{
	room_goto(rm_game_start)	
}
