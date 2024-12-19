flashOpacity = 0
function onDeath(){
	instance_destroy()	
}

function playDamageSound(){
	audio_play_sound(choose(snd_hit_1,snd_hit_2,snd_hit_3),1,false)	
}


///@param {Real} ammount  {Any} damageSound
///@description Recebe dano na instancia atual
function takeDamage(ammount){
	if(ammount > 0){
		if is_method(argument[1]) {
			argument[1]()
		} else{	
			playDamageSound()
		}
		hp -= ammount
		flashOpacity = 1
		if hp <= 0{
			onDeath()
		}
	}

}

	