/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
projectile_speed = 1;
projectile_speed2 = 0;
not_shooting = true;
damage = 2;
timer = 0;
with(obj_player)
{
timer_projectile_stuck_before_explode = 0;


}
timer = 0;
if(x<160 && y>50 && y<170)
{
	
	image_angle = 270
	projectile_speed = -1
	
}
else if (x>160 && y>50 && y<170)
{
	
	projectile_speed = 1
	
	image_angle = 90
	
	
}