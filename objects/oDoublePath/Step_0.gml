event_inherited()
if instance_exists(oPlayer) {
	if position_meeting(oPlayer._x,oPlayer._y,id) {
		touched=true	
	}else if touched = true {
		touched=false
		hp--
		image_index=0
		if hp == 1 {
			image_index=1	
		}
		if hp <= 0 {
			sprite_index =sDeadPath
			die()
		}
	}
}