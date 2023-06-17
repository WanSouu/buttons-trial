event_inherited()
if instance_exists(oPlayer) and global.moving=false {
	if position_meeting(oPlayer._x,oPlayer._y,id) {
		touched=true	
	}else if touched = true {
		sprite_index  =sDeadPath
		die()
	}
}