/// @description Insert description here
// You can write your code in this editor
event_inherited();
y  += move_y
x += move_x

if(image_index == 5)
{	
	
	instance_destroy(self);
	instance_create_layer(old_x,old_y,"Instances_room1",obj_enemy_grasslurcher)
	image_index = 0;
	
	move_x = 0
	move_y = 0
	timer = 0;
	
}

if(distance_to_object(obj_player)<= 37 && distance_to_object(obj_player) > 20)
{
		move_x = 0
		move_y = 0;
	image_index = 1;
}
if(distance_to_object(obj_player)<= 20)
{
	direction = point_direction(self.x,self.y,obj_player.x,obj_player.y)
	image_speed = 0.2;
	if(direction >= 45 && direction <= 135 )
	{
		timer++;
		must_die_started = true
		move_x = 0
		move_y = -1;
	
		
		
	}
	else if (direction >= 136 && direction <= 225 )
	{
		must_die_started = true
		timer++
		move_x = -1
		move_y = 0;
	}
	else if (direction >=226 && direction <= 315)
	{
		must_die_started = true
		move_y = 1
		move_x = 0
		timer++;
		
	}
	else if (direction >= 316 && direction <= 44)
	{
		
		must_die_started = true
		timer++
		move_x = 1
		move_y = 0;
		timer ++;
		
		
	}
	
}
if(must_die_started)
{
	image_speed = 0.2	
	
}