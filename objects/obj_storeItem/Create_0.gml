playerInstance = obj_player ?? null
show_debug_message(typeof(playerInstance))
function upgrade(status){
	return function (){
		show_debug_message(playerInstance.lvlUpgrades[$ status])
		return
		//playerInstance.lvlUpgrades[status].level++
		//playerInstance.lvlUpgrades[status].status += obj_player.lvlUpgrades.dmg.status * 0.05
		//playerInstance.lvlUpgrades[status].price += obj_player.lvlUpgrades.dmg.price * 0.05
	}
}

instance_create_depth(100,150,10, obj_upgradeItem, {
	onConfirm : upgrade("dmg")
})