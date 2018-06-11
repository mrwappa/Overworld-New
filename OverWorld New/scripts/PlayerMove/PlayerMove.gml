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

x += xSpeed*delta;
y += ySpeed*delta;