/// @description Insert description here
// You can write your code in this editor
event_inherited();



switch(facing)
{
	
	case "UP":
	{
		vy = -0.5;
		vx = 0;
		break;
	}
	 case "DOWN":
	 {
		 
		vy = 0.5;
		 vx = 0;
		 break;
	 }
	case "LEFT":
	{
		vx = -0.5
		vy = 0;
		break;
	}
	case "RIGHT":
	{
		
		vx = + 0.5;
		vy = 0;
		break;
	}
	
	
}
				cx = vx;
				cy = vy;
				newvx = round(cx);
				newvy = round(cy);
				cx = vx - newvx;
				cy = vy - newvy;

{
	
	if (image_index >2 && image_index <5)
if (check_collision_all(cx,cy,obj_solid))
{

	facing = choose("UP","DOWN","LEFT","RIGHT");
	smooth_move(cx,cy)

}
 if(irandom(500)<2)
 {
	 facing = choose("UP","DOWN","LEFT","RIGHT");
	 smooth_move(cx,cy)
 }
	
	
}