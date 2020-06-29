stretch = 1 + sin(timer * frequency) * amplitude;
timer++;
startX = x
startY = y
destX = x;
destY = y;

if(isPlayer) {
	key_right = keyboard_check_released(ord("D"));
	key_left = keyboard_check_released(ord("A"));
	key_up = keyboard_check_released(ord("W"));
	key_down = keyboard_check_released(ord("S"));

	hmove = key_right - key_left
	vmove = key_down - key_up
}

if(hmove != 0 || vmove != 0)
{
	var grid = instance_find(objTileMapper, 0);
	var tileData = getTileAt(grid.tilemap,(x div 8) + hmove, (y div 8) + vmove)
	if(tileData != TILE_TREE && tileData != -1){	
		audio_sound_pitch(sndStep, random_range(0.8,1.2))
		audio_play_sound(sndStep, 0, false)
		destX = x + (hmove*8)
		destY = y + (vmove*8)
		surface_free(surfFOV)
		state_switch("Move")
	}else{
		destX = x + (hmove*4)
		destY = y + (vmove*4)
		audio_play_sound(sndPlayerHit,0,false)
		ds_grid_set(grid.tilemap, (x div 8) + hmove, (y div 8) + vmove, TILE_GRASS);
		surface_free(grid.tileSurf)
		state_switch("Bump")
	}
}