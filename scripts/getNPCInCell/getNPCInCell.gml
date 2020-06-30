/// @description getNPCInCell(x,y)
/// @param {integer} the x cell to check
/// @param {integer} the y cell to check

var xx = argument0
var yy = argument1

for(var i = 0; i < instance_number(objCharacter); i++)
{
	var npc = instance_find(objCharacter,i);
	if(npc.x div 8 == xx && npc.y div 8 == yy)
	{
		return npc;
	}
}
return noone;