event_inherited()
//Levels
level = dmg + maxHealth

knockBackTimeSource = time_source_create(time_source_game,20, time_source_units_frames, function(){
						invincibility = false
						knockBackForce = 0
						})
hp = maxHealth
//States
invincibility = false
knockBackForce = 0
knockbackAngle = 0

flashOpacity = 0