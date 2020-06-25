stretch = 1 + sin(timer * frequency) * amplitude;
timer++;

if(isPlayer) {
	key_right = keyboard_check_released(ord("D"));
	key_left = keyboard_check_released(ord("A"));
	key_up = keyboard_check_released(ord("W"));
	key_down = keyboard_check_released(ord("S"));

	hmove = key_right - key_left
	vmove = key_down - key_up
}

if(hmove != 0 or vmove != 0)
{
	startX = x
	startY = y
	var grid = instance_find(objTileMapper, 0);
	var tileData = getTileAt(grid.tilemap,(x div 8) + hmove, (y div 8) + vmove)
	if(tileData != TILE_TREE && tileData != -1){	
		audio_sound_pitch(sndStep, random_range(0.8,1.2))
		audio_play_sound(sndStep, 0, false)
		destX = x + (hmove*8)
		destY = y + (vmove*8)
		state_switch("Move")
	}else{
		destX = x + (hmove*4)
		destY = y + (vmove*4)
		audio_play_sound(sndPlayerHit,0,false)
		state_switch("Bump")
		ds_grid_set(grid.tilemap, (x div 8) + hmove, (y div 8) + vmove, TILE_GRASS);
		surface_free(grid.tileSurf) //should trigger redraw?
	}
}