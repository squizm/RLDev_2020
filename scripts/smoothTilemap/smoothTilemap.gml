/// @description smoothTilemap(tileLayer)
/// @param tileLayer {real} the tile layer ID of the layer to smooth
for(var xx = 0; xx < room_width div 8; xx++)
{
	for(var yy = 0; yy < room_height div 8; yy++)
	{
		if(getNumAdjacentWalls(argument[0],xx,yy) < 3)
		{
			tilemap_set(global.tileElement,choose(15,60),xx,yy)
		}
	}
}