// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_swordatk(xpos,ypos,face,angle){
if instance_number(obj_ataque) <=3 && stamina >= status.staminaespada && instance_number(obj_ataque) = 0{
var golpe = instance_create_depth(x+xpos,y+ypos,-10,obj_ataque)
golpe.image_angle = angle
golpe.face = face
stamina -= status.staminaespada
}
}

function scr_bowatk(xpos,ypos,face,angle){
if status.ammo > 0{
var charged = false
if charge >=100{
charged = true
}	
var golpe = instance_create_depth(x+xpos,y+ypos,-10,obj_flecha)
golpe.direction = face
golpe.image_angle = angle
status.ammo --
charge = 0
if charged {golpe.piercing=true golpe.speed=20 golpe.dmg=3*golpe.dmg}
}
}



function scr_staffatk(pos){
if mana >= 3{
mana -= 3
}
if mana >=20{
if usandolaser = false{
usandolaser = true
instance_create_depth(x,y,-10,obj_laser,{
 face : pos
})
}
}else if instance_exists(obj_laser){instance_destroy(obj_laser)}
}

function scr_hammeratk(objface){
if instance_number(obj_marreta) = 0 {
instance_create_depth(x,y,-10,obj_marreta,{
face : objface,
});
	}
}

function scr_spear(xobj,yobj,objface){
if instance_number(obj_lanca) = 0 || ultativo = 1{
instance_create_depth(x+xobj,y+yobj,-10,obj_lanca,{
direction : objface,
ulted : ultativo
})

}

}