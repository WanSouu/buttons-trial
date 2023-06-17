event_inherited()
if global.moving=false {
	if place_meeting(_x,_y,parPath) {
		var l = keyboard_check_pressed(ord("A")) or keyboard_check_pressed(vk_left)
		var r = keyboard_check_pressed(ord("D")) or keyboard_check_pressed(vk_right)
		var u = keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up)
		var d = keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down)
	
		if oCam.win<instance_number(oWinPath) {
			var hMove = ((-l + r)*(sprite_width+1))
			var vMove = ((-u + d)*(sprite_height+1))
			if hMove != 0 { vMove = 0 }
		
			if (x=_x and y = _y) and (hMove != 0 or vMove != 0) {
				if !position_meeting(_x+hMove,_y+vMove,oWinPath) {
					aPlay(sndBreakBlock)	
				}else {
					aPlay(sndPressButton)		
				}
			}
		
			if abs(x-_x)<1 and abs(y-_y)<1 {
				_x+=hMove
				_y+=vMove
			}
		}
	}else {
		if abs(x-_x)<0.2 and abs(y-_y)<0.2 {
			depth++
			sprite_index=sDeadPath
			aPlay(sndFallDown)
			die()
		}
	}
	if x != _x {
		if _x<x {
			x-=1	
		}else {
			x+=1	
		}
	}
	if y != _y {
		if _y<y {
			y-=1	
		}else {
			y+=1	
		}
	}
}else {
	_x=x
	_y=y	
}