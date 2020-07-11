/// @description attackMelee(target)
/// @param target {id} ID of the objCharacter to attack

// do some damage or something?
var target = argument0;
var dmg = rollForDamage(2,8) //add weapons later that vary damage
target.hp_cur -= dmg;
var popOut = instance_create_depth(x, y-16, target.depth-1, objPopOut)
popOut.text = "-" + string(dmg)
