/// @description Insert description here
// You can write your code in this editor
if(!surface_exists(tileSurf)) {
	tileSurf = surface_create(room_width, room_height)
	surface_set_target(tileSurf)
	var width = room_width div 8
	var height  = room_height div 8
	
	// Fill map
	for (var xx = 0; xx < width ; ++xx){
	    for (var yy = 0; yy < height; ++yy){
			ds_grid_set(tilemap,xx,yy,choose(TILE_TREE, TILE_EMPTY));
		}
	}
	
	//Smooth map
	for(var i = 0; i < 3; i++) { smoothTiles(tilemap) }
	
	//Draw Map
	for (var xx = 0; xx < width ; ++xx){
	    for (var yy = 0; yy < height; ++yy){ 
			draw_sprite(sprTiles, ds_grid_get(tilemap,xx,yy), xx*8, yy*8)
		}
	}	
	surface_reset_target()
}