x=-50
level=0
cam = view_camera[0]
deadTimer=0
deadTime=60
win=0
winTimer=0
winTime=30
global.solidSprite=irandom(1)
depth=99
tutImg=0
tutMaxImg=sprite_get_number(sWASD)
tutTimer=0
tutTime=7
global.moving=false
instance_create_depth(0,0,0,oFade)

s=0
xOff=0
xCur=-1