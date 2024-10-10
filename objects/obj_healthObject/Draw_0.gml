draw_self()

if(variable_instance_exists(self, "flashOpacity")){
	gpu_set_fog(true, c_white, 0 ,0)

	draw_sprite_ext(sprite_index, image_index, x , y ,image_xscale ,image_yscale, 0, c_white, flashOpacity)

	gpu_set_fog(false, c_white, 0 ,0)
}