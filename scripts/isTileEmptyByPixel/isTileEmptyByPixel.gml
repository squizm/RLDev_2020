/// @function isTileEmpty(layerName, x,y)
/// @description returns true is the tile at location x y is empty on the specified layer
/// @param layerName {string} the name of the layer to look at
/// @param x {integer} x pixel location to check
/// @param y {integer} y pixel location to check



var lay_id = layer_get_id(argument[0]);
var map_id = layer_tilemap_get_id(lay_id);

var locX = tilemap_get_cell_x_at_pixel(map_id, argument[1], argument[2])
var locY = tilemap_get_cell_y_at_pixel(map_id, argument[1], argument[2])

var data = tilemap_get(map_id, locX, locY);
return tile_get_empty(data)