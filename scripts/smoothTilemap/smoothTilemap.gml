/// @description smoothTilemap(tileLayer)
/// @param tileLayer {real} the tile layer ID of the layer to smooth

var tl = argument[0]

for(var xx = 0; xx < room_width div 8; xx++)
{
	for(var yy = 0; yy < room_height div 8; yy++)
	{
		if(getNumAdjacentWalls(tl,xx,yy) < 3)
		{
			tilemap_set(tl,choose(15,60),xx,yy)
		}
	}
}