/// @description findEmptyTile(tilemap)
/// @param tilemap {ds_grid} The grid to find an empty tile in

var grid = argument0;
var retval;
retval[0] = -1;
retval[1] = -1;
var found = false;
while(!found){
	var randX = floor(random_range(0,ds_grid_width(grid)));
	var randY = floor(random_range(0,ds_grid_height(grid)));
	if(ds_grid_get(grid, randX, randY) != TILE_TREE){
		found = true
		retval[0] = randX;
		retval[1] = randY;
	}
}
return retval