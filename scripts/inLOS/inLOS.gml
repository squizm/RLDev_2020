/// @description inLOS(x1,y1,x2,y2,pixelInterval)
/// @param x1 {integer} the x location of the first object in pixels
/// @param y1 {integer} the y location of the first object in pixels
/// @param x2 {integer} the x location of the second object in pixels
/// @param y2 {integer} the y location of the second object in pixels
/// @param pixelInterval {integer} the distance between checks in pixels

var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var pixelInterval = argument4;
var dis = 0;
var maxDis = point_distance(x1,y1,x2,y2);
var dir = point_direction(x1,y1,x2,y2);
var checks = maxDis/pixelInterval;
repeat (checks)
{ 
	var xCheck = x1 + lengthdir_x(dis,dir);
	var yCheck = y1 + lengthdir_y(dis,dir);

	var grid = instance_find(objTileMapper, 0);
	var tileData = getTileAt(grid.tilemap,xCheck div 8, yCheck div 8)
	if(tileData == TILE_TREE || tileData == -1)
	{
		return false;
	}
	dis += pixelInterval;
}
return true;