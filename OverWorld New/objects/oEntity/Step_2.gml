/// @description
if(imgSpeed > 0)
{
	imgCounter += imgSpeed*delta;
	if(imgCounter >= 1)
	{
		imgIndex++;
		imgCounter -=1;
		if(imgIndex > image_number -1)
		{
			imgIndex = 0;	
		}
	}
}

currentSprite = sprite_index;
if(previousSprite != currentSprite)
{
	imgIndex = 0;	
}
image_index = imgIndex;