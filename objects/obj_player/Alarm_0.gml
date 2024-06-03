/// @description Timer Geral
alarm[0] = 100

if (ultimate < status.ulttotal) && !ultativo{
	if (ultimate+status.recargault) <= status.ulttotal{
		ultimate += status.recargault}
	else{
		ultimate = status.ulttotal
	}
}

if status.ammo < global.localups.ammo.status{
	status.ammo++
}