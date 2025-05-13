if (room == rBunker) {
	if (collision_circle(x, y, 64, oPlayer, false, true)) {
		if (path_index == -1) {
			path_start(pathLeader0, 1, path_action_stop, 0);	
		}
	}
}
if (room == rButton) {
	if (collision_circle(x, y, 64, oPlayer, false, true)) {
		if (set) {
			path_start(pathLeader1, 1, path_action_stop, 0);
			set = false;
		}
	}	
	if (oCounter.first) {
		if (set1) {
			path_start(pathLeader2, 1, path_action_stop, 0);
			set = false;
		}
	}
}