/// @description Insert description here
// You can write your code in this editor

counter_smoke += 1;
if(counter_smoke == smoker_times * 80)
{
	instance_create_layer(x+8,y-6,"Instances_room1",obj_dungeon_boss_steam_slower_bush)
	instance_create_layer(x+16,y-6,"Instances_room1",obj_dungeon_boss_steam_slower_bush)
	instance_create_layer(x+24,y-6,"Instances_room1",obj_dungeon_boss_steam_slower_bush)
	smoker_times += 1;
}
if(smoker_times mod 2 == 0)
{
	timer_smoker += 1;
	if(timer_smoker == 3)
	{
	instance_destroy(obj_dungeon_boss_steam_slower_bush);
	timer_smoker = 0;
	}
}
if(place_meeting(x,y,obj_dungeon_stream))
{
	time_to_live += 1;
	with(obj_dungeon_stream)
	{
		instance_destroy();
		instance_create_layer(x,y,"Instances_room1",obj_dungeon_stream_lit_up)
		
	}
	
	
}
if(place_meeting(x,y,obj_boss_flammable_pool)|| place_meeting(x,y,obj_dungeon_stream_vertical))
{
	time_to_live += 1;
	with(obj_boss_flammable_pool)
	{
		instance_destroy();
		instance_create_layer(x,y,"Instances_room1",obj_boss_flammable_pool_lit_up)
		
	}
	
	
}
if(instance_exists(obj_boss_flammable_pool_lit_up))
{
	
	with(obj_boss_flammable_pool_lit_up)
	{
	counter ++

if (counter == 100 && !instance_exists(obj_dungeon_flaming_lightable_piedestal))
{
	
	instance_create_layer(x,y,"Instances_room1",obj_boss_flammable_pool)
	instance_destroy();
	
	
	
}

}
	
	
	
}


with(obj_dungeon_stream_lit_up)
{
	counter ++

if (counter == 100 && !instance_exists(obj_dungeon_flaming_lightable_piedestal))
{
	
	instance_create_layer(x,y,"Instances_room1",obj_dungeon_stream)
	instance_destroy();
	
	
	
}

}
if(time_to_live == 200 )
{
	x = 156
	y = 128;
	time_to_live = 0;
	
}
 if (y>obj_player.y)
{
	
	if(place_meeting(x,y,obj_sword))
	{
		y += 2;
		
	}
	
}
else if ( y<obj_player.y && y+32<obj_player.y)
{
	if(place_meeting(x,y,obj_sword))
	{
		y -= 2;
		
	}
	
}



	
	
else if (x < obj_player.x  )
{
	if(place_meeting(x,y,obj_sword))
	{
		x -= 2;
		
	}
	
}
 else if(x>obj_player.x)
{
	if(place_meeting(x,y,obj_sword))
	{
		x += 2;
		
	}
	
}



	


		
