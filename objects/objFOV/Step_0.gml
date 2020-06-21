 /// Make the FOV and put it on a surface 
x= global.playerID.x
y = global.playerID.y

surface_set_target(fovsurface)

draw_set_colour(c_black)
draw_rectangle(0,0,room_width,room_height,false)

draw_set_colour(c_white)

with(objCollision) { 

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
draw_primitive_begin(pr_trianglefan);
draw_vertex(x, y);

var fovarcprocessed = fovarc/10
for(var i=0; i <= 36-fovarcprocessed; i++) {
	xx = lengthdir_x(1000, (i*10)+lookdir+(fovarc/2))
	yy = lengthdir_y(1000, (i*10)+lookdir+(fovarc/2))
	draw_vertex(x+xx, y+yy);
}
draw_circle_color(x +  sprite_get_xoffset(global.playerID),y + sprite_get_yoffset(global.playerID),256,c_black,c_white,false)

draw_primitive_end();
surface_reset_target();