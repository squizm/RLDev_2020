/// @description Insert description here
state_execute()
if(!surface_exists(surfFOV)){
	surfFOV = surface_create(view_wport[0],view_hport[0]);
	surface_set_target(surfFOV)
	// Fill with black
	draw_set_color(c_white)
	draw_rectangle(0,0,view_wport[0], view_hport[0], false)
	// set to subtract
	draw_set_color(c_black)
	// remove each tile in LOS
	draw_circle(x,y,16,false)
	// reset draw
	surface_reset_target()
	draw_flush()
}

