/// @description Generate Random Dungeon
randomize()

//layer_tilemap_create(tileLayer,0,0,tsKennyCol,room_width div 8, room_height div 8)
tileLayer = layer_get_id("tiles")
tileElement = layer_tilemap_get_id(tileLayer)

for(var xx = 0; xx < room_width div 8; xx++)
{
	for(var yy = 0; yy < room_height div 8; yy++)
	{
		tilemap_set(tileElement, choose(TILE_EMPTY,TILE_TREE,TILE_GRASS), xx,yy)
	}
}

for(var i = 0; i < 4; i++) {
	smoothTilemap(tileElement)
}

var found = false
while(!found){
	var px = random_range(0, room_width) div 8
	var py = random_range(0, room_height) div 8	
	var data = tilemap_get(tileElement, px, py);
	if(data == TILE_EMPTY){
		found = true
	}
}
var char = instance_create_layer(px*8, py*8,"Instances",objCharacter)
with(char){
	isPlayer=true
	sprite_set_offset(sprite_index,4,7)
}
camera_set_view_target(view_camera[0], char)
