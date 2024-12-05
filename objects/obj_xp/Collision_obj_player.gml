global.status.xp += value
while global.status.xp >= 1000{
	global.status.xp -= 1000
	global.status.level ++
}

instance_destroy()