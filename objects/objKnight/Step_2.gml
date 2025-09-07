if(white)
{ 
	if( objCamera.x < x && objCamera.y > 256)
	{
		image_xscale := -1;
	}
	else 
	{
		image_xscale := 1;
	}
}

if(!white)
{ 
	if( objCamera.x > x && objCamera.y < 256)
	{
		image_xscale := -1;
	}
	else 
	{
		image_xscale := 1;
	}
}