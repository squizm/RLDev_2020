/// @description Create tile surface
/// @description Insert description here
// You can write your code in this editor
tilemap = ds_grid_create(room_width div 8 , room_height div 8);
ds_grid_clear(tilemap, TILE_TREE);
gridWidth = room_width div 8;
gridHeight  = room_height div 8;
randomize();
depth = -1;
	
// Fill map
for (var xx = 0; xx < gridWidth ; ++xx){
	for (var yy = 0; yy < gridHeight; ++yy){
		ds_grid_set(tilemap,xx,yy,choose(TILE_TREE, TILE_EMPTY));
	}
}
	
//Smooth map
for(var i = 0; i < 5; i++) { smoothTiles(tilemap) }
	
tileSurf = 0

//Add characters
for(var i = 0; i < 50; i++){
	var location = findEmptyTile(tilemap)
	var char = instance_create_layer(location[0]*8, location[1]*8,"Instances",objCharacter)
	char.image_index = random(char.image_number)
	with(char){
		sprite_set_offset(sprite_index,4,7)
		depth = -2;
	}
}

var location = findEmptyTile(tilemap)
var player = instance_create_layer(location[0]*8,location[1]*8,"Instances", objCharacter);
with(player){
	//sprite_set_offset(sprite_index,4,7);
	isPlayer = true;
	depth= -2
}
camera_set_view_target(view_camera[0],player)