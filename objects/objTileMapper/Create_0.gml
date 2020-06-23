/// @description Create tile surface
tilemap = ds_grid_create(room_width div 8 , room_height div 8)
ds_grid_clear(tilemap, TILE_TREE)
tileSurf = 0