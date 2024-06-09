if !collision_rectangle(0,0,room_width,room_height,self,0,false){
	instance_destroy()
}

playerInstance.mana -= playerInstance.manaOrb / 20

if playerInstance.mana <= 0 instance_destroy()

if keyboard_check_released(ord(pressedKey)) instance_destroy()
x = obj_player.x + relativePosition[0] * playerSize
y = obj_player.y + relativePosition[1] * playerSize