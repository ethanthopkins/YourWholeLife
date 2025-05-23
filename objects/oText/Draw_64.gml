draw_set_color(c_black)
draw_rectangle(global.windowWidth*.1,global.windowHeight*.95,global.windowWidth*.9,global.windowHeight*.7,false);
draw_set_color(textColor)
draw_rectangle(global.windowWidth*.1,global.windowHeight*.95,global.windowWidth*.9,global.windowHeight*.7,true);



if (textProgress <= length)
{
	textProgress += textSpeed;
}

draw_set_color(textColor);
draw_set_font(font);
draw_set_halign(fa_right);
draw_set_valign(fa_middle);
 //how far to offset the text
for (var i = 1; i <= length; ++i) 
{
	//TURN STRING INTO ARRAY
	var str = 0;
	str[i] = string_char_at(myString, i);
	//GET POSITION OF CHAR IN STRING
	var strPos = string_pos(str[i],myString);
	//GET PX LENGTH OF STRING AS IT'S WRITTEN
	length_so_far=string_width(string_copy(myString,1,i));	
    //DRAW TEXT CHARACTER BY CHARACTER
	if (textProgress > i)	
	{
		var sLength = string_width(myString);
		//show_debug_message("length_so_far: " + string(length_so_far) + "width: " + string(width));
		//CHECK IF STRING IS OVER TEXTBOX. ALL LETTERS THAT EXCEED TEXTBOX ARE SENT TO NEXT LINE.
		//todo: check which letter is at textbox.
		//if it's not a space, go back until a space is found.
		//set that at the part where it is going to be sent to next line.
		
		//IF THE LENGTH SO FAR IS GREATER THEN THE TEXT BOX
		var strLength = string_copy(myString,1,i);
		if (length_so_far >= width) 
		{
			if (!set3)
			{
				if (string_copy(myString,1,strPos) == strLength)
				{
					var lastLetter = string_char_at(strLength,string_length(strLength));
					lastLetterPos = strPos;
					set3 = true;
				}	
			}
		}
		if (sLength >= width)
		{
			//GET THE LAST LETTER
			if (!set2)
			{
				show_debug_message("strLength: " + string(strLength) + " & strPos: " + string(string_copy(myString,1,strPos)));
				set2 = true;
			}
			show_debug_message(lastLetterPos);
			if (string_char_at(myString,lastLetterPos) == " ")
			{			
				var j = i;
				var sLength_so_far;
				sLength_so_far=string_width(string_copy(myString,1,j))
				//show_debug_message("sLength_so_far: " + string(sLength_so_far) + " & last letter width: " + string(string_width(string_copy(myString,1,lastLetterPos))));//string(string_char_at(myString,lastLetterPos)));
			if (sLength_so_far >= string_width(string_copy(myString,1,lastLetterPos)))
				{
					if (!set1)
					{	
						diff = length_so_far - width;
						//show_debug_message(string(diff));
						set1 = true;
					}
					
						draw_text(
						global.windowWidth*.15+sLength_so_far+random_range(-intensity,intensity)-string_width(string_copy(myString,1,lastLetterPos)),
						global.windowHeight*.8 + random_range(-intensity,intensity),
						str[j] 
					);
				} else
				{
					draw_text(
					draw_x+length_so_far+random_range(-intensity,intensity),
					draw_y+random_range(-intensity,intensity),
					str[i],
					);
				}
			}else
			{ 
				if (lastLetterPos != 0)
				{
					lastLetterPos --;
				}
				draw_text(
				draw_x+length_so_far+random_range(-intensity,intensity),
				draw_y+random_range(-intensity,intensity),
				str[i],
				);
			}
		} else
		{
			draw_text(
			draw_x+length_so_far+random_range(-intensity,intensity),
			draw_y+random_range(-intensity,intensity),
			str[i],
			);
		}
	}
	if (rsp1Case != undefined) && (rsp1Text != undefined) && (rsp2Case != undefined) && (rsp2Text != undefined)
	{
		var up = keyboard_check_pressed(ord("W"));
		var down = keyboard_check_pressed(ord("S"));
		var select = keyboard_check_pressed(vk_space);
		var optionValue;
		var vMove = (down - up)
		optionSelected = optionSelected + vMove;
		if (optionSelected > 1) optionSelected = 0;
		if (optionSelected < 0) optionSelected = 1;
		
		switch optionSelected
		{
			default: return;
			case 0: 
				draw_arrow(global.windowWidth * .65,global.windowHeight*.7,global.windowWidth * .7,global.windowHeight*.7,5); 
				//optionValue = rsp1Case;
				if (!global.justForShow) nextLine = rsp1Case;
				break;
			case 1: 
				draw_arrow(global.windowWidth * .65,global.windowHeight*.8,global.windowWidth * .7,global.windowHeight*.8,5); 
				optionValue = rsp2Case;
				//if (!global.justForShow) if (select) nextLine = optionValue;
				if (!global.justForShow) nextLine = rsp2Case;
				break;
		}
		
		draw_text(
		global.windowWidth * .8,//+length_so_far+random_range(-intensity,intensity),
		global.windowHeight*.7,//+random_range(-intensity,intensity),
		rsp1Text);
		
		draw_text(
		global.windowWidth * .8,//+length_so_far+random_range(-intensity,intensity),
		global.windowHeight*.8,//+random_range(-intensity,intensity),
		rsp2Text);	
	}
}
