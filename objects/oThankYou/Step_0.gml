timer++
if timer >= spd and global.moving=false {
	timer=0
	if cur = 0 {
		y--	
	}
	if cur = 1 {
		y--	
	}
	if cur = 2 {
		y++	
	}
	if cur = 3 {
		y++
		cur = -1
	}
	cur++
}