/// @descriptions
if(Paused == false)
{
	Paused = true;
	
	instance_deactivate_all(true);
}
else
{
	
	Paused = false;
	instance_activate_all();
}

