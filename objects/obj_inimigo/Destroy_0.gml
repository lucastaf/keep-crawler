/// @description Drop Loot

part_system_destroy(stunParticles)
var drop = choose(obj_dinheiro,obj_xp)
instance_create_depth(x,y,-90,drop,{value : level})
