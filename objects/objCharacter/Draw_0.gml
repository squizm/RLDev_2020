/// @description Insert description here
draw_sprite_ext(sprite_index, image_index, x+4, y+7, image_xscale, stretch, image_angle, image_blend, image_alpha);

if(isPlayer){
	if(!surface_exists(surfFOV) && isPlayer){
		surfFOV = surface_create(room_width,room_height);
		surface_set_target(surfFOV)
		draw_set_alpha(0.6)
		draw_set_color(c_white)
		draw_rectangle(0,0,room_width, room_height, false)
		draw_set_alpha(1.0)
		draw_set_color(c_black)

		for(var xx = 0; xx < room_width div 8; xx++)
		{
			for(var yy = 0; yy < room_height div 8; yy++)
			{
				if(point_distance(x,y,xx*8,yy*8) div 8 <= 24){
					if(inLOS(x,y,(xx*8),(yy*8),8)){
						draw_rectangle(xx*8,yy*8, xx*8+8, yy*8+8, false);
					}
				}
			}
		}		
		surface_reset_target()
	}
	gpu_set_blendmode(bm_subtract)
	draw_surface(surfFOV,0,0);
	gpu_set_blendmode(bm_normal)
}