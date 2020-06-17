/// @function isTileEmpty(layerName, x,y)
/// @description returns true is the tile at location x y is empty on the specified layer
/// @param layerName {string} the name of the layer to look at
/// @param x {integer} x value of the tilemap
/// @param y {integer} y value of the tilemap

var lay_id = layer_get_id(argument[0]);
var map_id = layer_tilemap_get_id(lay_id);
var data = tilemap_get(map_id, argument[1], argument[2]);
return tile_get_empty(data)