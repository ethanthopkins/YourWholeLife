if (!global.playerPaused) {
	scGetPlayerInput();
	scGetPlayerMovement();
	if (action) && (!instance_exists(oText)) {
		scActivate();
	}
}else 
{
	image_speed = 0;
	image_index = 0;
}
