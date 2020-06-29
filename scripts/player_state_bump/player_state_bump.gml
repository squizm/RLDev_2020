
if(x != destX) {
	x = lerp(x, destX, 0.5);
	if(abs(destX - x) <= 1) { destX = startX }
}

if(y != destY) {
	y = lerp(y, destY, 0.5);
	if(abs(destY - y) <= 1) { destY = startY}
}


if(x == startX && y == startY) {
	state_switch("Idle");
}
surface_free(surfFOV)