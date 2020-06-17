/// @description Generate Random Dungeon
global.tileLayer = layer_create(5, "walls")
global.tileElement = layer_tilemap_create(global.tileLayer,0,0,tsKennyCol,room_width div 8, room_height div 8)

var empty = 15
var wall = 16

for(var xx = 0; xx < room_width div 8; xx++)
{
	for(var yy = 0; yy < room_height div 8; yy++)
	{
		tilemap_set(global.tileElement, choose(empty,wall), xx,yy)
	}
}

for(var i = 0; i < 1; i++) {
	smoothTilemap(global.tileElement)
}

var found = false
while(!found){
	var px = random_range(0, room_width) div 8
	var py = random_range(0, room_height) div 8	
	var data = tilemap_get(global.tileElement, px, py);
	if(data == empty){
		found = true
	}
}
var char = instance_create_layer(px*8, py*8,"Instances",objCharacter)
with(char){
	isPlayer=true
	sprite_set_offset(sprite_index,4,7)
}
camera_set_view_target(view_camera[0], char)
