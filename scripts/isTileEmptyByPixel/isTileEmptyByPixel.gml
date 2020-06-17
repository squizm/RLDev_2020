/// @function isTileEmpty(x,y)
/// @description returns true is the tile at location x y is empty on the specified layer
/// @param x {integer} x pixel location to check
/// @param y {integer} y pixel location to check

var locX = tilemap_get_cell_x_at_pixel(global.tileElement, argument[0], argument[1])
var locY = tilemap_get_cell_y_at_pixel(global.tileElement, argument[0], argument[1])
return tilemap_get(global.tileElement, locX, locY);