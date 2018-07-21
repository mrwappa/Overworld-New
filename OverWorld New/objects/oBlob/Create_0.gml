/// @description
event_inherited();

currentPlayerAttack = noone;
prevPlayerAttack = noone;


moveSpeed = 50;
xSpeed = 0;
ySpeed = 0;
xKnockback = 0;
yKnockback = 0;

direction = 0;

maxHP = 5;
HP = maxHP;

hurtAlarm = InstanceCreate(0,0,oAlarm);
visibleHurtHalarm = InstanceCreate(0,0,oAlarm);