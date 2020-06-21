/// @description Insert description here
// FOV stuff
fovsurface = surface_create(room_width, room_height);

shadowsize = 1100 // how far the walls cast a shadow
fovarc = 360 // how big the vof arc is 

lookdir = point_direction(x,y,room_width/2,room_height/2)