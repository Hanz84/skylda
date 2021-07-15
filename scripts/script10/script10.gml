function script10() {
if(distance_to_object(obj_player)< 50)
{
	
	image_speed = 0.1
	
	if(image_index == 2)
	{
		move_y = 2
		image_speed = 0.8
		
		
	}
	if (image_index == 5)
	{
		
		image_index = 2;
		
	}
	
	
	
}
else
{
	image_index = 0;
	move_y = 0;
	
}


}
