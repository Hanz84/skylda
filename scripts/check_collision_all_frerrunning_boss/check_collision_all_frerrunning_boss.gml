function check_collision_all_frerrunning_boss() {
	var _vx,_vy,_collision;
	_vx = argument[0];
	_vy = argument[1];
	_collision = false;

	

		repeat (1+(max(abs(_vx),abs(_vy))))

		 {
			for (var i = 2; i<argument_count; i++) 
	
			{	
				if (place_meeting(x+sign(_vx), y+sign(_vy), argument[i]))
	
				{  
					_collision = true;
					break;
			
				}
				else
					{
						x += sign(_vx) + 2;
						y += sign(_vy) + 2;
			
					}
					break;
				 }   
			}
		

		

	return _collision;


}
