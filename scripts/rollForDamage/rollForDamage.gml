/// @description rollForDamage(min,max)
/// @arg min the minimum possible amount of damage to inflict
/// @arg max the maximum possible amount of damage to inflict.

var roll1 = irandom_range(argument0, argument1);
var roll2 = irandom_range(argument0, argument1);
return max(roll1,roll2)