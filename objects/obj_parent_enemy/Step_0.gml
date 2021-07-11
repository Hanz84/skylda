/// @description Insert description here
// You can write your code in this editor
if (iframes > 0)
{
	iframes--;      // if object invicible count invincibilty down
	
}

if (hp == 0)
{
	instance_destroy();
	
}
if(place_meeting(x,y,obj_bolt_attack))
{
	
	if (iframes == 0)
{
	iframes = 30;
	hp -= other.damage;
	
	
	
	

}

	
}

if (place_meeting(x,y,obj_sword) || place_meeting(x,y,obj_lightning_crab_projectile2 ) && global.projectile_stuck_on_shield = false && x < obj_player.x) // check if enemy get hit by sword and if enemy is left or right from player
		{
			x -= 2;
			if (iframes == 0)
{
	iframes = 30;
	hp -= other.damage;
	
	
	
	

}
instance_destroy(obj_lightning_crab_projectile2);

		 if (place_meeting(x,y, obj_solid))// after knockback check if enemy colliding and stuck revert to old position if so
		 {
			 
			 x += 2
		 }
		 
		}
		else if(place_meeting(x,y,obj_sword) || place_meeting(x,y,obj_lightning_crab_projectile2 ) && global.projectile_stuck_on_shield = false && x > obj_player.x)
		
		{
			x += 2
						if (iframes == 0)
{
	iframes = 30;
	hp -= other.damage;
	
	
	
	

}
		
			if (place_meeting(x,y, obj_solid))
		 {
			 
			 x -= 2
		 }
		 
		 
		 
		}

		
		
		
		
		if(place_meeting(x,y,obj_sword)){
if (iframes == 0)
{
	iframes = 30;
	hp -= other.damage;
	
	
	
	

}
		}	