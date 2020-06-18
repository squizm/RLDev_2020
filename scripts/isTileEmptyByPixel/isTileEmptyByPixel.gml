/// @function isTileEmpty(x,y)
/// @description returns true is the tile at location x y is empty on the specified layer
/// @param tl {real} the ID of the tile element
/// @param x {integer} x pixel location to check
/// @param y {integer} y pixel location to check

var tl = argument[0]
var px = argument[1]
var py = argument[2]

var cellX = tilemap_get_cell_x_at_pixel(tl, px, py)
var cellY = tilemap_get_cell_y_at_pixel(tl, px, py)
return tilemap_get(tl, cellX, cellY);