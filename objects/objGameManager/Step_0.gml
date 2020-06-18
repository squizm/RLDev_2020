/// @description check for escape

if(keyboard_check_released(vk_escape)){
	game_end()
}

if(keyboard_check_released(vk_f10)){
	isFullscreen = !isFullscreen;
	window_set_fullscreen(isFullscreen)
}

if(keyboard_check_released(vk_f8)){
	if(global.save_gif == false)
	{
		global.gif_image = gif_open(camera_get_view_width(0), camera_get_view_height(0));
		global.save_gif = true;
	}else {
		global.save_gif = false;
		gif_save(global.save_gif, "GameCapture_camera.gif")
	}	
}

if (global.save_gif)
{
	gif_add_surface(global.gif_image, application_surface, 2,0,0,1);
}