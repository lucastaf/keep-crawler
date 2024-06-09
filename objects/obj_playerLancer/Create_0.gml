event_inherited();

function attack(xpos,ypos){
	if instance_number(obj_lanca) = 0 || ultativo = 1 {
		instance_create_depth(x + xpos, y + ypos,-10,obj_lanca,{
		relativePosition : [xpos, ypos],
		ulted : ultativo,			
		dmg : lvlUpgrades.dmg.status * 2.5
		})
	}
}
