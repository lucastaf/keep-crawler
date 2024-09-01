if(global.status.money >=  lvlObject.price){
	global.status.money -= lvlObject.price
	lvlObject.upgrade()
}