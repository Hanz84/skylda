/// @description Insert description here
// You can write your code in this editor
x -= projectile_speed;
y += projectile_speed2;

if(place_meeting(x,y,obj_solid || place_meeting(x,y,obj_parent_enemy)))
{
	instance_destroy(self);	
	
}
