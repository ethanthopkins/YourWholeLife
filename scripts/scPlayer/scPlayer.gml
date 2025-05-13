function scGetPlayerInput() {
	up = keyboard_check(ord("W")) || keyboard_check(vk_up); 
	down = keyboard_check(ord("S")) || keyboard_check(vk_down); 
	left = keyboard_check(ord("A")) || keyboard_check(vk_left); 
	right = keyboard_check(ord("D")) || keyboard_check(vk_right);
	action = keyboard_check_pressed(vk_space);
}
function scGetPlayerCollision() {
	if (place_meeting(x + sign(hMove) *	walkSpeed, y, pCol)) hMove = 0;
	if (place_meeting(x, y + sign(vMove) * walkSpeed, pCol)) vMove = 0;
}
function scGetPlayerDirection() {
	if (hMove != 0) {
		if (hMove = -1) playerDirection = 180;
		if (hMove = 1) playerDirection = 0;		
		scUpdateSpriteIndex();
	}
	if (vMove != 0) {
		if (vMove = -1) playerDirection = 90;
		if (vMove = 1) playerDirection = 270;
		scUpdateSpriteIndex();
	}
}
function scGetPlayerMovement() {
	hMove = right - left;
	vMove = down - up;
	scGetPlayerCollision();
	x += hMove * walkSpeed;
	y += vMove * walkSpeed;
	scGetPlayerCollision();
	scGetPlayerDirection();
}
function scUpdateSpriteIndex() {
	image_speed = 0.2;
	cardinalDirection = round(direction/90);
	switch cardinalDirection {
		case 0: sprite_index = sPlayerRight; break;
		case 1: sprite_index = sPlayerUp; break;
		case 2: sprite_index = sPlayerLeft; break;
		case 3: sprite_index = sPlayerDown; break;
	}
}
function scActivate() {
	//Check Who Collider Is
	if (playerDirection == 0) || (playerDirection == 180)
	{
		_inst = collision_line(x,y,x+lengthdir_x(activateDistance,playerDirection),y+lengthdir_y(activateDistance,playerDirection), pInteract,false,true);
		_inst = collision_line(x,y-activateWidth,x+lengthdir_x(activateDistance,playerDirection),y+lengthdir_y(activateDistance,playerDirection),pInteract,false,true);
		_inst = collision_line(x,y+activateWidth,x+lengthdir_x(activateDistance,playerDirection),y+lengthdir_y(activateDistance,playerDirection),pInteract,false,true);
	}
	if (playerDirection == 90) || (playerDirection == 270)
	{
		_inst = collision_line(x,y,x+lengthdir_x(activateDistance,playerDirection),y+lengthdir_y(activateDistance,playerDirection),pInteract,false,true);
		_inst = collision_line(x-activateWidth,y,x+lengthdir_x(activateDistance,playerDirection),y+lengthdir_y(activateDistance,playerDirection),pInteract,false,true);
		_inst = collision_line(x+activateWidth,y,x+lengthdir_x(activateDistance,playerDirection),y+lengthdir_y(activateDistance,playerDirection),pInteract,false,true);
	}
	show_debug_message(_inst);
	if (_inst != noone)	scSaySomething(_inst);	
}
