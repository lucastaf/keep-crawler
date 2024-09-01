if room != room_gameStart return

var upgradesList = [{
	label: "VIDA",
	lvlObject : {
			price: 2,
			status: 0,
	},
	itemSprite : spr_shopVida,
	onClick : function () {
		self.lvlObject.price++
		self.lvlObject.status += 50
		player_instance.lvlUpgrades.vida.status += 50
		initialStats.vida += 50
	}
}]

for(var i = 0; i < array_length(upgradesList); i++){
	var yAmmount = ceil((i+1)/2) * 150
	var XAmmount = (i%2) * 800
	
	instance_create_depth(150 + XAmmount,yAmmount+50,10, obj_upgradeItem, upgradesList[i])

}