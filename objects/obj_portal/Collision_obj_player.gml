
global.dungeonLevel++
if global.dungeonLevel % 5 == 0 {
	room_goto(rm_loja)
	other.resetPosition(650, 600)
}else if global.dungeonLevel < 10 {
	room_goto(rm_area1)
	other.resetPosition(800, 512)
}else{
	room_goto(rm_game_start)	
	other.resetPosition(650, 600)
}


