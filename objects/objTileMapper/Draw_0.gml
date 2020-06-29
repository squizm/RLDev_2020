/// @description Insert description here
// You can write your code in this editor
if(!surface_exists(tileSurf)) {
	tileSurf = surface_create(room_width, room_height)
	surface_set_target(tileSurf)
	for (var xx = 0; xx < gridWidth ; ++xx){
	    for (var yy = 0; yy < gridHeight; ++yy){ 
			draw_sprite(sprTiles, ds_grid_get(tilemap,xx,yy), xx*8, yy*8)
		}
	}	
	surface_reset_target()
	draw_surface(tileSurf,0,0);
} else {
	draw_surface(tileSurf,0,0);
}

if(!surface_exists(seenTileSurf)) {
	seenTileSurf = surface_create(room_width, room_height)
	surface_set_target(seenTileSurf)
	draw_set_color(c_white)
	draw_rectangle(0,0,room_width, room_height, false)
	draw_set_alpha(1.0)
		draw_set_color(c_black)
	for (var xx = 0; xx < gridWidth ; ++xx){
	    for (var yy = 0; yy < gridHeight; ++yy){ 
			if(ds_grid_get(seenTiles,xx,yy))
			{
				draw_rectangle(xx*8,yy*8, xx*8+7, yy*8+7, false)
			}
		}
	}	
	draw_set_color(c_white)
	surface_reset_target()
	gpu_set_blendmode(bm_subtract)
	draw_surface(seenTileSurf,0,0);
	gpu_set_blendmode(bm_normal)
	
} else {
	gpu_set_blendmode(bm_subtract)
	draw_surface(seenTileSurf,0,0);
	gpu_set_blendmode(bm_normal)
}