
fallTimer--
if fallTimer <= 0 {
	fallTimer=fallSpdTimer
	y+=fallSpd
}
if y > room_height+sprite_height {
	instance_destroy(id)
}