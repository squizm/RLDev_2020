/*
/// CREATE EVENT
    // FOV stuff
    fovsurface = surface_create(room_width, room_height);

    shadowsize = 1100 // how far the walls cast a shadow
    fovarc = 90 // how big the vof arc is 

    lookdir = point_direction(x,y,room_width/2,room_height/2)

    /// DRAW EVENT
    if (surface_exists(fovsurface)) {
	draw_surface(fovsurface, 0, 0);
    }

    /// STEP EVENT

    /// Make the FOV and put it on a surface 

    surface_set_target(fovsurface)

    draw_set_colour(c_white)
    draw_set_alpha(0.4)
    draw_rectangle(0,0,room_width,room_height,false)
    draw_set_alpha(1)

    draw_set_blend_mode(bm_subtract)

    /// ANYTHING I DRAW HERE WILL BE REMOVED FROM THE FOV

    with(obj_wall) { /// REMOVE EVERYTHING BEHIND THE WALLS


	draw_set_colour(c_black)

	draw_primitive_begin(pr_trianglestrip)

	    draw_vertex(bbox_left, bbox_top);
	    var dir = point_direction(other.x,other.y,bbox_left,bbox_top)
	    draw_vertex(x+lengthdir_x(other.shadowsize,dir), y+lengthdir_y(other.shadowsize,dir));

	    draw_vertex(bbox_left, bbox_bottom);
	    var dir = point_direction(other.x,other.y,bbox_left,bbox_bottom)
	    draw_vertex(x+lengthdir_x(other.shadowsize,dir), y+lengthdir_y(other.shadowsize,dir));

	    draw_vertex(bbox_right, bbox_top);
	    var dir = point_direction(other.x,other.y,bbox_right,bbox_top)
	    draw_vertex(x+lengthdir_x(other.shadowsize,dir), y+lengthdir_y(other.shadowsize,dir));

	    draw_vertex(bbox_right, bbox_bottom);
	    var dir = point_direction(other.x,other.y,bbox_right,bbox_bottom)
	    draw_vertex(x+lengthdir_x(other.shadowsize,dir), y+lengthdir_y(other.shadowsize,dir));

	draw_primitive_end()

    }

    // DRAW WHAT IS BEHIND THE PLAYER IN 

    draw_primitive_begin(pr_trianglefan);
    draw_vertex(x, y);

    var fovarcprocessed = fovarc/10
    for(i=0; i&lt;=36-fovarcprocessed; i++) {
	xx = lengthdir_x(1000, (i*10)+lookdir+(fovarc/2))
	yy = lengthdir_y(1000, (i*10)+lookdir+(fovarc/2))
	draw_vertex(x+xx, y+yy);
    }

    draw_primitive_end();

    draw_set_blend_mode(bm_normal)
    surface_reset_target();

  */  