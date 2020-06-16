/// @description Insert description here
// You can write your code in this editor
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_down = keyboard_check(ord("S"));
key_up = keyboard_check(ord("W"));
key_jump = keyboard_check(vk_space);
key_shift = keyboard_check(vk_shift);
var move = key_right - key_left;
var up = key_down - key_up ;
if ((!key_shift) && (shiftPressed)) {
	shiftPressed = false;
}

if (abs(vsp) < maxSpeed * 0.25) vsp = 0;
if (abs(hsp) < maxSpeed * 0.25) hsp = 0;
switch (state) {
	case states.normal: {
		vsp = vsp * 0.9;
		hsp = hsp * 0.9;
		if (move != 0) {
			hsp = maxSpeed * move;
		}
		if (up != 0) {
			vsp = maxSpeed * up;
		}
	
		//Shift speed boost.
		if (!(shiftPressed) && (key_shift)) {
			velocity = sqrt(power(hsp, 2) + power(vsp, 2)) + shiftSpeed;
			dir = sqrt(power(mouse_x - x, 2) + power(mouse_y - y, 2));
			vx = (mouse_x - x) / dir;
			vy = (mouse_y - y) / dir;
			hsp = vx * velocity;
			vsp = vy * velocity;
			shiftPressed = true;
			shiftCounter = 0;
			state = states.shift;
		}

		//Code for horizontal collision.
		if (place_meeting(x + hsp, y, oWall)) {
			//Gets you right next to a wall on collision instead of inside.
			while (!place_meeting(x + sign(hsp),y,oWall))
			{
				x = x + sign(hsp);
			}
		
		}
		//Code for vertical collision
		if (place_meeting(x, y + vsp, oWall)) {
			while (!place_meeting(x,y + sign(vsp),oWall))
			{
				y = y + sign(vsp);
			}
		}
	}
	case states.shift: {
		vsp = vsp * 0.95;
		hsp = hsp * 0.95;
		shiftCounter++;
		show_debug_message(shiftLength);
		if (shiftCounter > shiftLength) {
			state = states.normal;
		}
	}
	
}
//Executes positional changes.
y = y + vsp;
x = x + hsp;