/// @description Insert description here


if(isPlayer){
	if(!surface_exists(surfFOV)){
		surfFOV = surface_create(room_width,room_height);
		surface_set_target(surfFOV)
		draw_set_alpha(0.6)
		draw_set_color(c_white)
		draw_rectangle(0,0,room_width, room_height, false)
		draw_set_alpha(1.0)
		draw_set_color(c_black)
		var tileMap = instance_find(objTileMapper,0)

		for(var xx = 0; xx < room_width div 8; xx++)
		{
			for(var yy = 0; yy < room_height div 8; yy++)
			{
				if(point_distance(x,y,xx*8,yy*8) div 8 <= 24){
					if(inLOS(x+4,y+4,(xx*8)+4,(yy*8)+4,8)){						
						ds_grid_set(tileMap.seenTiles,xx,yy,true);
						draw_rectangle(xx*8,yy*8, xx*8+7, yy*8+7, false);
					}
				}
			}
		}
		surface_free(tileMap.seenTileSurf);
		surface_free(tileMap.tileSurf);
		surface_reset_target()
	}
	draw_sprite_ext(sprite_index, image_index, x+4, y+7, image_xscale, stretch, image_angle, image_blend, image_alpha);
	gpu_set_blendmode(bm_subtract)
	draw_surface(surfFOV,0,0);
	gpu_set_blendmode(bm_normal)
} else {
	var tileMapper = instance_find(objTileMapper,0)
	if(inLOS(x+4,y+4,tileMapper.player.x+4, tileMapper.player.y+4,8)){
		draw_sprite_ext(sprite_index, image_index, x+4, y+7, image_xscale, stretch, image_angle, image_blend, image_alpha);
	}
}