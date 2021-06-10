function chasing_enemy_move() {
	
	var _vx,_vy
	_vx = argument[0];
	_vy = argument[1];
	
	
	
		if(obj_player.x > x)
		{
			
			var sweep_interval = 10;
			var sweep_begin_right = 360;
			
	    if(_vx>_vy)
		{
	    for ( var angle = sweep_interval - sweep_begin_right; angle >= 270; angle -= sweep_interval) 
		{
			
	        for ( var multiplier = -1; multiplier <= 1; multiplier += 2)
			{      
	            var angle_to_check = angle*multiplier;
	            xtarg = x+lengthdir_x(1, angle_to_check);
	            ytarg = y+lengthdir_y(1, angle_to_check);     
            
				if !(place_meeting(xtarg, ytarg, obj_solid))
	
				    {  
						x = xtarg;
						y = ytarg;
			
						exit;
			
				    }
				
			
					}
			
					}
		}
		else
		
	{
	    for ( var angle = sweep_interval - sweep_begin_right; angle >= 270; angle -= sweep_interval) 
		{
			
	        for ( var multiplier = -1; multiplier <= 1; multiplier += 2)
			{      
	            var angle_to_check = angle*multiplier;
	            xtarg = x+lengthdir_x(1, angle_to_check);
	            ytarg = y+lengthdir_y(1, angle_to_check);     
            
				if !(place_meeting(xtarg, ytarg, obj_solid))
	
				    {  
						x = xtarg;
						y = ytarg;
			
						exit;
			
				    }
				
			
					}
			
					}
		}


}
else if(obj_player.x < x)
{
	
	var sweep_interval = 10;
	var sweep_begin_right = 0;
	    if(_vx>_vy)
		{
			
	    for ( var angle = sweep_interval; angle <= 100; angle += sweep_interval) 
		{
		
	        for ( var multiplier = -1; multiplier <= 1; multiplier += 2)
			{      
	            var angle_to_check = angle*multiplier;
	            xtarg = x+lengthdir_x(1, angle_to_check);
	            ytarg = y+lengthdir_y(1, angle_to_check);     
            
				if !(place_meeting(xtarg, ytarg, obj_solid))
	
				    {  
						x = xtarg;
						y = ytarg;
			
						exit;
			
				    }
				
			
					}
			
					}
		}
		else
		{
			var sweep_interval = 10;
	
		for ( var angle = sweep_interval; angle <= 100; angle += sweep_interval) 
		{
	        for ( var multiplier = -1; multiplier <= 1; multiplier += 2)
			{      
	            var angle_to_check = angle*multiplier;
	            xtarg = x+lengthdir_x(1, angle_to_check);
	            ytarg = y+lengthdir_y(1, angle_to_check);     
            
				if !(place_meeting(xtarg, ytarg, obj_solid))
	
				    {  
						x = xtarg;
						y = ytarg;
			
						exit;
			
				    }
				
			
					}
			
					}
		}
	


}
	
}
