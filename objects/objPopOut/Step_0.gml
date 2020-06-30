/// @description Insert description here
// You can write your code in this editor
y = lerp(y,destY,0.05);

if(abs(destY-y) < 1){
	instance_destroy()
}