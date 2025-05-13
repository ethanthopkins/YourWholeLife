draw_set_color(c_black);
draw_rectangle(0, 0, rectangleY, rectangleX, false);
draw_set_color(c_white);
draw_rectangle(0, 0, rectangleY, rectangleX, true);
draw_set_font(fCounter);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
switch (count) {
	case 0: draw_set_color(#e01202); break;
	case 1: draw_set_color(#e32517); break;
	case 2: draw_set_color(#e33c30); break;
	case 3: draw_set_color(#e04c41); break;
	case 4: draw_set_color(#e36056); break;
	case 5: draw_set_color(#e6726a); break;
	case 6: draw_set_color(#e8847d); break;
	case 7: draw_set_color(#e69691); break;
	case 8: draw_set_color(#e3a9a6); break;
	case 9: draw_set_color(#e6bcba); break;
	case 10: draw_set_color(#ebd9d8); break;
}
draw_text(textX, textY, count);