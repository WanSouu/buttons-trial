if (room != Tutorial or winTimer != 0) and tutImg < tutMaxImg-1 {
	tutTimer++
	if tutTimer >= tutTime {
		tutTimer=0
		tutImg++
	}
}
if win < instance_number(oWinPath) {
	global.moving=false
	if x != 0 { x+=2 global.moving=true}
}else {
	global.moving=true
	if winTimer = 0 {
		aPlay(sndWin,random_range(1,1.1))
	}
	winTimer++
	if winTimer >= winTime {
		if x < room_width {
			x+=2	
		}else {
			x=-72
			winTimer=0
			win=0
			level++
			global.solidSprite=irandom(1)
			room_goto_next()
		}
	}
}

if !instance_exists(oPlayer) {
	if !instance_exists(oPathFall) {
		x+=1
		if x > room_width {
			win=0
			global.solidSprite=irandom(1)
			room_restart()	
			x=-72
		}
	} 
}
