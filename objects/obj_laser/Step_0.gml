if !collision_rectangle(0,0,room_width,room_height,self,0,false){
	instance_destroy()
}

playerInstance.mana -= playerInstance.status.manaOrb / 20

if playerInstance.mana <= 0 instance_destroy()

if keyboard_check_released(ord(pressedKey)) instance_destroy()
x = obj_personagem.x + relativePosition[0] * playerSize
y = obj_personagem.y + relativePosition[1] * playerSize