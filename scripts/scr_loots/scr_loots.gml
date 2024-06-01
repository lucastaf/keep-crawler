// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function drop_loot(level){
var drop = choose(obj_dinheiro,obj_xp)
instance_create_depth(x,y,-90,drop,{
value : level,
})
}