if (alarm[0] == -1) {
	alarm[0] = room_speed * 2;
}
switch (oCounter.timesPressed) {
	case 2: inc = 1; break;
	case 4: inc = .25; break;
	case 7: inc = .1; break;
	case 9: inc = .05; break;
}