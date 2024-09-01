// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function selfUpgrade(statusRise, priceRise){
	self.status += floor(self.status * statusRise/100)
	self.price += floor(self.price * priceRise/100)
	self.level++
}