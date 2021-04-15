function check_collision_all() {
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
						x += sign(_vx);
						y += sign(_vy);
			
					}
					break;
				 }   
			}
		

		

	return _collision;


}
