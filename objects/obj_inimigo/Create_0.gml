//Levels

spd = 4

level = dmg + vidaTotal

knockBackTimeSource = time_source_create(time_source_game,20, time_source_units_frames, function(){
						invincibility = false
						knockBackForce = 0
						})

//States
invincibility = false
knockBackForce = 0
knockbackAngle = 0