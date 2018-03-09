
if keyboard_check(ord("D"))
{
	hspeed_= 10;
}else if keyboard_check(ord("A"))
{
	hspeed_= -10;
}else
{
	hspeed_=0;
}
if place_meeting(x+hspeed_,y,well)
{
	while !place_meeting(x+sign(hspeed_),y,well)
	{
		x+=sign(hspeed_);
	}
	hspeed_=0;
}
x = x + hspeed_;

if !place_meeting(x,y+1,well)
{
	vspeed_+=gravity_;
}else if keyboard_check_pressed(vk_space)
{
	vspeed_=-10
}

if place_meeting(x,y+vspeed_,well)
{
	while !place_meeting(x,y+sign(vspeed_),well)
	{
		y+=sign(vspeed_);
	}
	vspeed_=0;
}

y=y+vspeed_;
