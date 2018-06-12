var up = keyboard_check(ord("W"));
var left = keyboard_check(ord("A"));
var down = keyboard_check(ord("S"));
var right = keyboard_check(ord("D"));

//Direction
xDir = right - left;
yDir = down - up;

//Acceleration
xAdd = xDir * moveAcceleration;
yAdd = yDir * moveAcceleration;

//Restitution
xSub = min(moveRestitution, abs(xSpeed)) * sign(xSpeed) * (xDir == 0);
ySub = min(moveRestitution, abs(ySpeed)) * sign(ySpeed) * (yDir == 0);

//Speed
xSpeed = clamp(xSpeed + xAdd - xSub, -moveSpeed, moveSpeed);
ySpeed = clamp(ySpeed + yAdd - ySub, -moveSpeed, moveSpeed);

//Diagonals
if(xSpeed != 0 and ySpeed != 0)
{
	var dist = sqrt((xSpeed*xSpeed) + (ySpeed * ySpeed));
	var mdist = min(moveSpeed,dist);
	xSpeed = (xSpeed / dist) * mdist;
	ySpeed = (ySpeed / dist) * mdist;
}

var xCol = false;
var yCol = false;

//Collision
var solidXObj = XPrevCol(xSpeed*delta,oSolid);
if(solidXObj != noone)
{
	xSpeed = 0;
	xCol = true;
}

var solidYObj = YPrevCol(ySpeed*delta,oSolid); 
if(solidYObj != noone)
{
	ySpeed = 0;	
	yCol = true;
}

if(!xCol and yCol)
{
	var objWidth = abs(solidYObj.bbox_left - solidYObj.bbox_right);
	var myWidth = abs(bbox_left - bbox_right);
	
	if(abs(x - myWidth) - (solidYObj.x - objWidth) < 2 and x < solidYObj.x)
	{
		xSpeed -= 10000*delta;
	}
	else if(abs(x + myWidth) - (solidYObj.x + objWidth) > 2 and x > solidYObj.x)
	{
		xSpeed += 10000*delta;
	}
}
else if(!yCol and xCol)
{
	
}

x += xSpeed*delta;
y += ySpeed*delta;