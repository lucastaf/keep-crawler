event_inherited();

status.ammo = global.localups.ammo.status

function attack (xpos,ypos){
	if instance_number(obj_marreta) = 0 {
		instance_create_depth(other.x,other.y,-10,obj_marreta,{
		relativePosition : [xpos,ypos],
		});
	}
}