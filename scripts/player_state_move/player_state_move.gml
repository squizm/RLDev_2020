if(x != destX) {
	x = lerp(x, destX, 0.5);
	if(abs(destX - x) < 1) { x = destX}
}

if(y != destY) {
	y = lerp(y, destY, 0.5);
	if(abs(destY - y) < 1) { y = destY}
}


if(x == destX && y == destY) {
	state_switch("Idle");
}
surface_free(surfFOV)