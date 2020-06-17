/// @description getNumAdjacentWalls(tileLayer, x,y)
/// @param tileLayer {real} the tile layer ID of the layer to check
/// @param x {integer} the x location of the cell
/// @param y {integer} the y location of the cell

var tl = argument[0]
var xx = argument[1]
var yy = argument[2]
var numWalls = 0

for(var i = xx-1; i <= xx+1; i++)
{
	if(i < 0) { continue }
	for(var j = yy-1; j <= yy+1; j++)
	{
		if(j < 0){ continue }
		if(i=xx && j=yy) { continue }
		
		if(tilemap_get(tl,i,j) == 16){
			numWalls++
		}
	}
}

return numWalls