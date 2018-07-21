/// @description Insert description here
// You can write your code in this editor
depth =-y;

imgSpeed = 5.5;

var target = oPlayer;

if(instance_exists(target))
{
	direction = point_direction(x,y,target.x,target.y);
	xSpeed = lengthdir_x(moveSpeed,direction);
	ySpeed = lengthdir_y(moveSpeed,direction);
	
	var enemy = instance_place(x,y,oBlob);
	if(enemy and enemy.id != id)
	{
		direction = point_direction(enemy.x,enemy.y,x,y);
		xSpeed += lengthdir_x(50,direction);
		ySpeed += lengthdir_y(50,direction);
	}
	
	currentPlayerAttack = instance_place(x,y,oPlayerAttack);
	if(currentPlayerAttack)
	{
		if(prevPlayerAttack != currentPlayerAttack)
		{
			direction = point_direction(oPlayer.x,oPlayer.y,x,y);
			xKnockback += lengthdir_x(300,direction);
			yKnockback += lengthdir_y(300,direction);
			HP -= 1;
			hurtAlarm.timer = 0.2;
		}
		prevPlayerAttack = currentPlayerAttack;
	}
	
	if(XPrevCol((xSpeed + xKnockback)*delta,oSolid))
	{
		xSpeed = 0;
		xKnockback = 0;
	}
	if(YPrevCol((ySpeed + yKnockback)*delta,oSolid))
	{
		ySpeed = 0;
		yKnockback = 0;
	}
	
	xKnockback = Damp(xKnockback,0,0.07);
	yKnockback = Damp(yKnockback,0,0.07);
	
	x += (xSpeed + xKnockback)*delta;
	y += (ySpeed + yKnockback)*delta;
}

HP = max(0,HP);
if(hurtAlarm.timer > 0)
{
	if(visibleHurtHalarm.trigger or hurtAlarm.prevTimer <= 0)
	{
		color = make_color_rgb(random(255),random(255),random(255));
		visibleHurtHalarm.timer = 0.009;
	}
}
else
{
	color = c_white;	
}