// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function selfUpgrade(statusRise, priceRise){
	self.status += floor(self.status * statusRise/100)
	self.price += floor(self.price * priceRise/100)
	self.level++
}

function createStartGameUpgrades(){
	var upgradesList = [{
	label: "VIDA",
	lvlObject : initialStats.vida,
	itemSprite : spr_shopVida,
	onClick : function () {
		if global.status.level >= self.lvlObject.price {
			global.status.level -= self.lvlObject.price
			self.lvlObject.price++
			self.lvlObject.status += 50
			obj_player.lvlUpgrades.vida.status += 50
		}
	}
},
{
	label: "DANO",
	lvlObject : initialStats.dmg,
	itemSprite : spr_shopDmg,
	onClick : function () {
		if global.status.level >= self.lvlObject.price {
			global.status.level -= self.lvlObject.price
			self.lvlObject.price++
			self.lvlObject.status += 50
			obj_player.lvlUpgrades.dmg.status += 50
		}
	}
},
{
	label: "STAMINA",
	lvlObject : initialStats.stamina,
	itemSprite : spr_shopStamina,
	onClick : function () {
		if global.status.level >= self.lvlObject.price {
			global.status.level -= self.lvlObject.price
			self.lvlObject.price++
			self.lvlObject.status += 50
			obj_player.lvlUpgrades.stamina.status += 50
		}
	}
}]

for(var i = 0; i < array_length(upgradesList); i++){
	var yAmmount = ceil((i+1)/2) * 150
	var XAmmount = (i%2) * 800
	
	instance_create_depth(150 + XAmmount,yAmmount+50,10, obj_upgradeItem, upgradesList[i])

}
}