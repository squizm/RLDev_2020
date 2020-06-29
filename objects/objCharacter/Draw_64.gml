/// @description Insert description here
// You can write your code in this editor
if(isPlayer){
draw_set_color(c_white)
draw_set_font(fntDefault)
draw_text(5,5,"x:" + string(x div 8) + " y:" + string(y div 8) + 
	" sx:" + string(startX div 8) + " sy:" + string(startY div 8) +
	" dx:" + string(destX div 8) + " dy:" + string(destY div 8));
draw_flush()
}