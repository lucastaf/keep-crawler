/// @description Insert description here
// You can write your code in this editor
if !instance_exists(obj_player){
instance_create_depth(650,600,0,obj_playerMage)
}

if !instance_exists(obj_levelstatus){
instance_create_depth(0,0,-100,obj_levelstatus)
}