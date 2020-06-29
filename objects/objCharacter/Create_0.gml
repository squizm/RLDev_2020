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
isPlayer = false;

sprite_set_offset(sprite_index, 4, 7);

/// Create FOV surface
surfFOV = noone;

///Setup State Machine
state_machine_init();

//Define States
state_create("Idle",player_state_idle);
state_create("Move",player_state_move);
state_create("Bump", player_state_bump);
//Set the default state
state_init("Idle");
