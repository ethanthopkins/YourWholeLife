function scSaySomething(instance) {
	var _line = scGetTheCharacter(instance); //oGame.whatText = oGame.whatText;
		//show_debug_message(_line);
	scGetTheText(_line); //oGame.theActualText = oGame.theActualText;
		//show_debug_message(_result);
}
function scGetTheCharacter(instance) {
	if (instance_exists(oNPC)) {
		for (var i = 0; i < instance_number(oNPC); ++i;){
			NPCArray[i] = instance_find(oNPC,i);
		}
		if (instance_exists(NPCArray[0])) {var _oNPC0 = NPCArray[0].id; } else {_oNPC0 = undefined;}
		if (instance_exists(NPCArray[1])) {var _oNPC1 = NPCArray[1].id; } else {_oNPC1 = undefined;}
		if (instance_exists(NPCArray[2])) {var _oNPC2 = NPCArray[2].id; } else {_oNPC2 = undefined;}
		if (instance_exists(NPCArray[3])) {var _oNPC3 = NPCArray[3].id; } else {_oNPC3 = undefined;}
		if (instance_exists(NPCArray[4])) {var _oNPC4 = NPCArray[4].id; } else {_oNPC4 = undefined;}
		if (instance_exists(NPCArray[5])) {var _oNPC5 = NPCArray[5].id; } else {_oNPC5 = undefined;}
		if (instance_exists(NPCArray[6])) {var _oNPC6 = NPCArray[6].id; } else {_oNPC6 = undefined;}
		if (instance_exists(NPCArray[7])) {var _oNPC7 = NPCArray[7].id; } else {_oNPC7 = undefined;}
	} else {
		var _oNPC0 = undefined;
		var _oNPC1 = undefined;
		var _oNPC2 = undefined;
		var _oNPC3 = undefined;
		var _oNPC4 = undefined;
		var _oNPC5 = undefined;
		var _oNPC6 = undefined;
		var _oNPC7 = undefined;
	}
	if (instance_exists(oLeader)) {var _oLeader = oLeader.id;} else {_oLeader = undefined;}
	if (instance_exists(oButton)) {var _oButton = oButton.id;} else {_oButton = undefined;}
	switch (instance) {
		case noone: return;
		case _oNPC0: return(1); break;
		case _oNPC1: return(1); break;
		case _oNPC2: return(1); break;
		case _oNPC3: return(1); break;
		case _oNPC4: return(1); break;
		case _oNPC5: return(1); break;
		case _oNPC6: return(1); break;
		case _oNPC7: return(1); break;
		case _oLeader: return;
		case _oButton: return(14); break;
		default: return;
	}
}
function scGetTheText(_line) {
	switch (_line) {
		case 0: oPlayer.alarm[0] = 10; break;
		case 1: scDrawTheObject("Congrats.", 0, global.medium, c_white, fDefault, 0); break;
		case 2: scDrawTheObject("Welcome everyone. Today is a solemn day.", 3, global.medium, c_white, fDefault, 0); break;
		case 3: scDrawTheObject("This is the 100th year since the end. Today is also special.", 4, global.medium, c_white, fDefault, 0); break;
		case 4: scDrawTheObject("Today is the day we will choose a new pusher", 5, global.medium, c_white, fDefault, 0); break;
		case 5: scDrawTheObject("As you all know, the pusher has a grave responsibility for our lives.", 6, global.medium, c_red, fDefault, .25); break;
		case 6: scDrawTheObject("And...................", 7, global.slow, c_white, fDefault, 0); break;
		case 7: scDrawTheObject("The pusher is................", 8, global.slow, c_white, fDefault, 0); break;
		case 8: scDrawTheObject("Seven", 9, global.medium, c_white, fDefault, .5); break;
		case 9: scDrawTheObject("Follow me Seven", 0, global.medium, c_white, fDefault, 0); break;
		case 10: scDrawTheObject("This is the button. You will be relieving 13", 11, global.fast, c_white, fDefault, 0); break;
		case 11: scDrawTheObject("It must be pressed every 10 seconds, or we will surely die", 12, global.fast, c_red, fDefault, 0); break;
		case 12: scDrawTheObject("It's okay if you press it sooner but never let the counter get to 0.", 13, global.fast, c_white, fDefault, 0); break;
		case 13: scDrawTheObject("Quickly! Press it now.", 0, global.fast, c_white, fDefault, 0); break;
		case 14: scButton(); break;
		default: return;
	}
}
function scDrawTheObject(txt,nxtLine,Speed, Color, Font,shakeInt,response1Case,response1,response2case,response2) {
	with (instance_create_layer(0,0,layer,oText))
	{
		myString = txt;	
		nextLine = nxtLine;
		textSpeed = Speed;
		textColor = Color;
		font = Font;
		intensity = shakeInt;
		if (!is_undefined(response1Case)) rsp1Case = response1Case;
		if (!is_undefined(response1)) rsp1Text = response1;
		if (!is_undefined(response2case)) rsp2Case = response2case;
		if (!is_undefined(response2)) rsp2Text = response2;
	}
}		