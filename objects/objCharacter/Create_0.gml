/// @description Setup Player
amplitude = 0.05;
frequency = 0.05;
timer = 0;
stretch=0;

hmove = 0;
vmove = 0;

destX = 0;
destY = 0;
startX = 0;
startY = 0;

sprite_set_offset(sprite_index, 4, 7);

/// Create FOV surface
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


///Setup State Machine
state_machine_init();

//Define States
state_create("Idle",player_state_idle);
state_create("Move",player_state_move);
state_create("Bump", player_state_bump);
//Set the default state
state_init("Idle");
