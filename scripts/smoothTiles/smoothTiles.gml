/// @description smoothTilemap2(grid)
/// @param tileLayer {real} the ds_grid containing the tiles

var grid = argument[0]

for(var xx = 0; xx < room_width div 8; xx++)
{
	for(var yy = 0; yy < room_height div 8; yy++)
	{
		if( xx == 0 || xx == (room_width div 8)-1 || yy == 0 || yy == (room_height div 8)-1){
			continue;
		}
		if(getNumAdjacentWalls(grid,xx,yy) < 3)
		{
			ds_grid_set(grid,xx,yy,choose(TILE_DIRT, TILE_GRASS, TILE_EMPTY))
		}
	}
}