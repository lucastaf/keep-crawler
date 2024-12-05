flashOpacity = 0
function onDeath(){
	instance_destroy()	
}


function takeDamage(ammount){
	hp -= ammount
	flashOpacity = 1
	if hp <= 0{
		onDeath()
	}

}


	