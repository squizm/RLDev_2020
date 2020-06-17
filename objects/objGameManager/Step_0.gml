/// @description check for escape

if(keyboard_check_released(vk_escape)){
	game_end()
}

if(keyboard_check_released(vk_f10)){
	isFullscreen = !isFullscreen;
	window_set_fullscreen(isFullscreen)
}