/// @description Insert description here
draw_sprite_ext(sprite_index, image_index, x+4, y+7, image_xscale, stretch, image_angle, image_blend, image_alpha);
if(surface_exists(surfFOV)){
	//gpu_set_blendmode(bm_subtract)
	draw_surface(surfFOV,0,0);
	//gpu_set_blendmode(bm_normal)
}