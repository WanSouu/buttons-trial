// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function aPlay(snd,pitch){
	audio_stop_all()
	var aud = audio_play_sound(snd,1,0)
	if is_undefined(pitch) {
		audio_sound_pitch(aud,random_range(0.9,1.1))	
	}else {
		audio_sound_pitch(aud,pitch)	
	}
}