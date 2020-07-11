/// @description Create tile surface
/// @description Insert description here
// You can write your code in this editor

gridWidth = room_width div 8;
gridHeight  = room_height div 8;
tilemap = ds_grid_create(gridWidth, gridHeight);
seenTiles = ds_grid_create(gridWidth, gridHeight);
ds_grid_clear(tilemap, TILE_TREE);
ds_grid_clear(seenTiles, false);

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
	
tileSurf = noone;
seenTileSurf = noone;

//Add characters
for(var i = 0; i < 50; i++){
	var location = findEmptyTile(tilemap)
	var char = instance_create_layer(location[0]*8, location[1]*8,"Instances",objCharacter)
	char.image_index = random(char.image_number)
	with(char){
		depth = -2;
		hp_max = 25;
		hp_cur = hp_max;
	}
}

var location = findEmptyTile(tilemap)
player = instance_create_layer(location[0]*8,location[1]*8,"Instances", objCharacter);
with(player){
	isPlayer = true;
	depth= -3;
	hp_max = 50;
	hp_cur = hp_max;
}
camera_set_view_target(view_camera[0],player)