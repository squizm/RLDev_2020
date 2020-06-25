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
}