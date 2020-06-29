/// @description Insert description here
state_execute()
if(!surface_exists(surfFOV) && isPlayer){
	surfFOV = surface_create(view_wport[0],view_hport[0]);
	surface_set_target(surfFOV)
	draw_set_alpha(0.6)
	draw_set_color(c_white)
	draw_rectangle(0,0,view_wport[0], view_hport[0], false)
	draw_set_alpha(1.0)
	draw_set_color(c_black)
	//draw_circle_color(x+4,y+7,128,c_black,c_white,false)
	// draw FOV squares

	for(var xx = 0; xx < room_width div 8; xx++)
	{
		for(var yy = 0; yy < room_height div 8; yy++)
		{
			if(point_distance(x,y,xx*8,yy*8) div 8 <= 16){
				if(inLOS(x,y,(xx*8),(yy*8),8)){
					draw_rectangle(xx*8,yy*8, xx*8+8, yy*8+8, false);
				}
			}
		}
	}	
	
	surface_reset_target()
	draw_flush()
}

