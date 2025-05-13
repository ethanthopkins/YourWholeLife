draw_set_color(c_black);
draw_rectangle(rectangleX, 0, width, rectangleY, false);
draw_set_color(c_white);
draw_rectangle(rectangleX, 0, width, rectangleY, true);
draw_set_font(fDayCounter);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(textX, textY, string(days) + "\nDays");