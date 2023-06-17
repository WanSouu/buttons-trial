event_inherited()
if instance_exists(oPlayer) and oCam.win < instance_number(oWinPath) {
	if oPlayer.x=x and oPlayer.y=y {
		oPlayer.xOffset=x
		oPlayer.yOffset=y
		if clicked = false {
		if added = false { oCam.win++ }
		else {oCam.win--}
		if oCam.win = instance_number(oWinPath) and added=false {
			image_index=2
			oPlayer.image_alpha=0
		}
		added=!added
		//aPlay(sndPressButton,pit)
		clicked=true
		}
	}else {
		clicked=false	
	}
}
if oCam.win < instance_number(oWinPath) {
	if added = false { image_index=0}
	else { image_index=1 }
}

