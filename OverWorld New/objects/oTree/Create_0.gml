/// @description
image_xscale = SpriteScale;
image_yscale = image_xscale;

depth = -y - 25;

alphaActivator = InstanceCreate(x,y,oAlphaActivator);

with(alphaActivator)
{
	solidObj = other;
	image_xscale = 48;
	image_yscale = 36;
	x-=image_xscale/2;
	y-=image_yscale/2 +15;
	depth = other.depth -1;
}