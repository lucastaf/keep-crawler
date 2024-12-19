/// @description Drop Loot

part_system_destroy(stunParticles)
var drop = choose(obj_dinheiro,obj_xp, obj_health)
instance_create_depth(x,y,-90,drop,{value : level})
