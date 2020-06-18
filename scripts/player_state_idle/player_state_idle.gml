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
	var layerID = layer_get_id("tiles")
	var tl = layer_tilemap_get_id(layerID)
	var tileData = getTileDataByPixel(tl,x + (hmove*8) + sprite_get_xoffset(sprite_index), y + (vmove*8) + sprite_get_yoffset(sprite_index))
	if(tileData != TILE_TREE){	
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
	}
}