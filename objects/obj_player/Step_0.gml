if (keyboard_check(vk_right)) x = x + 4;
if (keyboard_check(vk_left)) x = x - 4;
if (keyboard_check(vk_up)) y = y - 4;
if (keyboard_check(vk_down)) y = y + 4;

image_angle = point_direction(x,y, mouse_x, mouse_y);

muzzle_x = x + lengthdir_x(195.318,-8.83537 + image_angle)
muzzle_y = y + lengthdir_y(195.318,-8.83537 + image_angle)

//shoot
if (mouse_check_button(mb_left) && (cooldown < 1) && !global.PickedUp)
{
	with (instance_create_layer(muzzle_x,muzzle_y,layer,obj_bullet)) {
		direction = other.image_angle
		image_angle = direction;
	}
	cooldown = 10;
}

if (mouse_check_button(mb_left) && (cooldown < 1) && global.PickedUp)
{
	instance_create_layer(x,y,layer,obj_arrow)
	cooldown = 10;
}
cooldown = cooldown - 1;