// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function update_boxes(){
allboxes ={
boxx : [361,1004,361,683,1004,683],
boxy : [250,250,500,500,500,250],
boxnames : ["Health","Strength","Stamina","XP Mult.","Ultimate"],
boxlevel : [global.localups.vida.level,global.localups.dmg.level,global.localups.stamina.level,global.localups.xpmult.level,global.localups.ultimate.level],
boxprice : [global.localups.vida.price,global.localups.dmg.price,global.localups.stamina.price,global.localups.xpmult.price,global.localups.ultimate.price],
boxstatus: [global.localups.vida.status,global.localups.dmg.status,global.localups.stamina.status,global.localups.xpmult.status,global.localups.ultimate.status],
}

upgrades_updates = {
price : [5,5,20,50,20],
status: [5,global.localups.dmg.status * 0.05,25,global.localups.xpmult.status * 0.05,25],
}
if global.class = "mage"{
array_push(allboxes.boxnames,"Mana")
array_push(allboxes.boxlevel,global.localups.mana.level)
array_push(allboxes.boxprice,global.localups.mana.price)
array_push(allboxes.boxstatus,global.localups.mana.status)
array_push(upgrades_updates.price,20)
array_push(upgrades_updates.status,25)
}
if global.class = "archer" || global.class = "bombman"{
array_push(allboxes.boxnames,"Ammo")
array_push(allboxes.boxlevel,global.localups.ammo.level)
array_push(allboxes.boxprice,global.localups.ammo.price)
array_push(allboxes.boxstatus,global.localups.ammo.status)
array_push(upgrades_updates.price,50)
array_push(upgrades_updates.status,1)		
}


}

function buy_item(preco,item){
	show_debug_message(item)
	if global.resources.money >= preco{
	global.resources.money -= preco
	//Upa as variaveis
	upgrade_item(item)
	}
}


function upgrade_item(item){
switch(item){
case "Health":
global.localups.vida.status+=upgrades_updates.status[currentselec]
global.localups.vida.price+=upgrades_updates.price[currentselec]
global.localups.vida.level++
break;
case "Strength":
global.localups.dmg.status+=upgrades_updates.status[currentselec]
global.localups.dmg.price+=upgrades_updates.price[currentselec]
global.localups.dmg.level++
break;
case "Stamina":
global.localups.stamina.status+=upgrades_updates.status[currentselec]
global.localups.stamina.price+=upgrades_updates.price[currentselec]
global.localups.stamina.level++
break;
case "XP Mult.":
global.localups.xpmult.status+=upgrades_updates.status[currentselec]
global.localups.xpmult.price+=upgrades_updates.price[currentselec]
global.localups.xpmult.level++
break;
case "Ultimate":
global.localups.ultimate.status+=upgrades_updates.status[currentselec]
global.localups.ultimate.price+=upgrades_updates.price[currentselec]
global.localups.ultimate.level++
break;
case"Mana":
global.localups.mana.status+=upgrades_updates.status[currentselec]
global.localups.mana.price+=upgrades_updates.price[currentselec]
global.localups.mana.level++
break;
case"Ammo":
global.localups.ammo.status+=upgrades_updates.status[currentselec]
global.localups.ammo.price+=upgrades_updates.price[currentselec]
global.localups.ammo.level++
break;
}

}
	
function debug_upgrades(){
//show_debug_message("Vida " + string(global.localups.vida))
show_debug_message("DMG " + string(global.localups.dmg))
/*show_debug_message("Stamina " + string(global.localups.stamina))
show_debug_message("Ultimate " + string(global.localups.ultimate))
show_debug_message("XPMult " + string(global.localups.xpmult))
show_debug_message("Mana " + string(global.localups.mana))
show_debug_message("Ammo " + string(global.localups.ammo))*/
}

function refresh_character(){
obj_personagem.status.vidatotal = global.localups.vida.status
obj_personagem.status.staminatotal = global.localups.stamina.status
obj_personagem.status.manatotal = global.localups.mana.status
obj_personagem.status.dano = global.localups.dmg.status
obj_personagem.status.ammo = global.localups.ammo.status
obj_personagem.status.recargault = 0.2*global.localups.ultimate.status
obj_personagem.status.ulttotal = global.localups.ultimate.status

}