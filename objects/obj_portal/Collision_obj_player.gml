other.resetPosition()
global.dungeonLevel++
if global.dungeonLevel % 5 == 0 {
	room_goto(room_loja)
}else if global.dungeonLevel < 10 {
	room_goto(room_floresta)
}else{
	room_goto(room_gameStart)	
}
