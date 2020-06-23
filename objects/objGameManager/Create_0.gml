/// @description Setup Window
cursor_sprite = sprCursor;
draw_set_font(fntDamage);
window_set_cursor(cr_none);
isFullscreen = false;
global.save_gif = false;
randomize()

#macro TILE_EMPTY 15
#macro TILE_TREE 75
#macro TILE_GRASS 61
#macro TILE_DIRT 60

for(var i = 0; i < 50; i++){
	
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
	char.image_index = random(char.image_number)
	with(char){
		sprite_set_offset(sprite_index,4,7)
	}
}