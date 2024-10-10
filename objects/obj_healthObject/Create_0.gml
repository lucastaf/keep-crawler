flashOpacity = 0


function takeDamage(ammount){
	hp -= ammount
	flashOpacity = 1
	if hp <= 0{
		instance_destroy()
	}

}


	