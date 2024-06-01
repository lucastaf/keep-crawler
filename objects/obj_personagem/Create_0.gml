class="bombman"
status = {
vidatotal : global.localups.vida.status,
staminatotal : global.localups.stamina.status,
manatotal: global.localups.mana.status,
dano : global.localups.sworddmg.status,
flechas : global.localups.bowammo.status,
bombas : global.localups.bombammo.status,
recargault : 10,
ulttotal: global.localups.ultimate.status,
staminaespada : 30,
staminadodge : 50,
}
alarm[0]=50
movimento= {
fullspd: 6,
spd : 6,
hspd : 0,
vspd : 0,
hpress : false,
vpress : false,
}
face = "cima"

classes=["swordsman","archer","mage","bombman","lancer"]
ultativo = false
ultimate = status.ulttotal
dodging = false
charge = 0

mana = status.manatotal
stamina = status.staminatotal
vida = status.vidatotal

instance_create_depth(0,0,-100,obj_levelstatus)


