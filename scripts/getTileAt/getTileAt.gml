/// @description getTileAt(grid,x,y)
/// @param grid {real} The ID of the grid to search
/// @param x {integer} the cell x location
/// @param y {integer} the cell y location

var grid = argument0
var locX = argument1
var locY = argument2

if(locX >= ds_grid_width(grid) || locX < 0) { return -1}
if(locY >= ds_grid_height(grid) || locY < 0) { return -1}

return ds_grid_get(grid, locX, locY);
