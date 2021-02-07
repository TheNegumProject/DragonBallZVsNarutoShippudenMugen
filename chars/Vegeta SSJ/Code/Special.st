;---------------------------------------------------------------------------
;  Dash Burst
[Statedef 1100]
type    = S
movetype= I
physics = S
anim = 100
ctrl = 0
poweradd = 0
sprpriority = -1

[State 0, PowerAdd]
type = PowerAdd
triggerall = !time
trigger1 = Prevstateno = [200,219]
trigger2 = Prevstateno = [400,419]
trigger2 = Prevstateno = 1300
value = -1000

[State 0, PalFXWiz]
type = PalFX
triggerall = !time
trigger1 = Prevstateno = [200,219]
trigger2 = Prevstateno = [400,419]
trigger2 = Prevstateno = 1300
time = 10
add = 256,0,0
mul = 256,256,256
sinadd = -256,0,0,40
invertall = 0
color = 256
;ignorehitpause = 0
;persistent = 1


[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = pos Y < 0
statetype = A       ;S,A,C,L
movetype = I        ;I,A,H
physics = A         ;A,C,S,N
;ignorehitpause =
;persistent =


[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = prevstateno = 100 && !Time
value = 100
elem = 2
;ignorehitpause =
;persistent =

[State 0, AfterImage]
type = AfterImage
trigger1 = !time
time = 20
length = 5
palbright = 10,10,10
palcontrast = 120,120,120
paladd = 0,0,0
palmul = 1,1,1
timegap = 1
framegap = 1
trans = Add

;-------------------------
[State 0, Explod]
type = Explod
trigger1 = (time%4)=0
anim =8221
ID = 8100
pos = -15,-15
bindtime = 99
random = 5,15
scale = .5-((random%5)/10),1
sprpriority = 0
removetime = 5
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = (time%6)=0
anim =8221
ID = 8101
pos = -5,-30
bindtime = 99
random = 5,15
scale = .5-((random%5)/10),1
sprpriority = 0
removetime = 5
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = (time%3)=0
anim =8221
ID = 8102
pos = 5,-45
bindtime = 99
random = 5,15
scale = .5-((random%5)/10),1
sprpriority = 0
removetime = 5
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = (time%5)=0
anim =8221
ID = 8103
pos = 15,-60
bindtime = 99
random = 5,15
scale = .5-((random%5)/10),1
sprpriority = 0
removetime = 5
ownpal = 1
removeongethit = 1
;--------------------------

[State 0, Helper]
type = Helper
trigger1 = !time
helpertype = normal ;player
name = "flamesside"
ID = 8301
stateno = 8301
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999

[State 0, ]
type = Explod
triggerall = pos Y >= 0
trigger1 = AnimElem = 2
anim = 8100
ID = 8100
pos = -20,0
facing = 1
scale = 1.3,1.3
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 2000,0
channel = 0

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 100,0
channel = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 =AnimElem = 2,>=1
value = 0
ignorehitpause = 1
;persistent =

[State 0, ]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
;ignorehitpause = 0
;persistent = 1

[State ****: VelSet]
type = VelSet
trigger1 = AnimELem = 2,>1
x = const(velocity.run.fwd.x)*2
;y = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A       ;S,A,C,L
physics = A         ;A,C,S,N
;ignorehitpause =
;persistent =

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk
ignorehitpause = 1

[State 100, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn
ignorehitpause = 1

[State 100, 4]
type = ChangeState
trigger1 = time = 15
value = ifelse(statetype = S,1101,1102)
ctrl = 0

;---------------------------------------------------------------------------
;  Dash Burst End
[Statedef 1101]
type    = S
physics = S
anim = 1101
sprpriority = 1

[State 0, Turn]
type = Turn
trigger1 = P2Dist X <0

[State 0, VelMul]
type = VelMul
trigger1 = 1
x = .8
y = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1
ignorehitpause = 1
;persistent =

[State 0, ]
type = Explod
trigger1 = AnimElem = 1
anim = 8100
ID = 8100
pos = 25-(vel X<0)*50,0
facing = -1+(vel X<0)*2
scale = 1,1
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 52,0

[State 0, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 100, 4]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Dash Burst End AIR
[Statedef 1102]
type    = A
physics = A
anim = 1102
sprpriority = 1
ctrl = 1


[State 0, VelMul]
type = VelMul
trigger1 = 1
x = .8
y = 1


[State 0, Turn]
type = Turn
trigger1 = P2Dist X <0
;ignorehitpause =
;persistent =

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1
ignorehitpause = 1
;persistent =

;-------------------------------------------------------------------------
;Sayajin Beat Down (High) - Elbow
[Statedef 1200]
type	          = S
movetype		= A
physics		= S
anim		= 1200
ctrl		= 0
poweradd		= 50
facep2		= 1
hitdefpersist 	= 0
movehitpersist	= 0
hitcountpersist	= 1
sprpriority 	= 2
juggle = 2

[State 1200,1		Veladd]
type			= Veladd
trigger1		= animelem = 3
x			= 28

[State 1200,2		dash]
type			= PlaySND
trigger1		          = animelem = 3
value			= S100,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S210,4


[State 0, VarSet]
type = VarSet
trigger1 = (command = "QCF_x")
v = 8    ;fv = 10
value = 0
;ignorehitpause = 
;persistent = 

[State 0, VarSet]
type = VarSet
trigger1 = (command = "QCF_y")
v = 8    ;fv = 10
value = 1
;ignorehitpause = 
;persistent = 


[State 1200,3		dash dust]
type			= explod
trigger1		          = animelem = 3
Anim 			= 8100
pos 			= 0,0
Id 			= 8100
sprpriority 	          = 1
ontop 		          = 0
removeongethit 	          = 1
removetime 		= -2
scale 		          = 1, 1
SuperMove 		= 1
ownpal 		          = 1
persistent 		= 0


[State 1200,4		Hitdef]
type		= Hitdef
trigger1		= animelem = 3
attr 		= S, NA
hitflag		= MAF
animtype 		= Heavy
guardflag 	= MA
priority 		= 2, Hit
damage 		= 55,5
pausetime 	= 15,10
guard.pausetime	= 10,12
numhits 		= 1   
sparkno             = S8030+(random%5)
guard.sparkno       = S8022+(random%2)
sparkxy	 	= 0, -59
hitsound 		= S300, 1
guardsound          = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type 	= High
air.type 		= Low
ground.slidetime 	= 10
ground.hittime	= 30
air.hittime 	= 10
ground.velocity	= -10
guard.velocity	= -4
air.velocity	= -4.5,-4.7
airguard.velocity	= -4.5,-4.7
ground.cornerpush.veloff = -4.5
air.cornerpush.veloff = -6
id		= 200
getpower		= 20,10
givepower		= 10,20
envshake.time   	= 5
envshake.freq   	= 140
envshake.ampl   	= -2
envshake.phase  	= 90

;[State 1201:	Fading Afterimage]
;type			= helper
;trigger1 		= movecontact &
;stateno 		= 1001
;ID 			= 1001
;pos 			= 0,0
;ownpal 		= 1
;keyctrl		= 0
;pausemovetime 	= 99
;ignorehitpause	= 1

[State 1200,5	Port]
type			= posadd
trigger1		          = movecontact
x			= p2bodydist X -90
y			= 0

[State 1200,6	Fading Afterimage]
type		= helper
trigger1 		= movecontact && var(23)=0
stateno 		= 1003
ID 		= 1003
pos 		= 0,0
ownpal 		= 1
keyctrl		= 0
pausemovetime 	= 99
ignorehitpause	= 1

[State 1200,7	Change]
type			= changestate
trigger1		          = var(8) = 0 && movecontact 
value			= 1201
ctrl                          = 0

[State 1200,7	Change]
type			= changestate
trigger1		          = var(8) = 1 && movecontact 
value			= 1202
ctrl                          = 0

[State 1200,8		End]
type			= Changestate
trigger1		= time = 16
value			= 0
ctrl			= 1
;--------------------------------------------------------------------------
;Sayajin Beat Down (High) - Kick
[Statedef 1201]
type		= A
movetype		= A
physics		= A
anim		= 1201
ctrl		= 0
poweradd		= 50
facep2		= 0
hitdefpersist 	= 0
movehitpersist	= 0
hitcountpersist	= 1
sprpriority 	= 2
juggle = 2


[State 1201:	Velset]
type			= velset
trigger1		= time = 0
x			= 7.2
y                       = -9.3

[State 1201:	Stop]
type			= statetypeset
trigger1		= animelem = 6
physics		= N

[State 1201:	Stop]
type			= velset
trigger1		= animelem = 6
x			= 0
y			= 0

[State 1201:	Whoosh]
type			= playSND
trigger1		= animelem = 5
value			= S200,1

[State 1201:	Voice]
type			= playSND
trigger1		= animelem = 5
value			= S210,6

[State 1201:	Hitdef]
type			= Hitdef
trigger1		= !time
attr            	= C, NA
hitflag         	= MAFD
guardflag       	= HA
animtype        	= back
air.animtype    	= back
ground.type     	= high
priority        	= 4,Hit
damage          	= 60, 5
pausetime       	= 12, 12
guard.pausetime 	= 7, 8
sparkno             = S8030+(random%5)
guard.sparkno       = S8022+(random%2)
sparkxy         	= -35, 2
hitsound        	= S300,3
guardsound          = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.slidetime  = 15
ground.cornerpush.veloff = -4
ground.hittime  	= 7
guard.hittime   	= 7
air.hittime     	= 14
ground.velocity 	= -8,7
air.velocity    	= -5,10
air.juggle      	= 1
fall            	= 1
fall.recover	= 0
fall.damage     	= 0
air.fall        	= 1
down.velocity   	= -3, -2
down.hittime    	= 0
down.bounce     	= 0
ID              	= 212
chainID         	= -1
numhits         	= 1
getpower        	= 10, 3
givepower       	= 20, 3
envshake.time   	= 0
envshake.freq   	= 60
envshake.ampl   	= -2
envshake.phase  	= 1




[State 1201, VelSet]
type = VelSet
trigger1 = movecontact
x = -2
y = -6
;ignorehitpause =
;persistent =


[State 1201:	End]
type			= changestate
trigger1		= movecontact
value			= 50
ctrl			= 1


[State 1201:		End]
type			= Changestate
trigger1		          = time = 20
value			= 50
ctrl			= 1

;--------------------------------------------------------------------------
;Sayajin Beat Down - Slidekick
[Statedef 1202]
type		= C
movetype		= A
physics		= C
anim		= 1202
ctrl		= 0
poweradd		= 50
facep2		= 0
hitdefpersist 	= 0
movehitpersist	= 0
hitcountpersist	= 1
sprpriority 	= 2
juggle = 2

[State 1202:	Velset]
type		= velset
trigger1		= time = 0
x		= 18

[State 1202:	Whoosh]
type		= playSND
trigger1		= animelem = 3
value		= S50,1

[State 1202:	Voice]
type		= playSND
trigger1		= animelem = 2
value		= S210,5

[State 1202:	Hitdef]
type		= Hitdef
trigger1		= animelem = 3
attr            	= C, SA
hitflag         	= MAFD
guardflag       	= L
animtype        	= back
air.animtype    	= back
ground.type     	= trip
priority        	= 4,Hit
damage          	= 30,5
pausetime       	= 12, 17
guard.pausetime 	= 7, 8
sparkno             = S8030+(random%5)
guard.sparkno       = S8022+(random%2)
sparkxy         	= -15, 2
hitsound        	= S300,3
guardsound          = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.slidetime    = 15
ground.cornerpush.veloff = -4
ground.hittime  	= 7
guard.hittime   	= 7
air.hittime     	= 14
ground.velocity 	= -4, 0
air.velocity    	= -5, 0
fall = 1
air.juggle      	= 1
down.velocity   	= -3, -2
down.hittime    	= 0
down.bounce     	= 0
ID              	= 212
chainID         	= -1
numhits         	= 1
getpower        	= 10, 3
givepower       	= 20, 3
envshake.time   	= 0
envshake.freq   	= 60
envshake.ampl   	= -2
envshake.phase  	= 1

[State 1202:	End]
type			= changestate
trigger1		          = !animtime
value			= 11
ctrl			= 1

;-------------------------------------------------------------------------
;Sayajin Beat Down Launch - Elbow
[Statedef 1220]
type		= S
movetype		= A
physics		= S
anim		= 1220
ctrl		= 0
poweradd		= 100
facep2		= 1
hitdefpersist 	= 0
movehitpersist	= 0
hitcountpersist	= 1
sprpriority 	= 2
juggle              = 7


[State 1220		Veladd]
type			= Veladd
trigger1		= animelem = 2
x			= 2.5

[State 1220		Veladd]
type			= Veladd
trigger1		= animelem = 3
x			= 15

[State 1220:	Whoosh]
type		= playSND
trigger1		= animelem = 3
value		= S50,1

[State 1202:	Voice]
type		= playSND
trigger1		= animelem = 2
value		= S210,5

[State 1220,3		dash dust]
type			= explod
trigger1		          = animelem = 3
Anim 			= 8100
pos 			= 0,0
Id 			= 8100
sprpriority 	          = 1
ontop 		          = 0
removeongethit 	          = 1
removetime 		= -2
scale 		          = 1, 1
SuperMove 		= 1
ownpal 		          = 1
persistent 		= 0

[State 700		Hitdef]
type		= Hitdef
trigger1		= !time
attr 		= S, NA
hitflag		= HAF
animtype 		= Heavy
guardflag 	= MA
priority 		= 2, Hit
damage 		= 125,10
pausetime 	= 20,10
guard.pausetime	= 10,12
numhits 		= 1
sparkno             = S8030+(random%5)
guard.sparkno       = S8022+(random%2)
sparkxy	 	= -17, -53
hitsound 		= S301, 2
guardsound          = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type 	= High
air.type 		= Low
ground.slidetime 	= 10
ground.hittime	= 30
air.hittime 	= 10
ground.velocity	= -9,-7
guard.velocity	= -8
air.velocity	= -7.5,1.7
airguard.velocity	= -4.5,-4.7
ground.cornerpush.veloff = -4.5
air.cornerpush.veloff = -6
id			= 200
down.velocity = -4,-5
down.hittime = 12
down.bounce = 1
getpower		= 20,10
givepower		= 10,20
Fall                    = 1
envshake.time   	= 5
envshake.freq   	= 140
envshake.ampl   	= -2
envshake.phase  	= 90
p2stateno           = 6000






[State 1201:	Fading Afterimage]
type			= helper
trigger1 		= movecontact && var(23)=0
stateno 		= 1003
ID 			= 1003
pos 			= 0,0
ownpal 		= 1
keyctrl		= 0
pausemovetime 	= 99
ignorehitpause	= 1


[State 1200		End]
type			= Changestate
trigger1                = !movecontact && time = 25
value			= 0
ctrl			= 1



[State 1200		End]
type			= Changestate
trigger1                = movecontact
value			= 0
ctrl			= 1

;------------------------------------------------------------------------
[StateDef 1230,Gut Check]
type = S
movetype= A
physics = N
juggle = 0
velset = 0,0
ctrl = 0
anim = 1230
poweradd = 100;0
sprpriority = 2

[State 0, ]
type = AfterImage
trigger1 = AnimElem = 2
time = 35
length = 3
palbright = 0,0,0
palcontrast = 120,120,120
paladd = 50,50,-25
palmul = 1,1,1
timegap = 2
framegap = 1
trans = Add

[State 0, VelSet]
type = VelSet
triggerall = var(21) = 0
trigger1 = AnimElem = 3
x = 5
y = 0

[State 0, VelMul]
type = VelMul
triggerall = var(21) = 0
trigger1 = AnimElem = 3, > 5
x = .8

[State 0, VelSet]
type = VelSet
triggerall = var(21) = 1
trigger1 = AnimElem = 3
x = 10
y = 0

[State 0, VelMul]
type = VelMul
triggerall = var(21) = 1
trigger1 = AnimElem = 3, > 5
x = .8

[State 0, VelSet]
type = VelSet
triggerall = var(21) = 2
trigger1 = AnimElem = 3
x = 9
y = 0

[State 0, VelMul]
type = VelMul
triggerall = var(21) = 2
trigger1 = AnimElem = 3, > 5
x = .8


[State 0, ]
type = PlaySnd
trigger1 = AnimElem = 3
value = 101,0
volume = 255
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = AnimElem = 2
value = 210,2
volume = 255
channel = 2



[State 0, HitBy]
type = HitBy
trigger1 = 1
value = SCA
time = 1

[State 0, ]
type = Explod
trigger1 = AnimElem = 3
anim = 8100
ID = 8100
pos = -20,0
facing = 1
scale = 1,1
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 8888
ID = 8888
pos = 45,-60
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
scale = .75,.75
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 0


[State 0, ]
type = HitDef
triggerall = var(21) = 0
trigger1 = AnimElem = 3,1 || AnimElem = 3,6 
attr = S, SA
damage = 65, 10
nochainID = 1240
ID        = 1240
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 7,12
sparkno = S8030+(random%5)
guard.sparkno = S8022+(random%2)
sparkxy = -25, -60
hitsound = S300, 0
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -12,0
Fall = 0
air.type = Low
air.hittime = 20
air.velocity = -8,-4
airguard.velocity = -3,0
getpower = 0;30
envshake.time = 10
envshake.freq = 110
envshake.ampl = 3

[State 0, ]
type = HitDef
triggerall = var(21) = 1
trigger1 = AnimElem = 3,1 || AnimElem = 3,6 
attr = S, SA
damage = 55, 10
nochainID = 1240
ID        = 1240
animtype = Hard
guardflag = MA
hitflag = MA
priority = 3, Hit
pausetime = 7,12
sparkno = S8030+(random%5)
guard.sparkno = S8022+(random%2)
sparkxy = -25, -60
hitsound = S300, 0
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -12,0
Fall = 0
air.type = Low
air.hittime = 20
air.velocity = -8,-4
airguard.velocity = -3,0
getpower = 0;30
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6

[State 0, ]
type = HitDef
triggerall = var(21) = 2
trigger1 = AnimElem = 3,1 || AnimElem = 3,6 
attr = SCA,NP,SP,HP
damage = 45, 10
nochainID = 1240
ID        = 1240
animtype = Hard
guardflag = MA
hitflag = MA
priority = 9, Hit
pausetime = 7,12
sparkno = S8030+(random%5)
guard.sparkno = S8022+(random%2)
sparkxy = -25, -60
hitsound = S300, 0
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -12,0
Fall = 0
air.type = Low
air.hittime = 20
air.velocity = -8,-4
airguard.velocity = -3,0
getpower = 0;30
envshake.time = 15
envshake.freq = 150
envshake.ampl = 8





[State 0, VarSet]
type = VarSet
trigger1 = (command = "QCB_x")
v = 21    ;fv = 10
value = 0
;ignorehitpause = 
;persistent = 

[State 0, VarSet]
type = VarSet
trigger1 = (command = "QCB_y")
v = 21    ;fv = 10
value = 1
;ignorehitpause = 
;persistent = 

[State 0, VarSet]
type = VarSet
trigger1 = (command = "QCB_z")
v = 21   ;fv = 10
value = 2
;ignorehitpause = 
;persistent = 


[State 0, ]
type                    = ChangeState
triggerall              = movehit && (animelemtime(3) >=4) || animelemtime(3) >=4
trigger1                =(command = "QCB_x") || (command = "QCB_y") || (command = "QCB_z")
value                   = 1231
ctrl                    = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-------------------------------------------------------------------------
;Rib Crush
[Statedef 1231]
type		= S
movetype		= A
physics		= S
anim		= 1231
ctrl		= 0
poweradd		= 50
facep2		= 1
hitdefpersist 	= 0
movehitpersist	= 0
hitcountpersist	= 1
sprpriority 	= 2
juggle = 2


[State 700		Veladd]
type			= Veladd
trigger1		          = time = 2
x			= 7



[State 700       	Swing]
type			= PlaySND
trigger1		          = animelem = 3
value			= S50,1

[State 700		Hitdef]
type			= Hitdef
trigger1		          = animelem = 2
attr 			= S, NA
hitflag		          = MAF
animtype 		          = Heavy
guardflag 		= MA
priority 		          = 2, Hit
damage 		          = 50,10
pausetime 		= 8,15
guard.pausetime	          = 10,12
numhits 		          = 1   
sparkno                       = S8030+(random%5)
guard.sparkno                 = S8020+(random%2)
sparkxy	 	          = -18, -40
hitsound 		          = S300,1 
guardsound                    = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2)) 
ground.type 	          = High
air.type 		          = Low
ground.slidetime 	          = 10
ground.hittime	          = 30
air.hittime 	          = 10
ground.velocity	          = -4,-4
guard.velocity	          = -8
air.velocity	          = -4.5,-4.7
airguard.velocity	          = -4.5,-4.7
ground.cornerpush.veloff      = -4.5
air.cornerpush.veloff         = -6
id			= 200
getpower		          = 20,10
givepower		          = 10,20
envshake.time   	          = 5
envshake.freq   	          = 140
envshake.ampl   	          = -2
envshake.phase  	          = 90
fall                          = 1

[State 0, ]
type                    = ChangeState
triggerall              = movehit && (animelemtime(5)>=1) || animelemtime(5)>=1
trigger1                =(command = "QCB_x") || (command = "QCB_y") || (command = "QCB_z")
value                   = 1232
ctrl                    = 0

[State 700		End]
type			= Changestate
trigger1		= !animtime
value			= 0
ctrl			= 1
;-------------------------------------------------------------------
;Dirt Eater
[Statedef 1232]
type		= A
movetype		= A
physics		= A
anim		= 1232
ctrl		= 0
poweradd		= 50
facep2		= 1
hitdefpersist 	= 0
movehitpersist	= 0
hitcountpersist	= 1
sprpriority 	= 2
juggle = 0

[State 700		Veladd]
type			= Veladd
trigger1		= time = 0
x			= 9
y			= -7

[State 700		Swing]
type			= PlaySND
trigger1		          = animelem = 3
value			= S50,1

[State 700		Dah]
type			= PlaySND
trigger1		= animelem = 3
value			= S210,4

[State 700		Hitdef]
type		= Hitdef
trigger1		= !time
attr 		= S, NA
hitflag		= MAF
animtype 		= Heavy
guardflag 	= HA
priority 		= 2, Hit
damage 		= 25,10
pausetime 	= 18,16
guard.pausetime	= 10,12
numhits 		= 1   
sparkno             = S8030+(random%5)
guard.sparkno       = S8020+(random%2)
sparkxy	 	= -18, -40
hitsound 		= S300, 2 
guardsound          = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2)) 
ground.type 	= High
air.type 		= Low
ground.slidetime 	= 10
ground.hittime	= 30
down.bounce     	= 1
air.hittime 	= 10
fall		= 1
fall.recover	= 0
ground.velocity 	= 3, 9
guard.velocity	= -8
down.velocity	= -4.5
air.velocity	= -3, 6
airguard.velocity	= -4.5,-4.7
ground.cornerpush.veloff = -4.5
air.cornerpush.veloff = -6
id		= 200
getpower		= 20,10
givepower		= 10,20
envshake.time   	= 5
envshake.freq   	= 140
envshake.ampl   	= -2
envshake.phase  	= 90

[State 700		End]
type			= Changestate
trigger1		= movehit || animtime = 0
value			= 50
ctrl			= 1
;------------------------------------------------------------------------
[StateDef 1235,Sayajin Charge]
type = S
movetype= A
physics = N
juggle = 2
velset = 0,0
ctrl = 0
anim = 1230
poweradd = 120;0
sprpriority = 2

[State 0, ]
type = AfterImage
trigger1 = AnimElem = 2
time = 35
length = 3
palbright = 0,0,0
palcontrast = 120,120,120
paladd = 50,50,-25
palmul = 1,1,1
timegap = 2
framegap = 1
trans = Add

[State 0, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 16
y = 0

[State 0, VelMul]
type = VelMul
trigger1 = AnimElem = 3, > 5
x = .8

[State 0, ]
type = PlaySnd
trigger1 = AnimElem = 3
value = 101,0
volume = 255
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = AnimElem = 2
value = 210,2
volume = 255
channel = 2

[State 0, ]
type = Explod
trigger1 = AnimElem = 3
anim = 8100
ID = 8100
pos = -20,0
facing = 1
scale = 1,1
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 8888
ID = 8888
pos = 45,-60
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
scale = .75,.75
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 0


[State 0, ]
type = HitDef
trigger1 = AnimElem = 3,1 || AnimElem = 3,6 || AnimElem = 3,9
attr = A, NA
ID = 1240
nochainID = 1240
damage = 35, 4
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 7+9*(AnimElem = 4,>=13), 14
sparkno = S8012-(random%2)
guard.sparkno = S8022+(random%2)
sparkxy = -25, -60
hitsound = S1, 5
guardsound = S2,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -16,0
Fall = 0
air.type = Low
air.hittime = 20
air.velocity = -8,-4
airguard.velocity = -3,0
getpower = 0;30
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6

[State 0, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-------------------------------------------------------------------------
[StateDef 1240,Sayajin Charge]
type = S
movetype= A
physics = N
juggle = 2
velset = 0,0
ctrl = 0
anim = 1230
poweradd = 150;0
sprpriority = 2

[State 0, ]
type = AfterImage
trigger1 = AnimElem = 2
time = 35
length = 3
palbright = 0,0,0
palcontrast = 120,120,120
paladd = 50,50,-25
palmul = 1,1,1
timegap = 2
framegap = 1
trans = Add

[State 0, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 16
y = 0

[State 0, VelMul]
type = VelMul
trigger1 = AnimElem = 3, > 5
x = .8

[State 0, ]
type = PlaySnd
trigger1 = AnimElem = 3
value = 101,0
volume = 255
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = AnimElem = 2
value = 210,2
volume = 255
channel = 2

[State 0, ]
type = Explod
trigger1 = AnimElem = 3
anim = 8100
ID = 8100
pos = -20,0
facing = 1
scale = 1,1
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 8888
ID = 8888
pos = 45,-60
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
scale = .75,.75
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 0


[State 0, ]
type = HitDef
trigger1 = AnimElem = 3,1 || AnimElem = 3,6 || AnimElem = 3,11 || AnimElem = 3,13
attr = A, NA
damage = 40, 4
animtype = Hard
guardflag = MA
hitflag = MAF
ID = 1240
nochainID = 1240
priority = 3, Hit
pausetime = 7+9*(AnimElem = 4,>=13), 14
sparkno = S8012-(random%2)
guard.sparkno = S8022+(random%2)
sparkxy = -25, -60
hitsound = S1, 5
guardsound = S2,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -12,-5
Fall = 1
p2stateno = 6000
air.type = Low
air.hittime = 20
air.velocity = -8,-4
airguard.velocity = -3,0
getpower = 0;30
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6


[State 0, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-------------------------------------------------------------------------
;Sayajin Strike 
[Statedef 1250]
type	          = S
movetype		= I
physics		= S
anim		= 1250
ctrl		= 0
poweradd		= 50
facep2		= 1
hitdefpersist 	= 0
movehitpersist	= 0
hitcountpersist	= 1
sprpriority 	= 2
juggle              = 1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 2
statetype = A       ;S,A,C,L
movetype = I        ;I,A,H
physics = N        ;A,C,S,N
;ignorehitpause = 
;persistent = 



[State 1200,1		Veladd]
type			=  Veladd
trigger1		= animelem = 2
x			= ifelse((prevstateno =[200,215]),-3,-5)
y                             = -4


[State 1200,1		Veladd]
type			=null; Veladd
trigger1		= animelem = 2
x			= -5
y                             = -4

[State 1200,1		Veladd]
type			=  Veladd
trigger1		= animelem = 3,>0
y                             = .5



[State 1200,2		dash]
type			= PlaySND
trigger1		          = animelem = 3 || animelem = 4 || animelem = 5
value			= S50,1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S210,4


[State 0, VarSet]
type = VarSet
trigger1 = (command = "RDP_y")
v = 9    ;fv = 10
value = 0
;ignorehitpause = 
;persistent = 

[State 0, VarSet]
type = VarSet
trigger1 = (command = "RDP_x")
v = 9    ;fv = 10
value = 1
;ignorehitpause = 
;persistent = 


[State 0, VarSet]
type = VarSet
trigger1 = (command = "RDP_z")
v = 9    ;fv = 10
value = 2
;ignorehitpause = 
;persistent = 



;[State 1201:	Fading Afterimage]
;type			= helper
;trigger1 		= movecontact &
;stateno 		= 1001
;ID 			= 1001
;pos 			= 0,0
;ownpal 		= 1
;keyctrl		= 0
;pausemovetime 	= 99
;ignorehitpause	= 1



[State 1200,7	Change]
type			= changestate
triggerall		          = var(9) = 0 
trigger1                      =  animelemtime(6)>=0 && Pos Y + Vel Y >= 0
value			= 1251
ctrl                          = 0

[State 1200,7	Change]
type			= changestate
triggerall		          = var(9) = 1
trigger1                      =  animelemtime(6)>=0 && Pos Y + Vel Y >= 0
value			= 1252
ctrl                          = 0


[State 1200,7	Change]
type			= changestate
triggerall		          = var(9) = 2
trigger1                      =  animelemtime(6)>=0 && Pos Y + Vel Y >= 0
value			= 1255
ctrl                          = 0
;-----------------------------------------------------------------------
;Sayajin Strike Low
[Statedef 1251]
type = C
movetype = A
physics = N
ctrl = 0
anim = 1251
velset = 0,0
poweradd = 112
juggle = 2

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
;ignorehitpause = 
;persistent = 

[State 0, VelSet]
type = Velset
trigger1 = time = 0
y = 0
;ignorehitpause = 
;persistent = 

[state 1030]
type = makedust
trigger1 = vel X> 0
pos = -10,0
spacing = 3


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1 
value = S210,2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2 
value = S20,2


[state 1030]
type = velset
trigger1 = animelem = 2
x = 14

[state 1030]
type = veladd
trigger1 = vel X> 0 && animelemtime(2) > 7
x = -0.6

[state 1030]
type = velset
trigger1 = animelem = 3
x = 0

[State 640, 3]
type = HitDef
trigger1 = animelem = 2
attr = C, SA
damage    = 56,8
hitflag = MAF
guardflag       	= L
priority = 4,hit ; = 4
pausetime = 10,12
sparkno   = S8030+(random%5)
guard.sparkno = S6014
sparkxy = -10,-5
hitsound = S202, ifelse(random < 500, 2,3)
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
animtype = Med
ground.type = trip
ground.slidetime = 15
ground.hittime  = 15
yaccel = 0.2
ground.velocity = -1,-4
air.velocity = -1,-2
fall = 1

[state 1030]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------
;Sayajin Strike High
[statedef 1252]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1252
velset = 0,0
poweradd = 96
juggle = 2

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
;ignorehitpause = 
;persistent = 

[State 0, VelSet]
type = Velset
trigger1 = time = 0
y = 0
;ignorehitpause = 
;persistent = 

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S20,0



[State 0, Explod]
type = Explod
trigger1 = AnimElem = 5
anim = 8510
ID = 8888
pos = 85,-60
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
scale = .25,.25
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 0


[state 1020]
type = velset
trigger1 = animelem = 4
x = 13
y = -3.2

[State 1020, Width]
type = Width
trigger1 = Animelem = 5
value = 30,30


[state 1020]
type = statetypeset
trigger1 = pos Y!= 0
statetype = A
physics = A

[state 1021]
type = playsnd
trigger1 = animelem = 2
value = 210,2
volume = 255

[state 1021]
type = playsnd
trigger1 = animelem = 3
value = 1005,1
volume = 255

[State 640, 3]
type = HitDef
trigger1 = animelem = 2
attr = S, SA
damage    = 90,15
hitflag = MAF
guardflag = HA
priority = 4,hit ; = 4
pausetime = 10,12
sparkno   = S8030+(random%5)
guard.sparkno = S6014
sparkxy = 0,-53
hitsound = S300, ifelse(random < 500, 1,2)
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
animtype = Med
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6,-4
air.velocity = -3,-2
fall = 1
getpower = 48,24
givepower = 48,48

[state 1020]
type = changestate
trigger1 = animelemtime(4) >0
trigger1 = pos Y>= 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------------------------------------------
;Sayajin Strike Launch (Blast) 
;---------------------------------------------------------------------------
;Sayajin Strike 
[Statedef 1255]
type 		= S
movetype		= A
physics		= N
juggle	    	= 2
anim    	          = 1253
velset		            = 0,0
ctrl			        = 0
poweradd		        = 69
facep2		            = 0
hitdefpersist	        = 0
movehitpersist	        = 0
hitcountpersist	        = 0
sprpriority		        = 2

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
;ignorehitpause = 
;persistent = 

[State 0, VelSet]
type = Velset
trigger1 = time = 0
y = 0
;ignorehitpause = 
;persistent = 


[State 0, ]
type                    = PlaySnd
trigger1                = !time
value                   = 3003, 0

[State 0, ]
type                    = PlaySnd
trigger1                = AnimElem = 3, 5
value                   = 815, 0
channel                 = -1

[State 0, ]
type                    = PlaySnd
trigger1                = !Time
value                   = 210, 6
Volume                  = 255





[State 0:       Big S Dust Left]
type                    = Explod
trigger1                = AnimElem = 3, 5
anim                    = 8100
ID                      = 8100
pos                     = 15,0
removetime              = -2
sprpriority             = 0
ownpal                  = 1
removeongethit          = 0



[State 0: Helper]
type                    = Helper
trigger1                = AnimElem = 3, 5
helpertype              = normal
ID                      = 7023
pos                     = 37,-75
stateno                 = 7023
ownpal                  = 1
pausemovetime           = 999
size.xscale             = .8
size.yscale             = .7

[State 0, ]
type                    = ChangeState
trigger1                = !AnimTime
value                   = 0
ctrl                    = 1

;---------------------------------------------------------------------------
; Sayajin Strike - P2 Get Hit State
[Statedef 1022]
type                    = A
movetype                = H
physics                 = N
ctrl                    = 0
poweradd                = 0
juggle                  = 0
facep2                  = 1
hitdefpersist           = 0
movehitpersist          = 0
hitcountpersist         = 0
sprpriority             = 1

[State 0:     ChangeAnim]
type 			        = ChangeAnim2
trigger1 		        = (!Time)
value 		            = 1022

[State 0, No scroll]
type                    = ScreenBound
triggerall              = Pos y < -15
trigger1                = BackEdgeBodyDist < 65
trigger2                = FrontEdgeBodyDist < 65
value                   = 1
movecamera              = 0,1

;---------------------------------------------------------------------------
; Blaster Ball - hit wall
[Statedef 1023]
type                    = A
movetype                = H
physics                 = N

[State 0, Anim]
type                    = ChangeAnim2
trigger1                = !Time
value                   = 1023

[State 0, Turn]
type                    = Turn
trigger1                = (!Time) && (FrontEdgeBodyDist <= 40)

[State 0, Pos]
type                    = PosAdd
trigger1                = !Time
x                       = BackEdgeBodyDist

[State 0, Stop moving]
type                    = PosFreeze
trigger1                = 1
x                       = 1
y                       = 1

[State 0, Spark]
type                    = Explod
trigger1                = !Time
anim                    = F72
pos                     = 0, floor (screenpos y) - 50
postype                 = back
sprpriority             = 3

[State 0, State]
type                    = ChangeState
trigger1                = !AnimTime
value                   = 1024
ctrl                    = 1

;---------------------------------------------------------------------------
; Blaster Ball - bounce off wall
[Statedef 1024]
type                    = A
movetype                = H
physics                 = N

[State 0, Vel Y]
type                    = VelSet
trigger1                = Time = 0
y                       = -6

[State 0, Vel X]
type                    = VelSet
trigger1                = Time = 0
x                       = 1

[State 0, Turn]
type                    = Turn
trigger1                = (!Time) && (BackEdgeDist < 30)

[State 0, Gravity]
type                    = VelAdd
trigger1                = 1
y                       = .35

[State 0, Anim 5050] ;Self falling animation
type                    = ChangeAnim
trigger1                = !Time
trigger1                = !SelfAnimExist(5052)
value                   = 5050

[State 0, Anim 5052] ;Self falling animation (diagup type)
type                    = ChangeAnim
trigger1                = !Time
trigger1                = SelfAnimExist(5052)
value                   = 5052

[State 0, Anim 5060] ;Coming down - normal
type                    = ChangeAnim
trigger1                = Vel Y > -2
trigger1                = Anim = 5050
trigger1                = SelfAnimExist(5060)
persistent              = 0
value                   = 5060

[State 0, Anim 5062] ;Coming down - diagup type
type                    = ChangeAnim
trigger1                = Vel Y > -2
trigger1                = Anim = 5052
trigger1                = SelfAnimExist(5062)
persistent              = 0
value                   = 5062

[State 0, Hit ground]
type                    = SelfState
trigger1                = (Vel y > 0) && (Pos y >= 0)
value                   = 5100

;---------------------------------------------------------------------------
;Air Raid - Jump
[Statedef 1260]
type		= S
movetype		= A
physics		= S
anim		= 1260
ctrl		= 0
poweradd		= 0
juggle		= 2
facep2		= 1
hitdefpersist	= 1
movehitpersist	= 1
hitcountpersist	= 1
sprpriority		= 2

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = time = 1
statetype = A       ;S,A,C,L
movetype = A        ;I,A,H
physics = S         ;A,C,S,N
;ignorehitpause = 
;persistent = 

[State 40, PlaySnd]
type = PlaySnd
trigger1 = Time = 1 && prevstateno!= 54
value = S20, 1

[State 40, ]
type = Explod
trigger1 = time=0 && (prevstateno!= 54) && (prevstateno!= 40)
anim = 8110
ID = 8110
pos = 0,0
postype = p1
facing = -1
bindtime = 1
;vel = 2,0
;scale=.7,.7
removetime = -2
sprpriority = 10
ownpal = 1


[State 1050:	Posadd Too Close to Wall]
type			= Posadd
trigger1		= time = 0 && backedgebodydist < 10
x			= 4

[State 1050:	Velset Enemy Close]
type			= Velset
trigger1		= time = 0 && p2bodydist x <= 20
x			= 2
y			= -10.888

[State 1050:	Velset Enemy CloseMid]
type			= Velset
trigger1		= time = 0 && (p2bodydist x > 20) && (p2bodydist x <= 60)
x			= 4
y			= -10.888

[State 1050:	Velset Enemy Mid]
type			= Velset
trigger1		= time = 0 && (p2bodydist x > 60) && (p2bodydist x <= 100)
x			= 6
y			= -10.888

[State 1050:	Velset Enemy MidFar]
type			= Velset
trigger1		= time = 0 && (p2bodydist x > 100) && (p2bodydist x <= 140)
x			= 8
y			= -10.8888

[State 1050:	Velset Enemy Far]
type			= Velset
trigger1		= time = 0 && (p2bodydist x > 140) && (p2bodydist x <= 180)
x			= 10
y			= -10.888

[State 1050:	Velset Enemy FarL]
type			= Velset
trigger1		= time = 0 && (p2bodydist x > 180) && (p2bodydist x <= 220)
x			= 12
y			= -10.8888

[State 1050:	Velset Enemy FarXL]
type			= Velset
trigger1		= time = 0 && (p2bodydist x > 220) && (p2bodydist x <= 260)
x			= 14
y			= -10.8888

[State 1050:	Changetoair]
type			= Statetypeset
trigger1		= time = 1
physics		= A

[State 1050:	End]
type			= Changestate
trigger1		= p2dist x < 10.777
value			= 1261

;------------------------------------------------------------------------------------------
;Air Raid - Shoot
[Statedef 1261]
type		= A
movetype		= A
physics		= N
anim		= 1261
ctrl		= 0
poweradd		= 0
juggle		= 2
facep2		= 0
hitdefpersist	= 1
movehitpersist	= 1
hitcountpersist	= 1
sprpriority	= 3

[State 1051:	Velset]
type			= Velset
trigger1		= time = 0
x			= 0
y			= 0

[State 1051:	Voice]
type			= PlaySND
trigger1		= Animelem = 2
value			= S210,4

[State 1051:	Shot1]
type			= PlaySND
trigger1		= Animelem = 2
value			= S1610,0
volume		= 100


;Generated by Fighter Factory PalFX Editor
[State 0, PalFXWiz]
type = PalFX
triggerall = Anim = 1261
trigger1 = (time%5)=0
time = 5
add = 50,50,150
mul = 300,300,300
sinadd = 50,50,150,10
invertall = 0
color = 256
;ignorehitpause = 0
;persistent = 1

[State 1051:	Ball charge ]
type		= Helper
trigger1		= Animelem = 1
helpertype 	= Normal
pos		= -2,-8
facing 		= 1
stateno 		= 1400
ID 		= 6051
keyctrl 		= 0
ownpal 		= 1
supermovetime 	= 200
pausemovetime 	= 200



[State 1051:	Ball]
type		= Helper
trigger1		= Animelem = 2
helpertype 	= Normal
pos		= -2,-8
facing 		= 1
stateno 		= 9050
ID 		= 6051
keyctrl 		= 0
ownpal 		= 1
supermovetime 	= 200
pausemovetime 	= 200
size.xscale         = .5      
size.yscale         = .5


[State 40, ]
type = Explod
trigger1 = animelem = 1
anim = 8520
ID = 8520
pos = 3,-45
postype = p1
facing = 1
bindtime = 1
;vel = 2,0
scale=.9,.8
removetime = -2
sprpriority = 1
ownpal = 1



[State 1051:	End]
type			= Changestate
trigger1		= !animtime
value			= 1262

;------------------------------------------------------------------------------------------
;Air Raid - Fall
[Statedef 1262]
type			= A
movetype		= I
physics		= A
anim			= 1262
ctrl			= 0
poweradd		= 0
juggle		= 4
velset		= 0,0
facep2		= 0
hitdefpersist	= 1
movehitpersist	= 1
hitcountpersist	= 1
sprpriority		= 2

[State 1052:	Turn]
type			= Turn
trigger1		= time = 2 && p2dist x < 0

[State 1052:	Move]
type			= velset
trigger1		= time = 0
x			= 4

[State 1052:	Reset]
type			= Varset
trigger1		= time = 0
v			= 18
value			= 0

[State 1052:	Reset]
type			= Varset
trigger1		= time = 1
v			= 19
value			= 0

[State 1052:	End]
type			= Changestate
trigger1		= !animtime
value			= 50
ctrl			= 1
;-------------------------------------------------------------------------
; Sayajin Dive Light
[StateDef 1500]
type = A
movetype= A
physics = N
juggle = 0
velset = 0,0
ctrl = 0
anim = 1500
poweradd = 30
sprpriority = 2

[State 0, ]
type = AfterImage
trigger1 = AnimElem = 1
time = 25
length = 6
palbright = 10,10,10
palcontrast = 120,120,120
paladd = 0,0,0
palmul = 1,1,1
timegap = 2
framegap = 2
trans = Add

[State 0, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 8
y = 10

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 100,0
volume = 255
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 800
value = 210,12
volume = 255
channel = 2

[State 0, ]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
damage = 55, 10
animtype = Hard
guardflag = MA
hitflag = MAFD
priority = 4, Hit
pausetime = 12, 16
sparkno = S8030+(random%5)
guard.sparkno = S8022+(random%2)
sparkxy = -10, 0
hitsound = S301, 3
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type = Low
ground.slidetime = 20
ground.hittime  = 25
ground.velocity = -9
air.type = Low
air.hittime = 16
Air.Fall = 1
air.velocity = -8,4
airguard.velocity = -4,0
getpower = 30

[State 0, ]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y >= 0)
value = 52
ctrl = 0

;--------------------------------------------------------------------------
;Sayajin Dive Medium
[StateDef 1501]
type = A
movetype= A
physics = N
juggle = 2
velset = 0,0
ctrl = 0
anim = 1500
poweradd = 0;30
sprpriority = 2

[State 0, ]
type = AfterImage
trigger1 = AnimElem = 1
time = 25
length = 6
palbright = 10,10,10
palcontrast = 120,120,120
paladd = 0,0,0
palmul = 1,1,1
timegap = 2
framegap = 2
trans = Add

[State 0, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 9
y = 10

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 100,0
volume = 255
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 800
value = 210,12
volume = 255
channel = 2

[State 0, ]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
damage = 65, 11
animtype = Hard
guardflag = MA
hitflag = MAFD
priority = 4, Hit
pausetime = 8, 16
sparkno = S8030+(random%5)
guard.sparkno = S8022+(random%2)
sparkxy = -10, 0
hitsound = S301, 3
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type = Low
ground.slidetime = 20
ground.hittime  = 25
ground.velocity = -9
air.type = Low
air.hittime = 16
p1stateno = 1505
Air.Fall = 1
air.velocity = -8,5
airguard.velocity = -4,0
getpower = 0;30

[State 0, ]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y >= 0)
value = 52
ctrl = 0

;--------------------------------------------------------------------------
;Sayajin Dive Heavy 
[StateDef 1502]
type = A
movetype= A
physics = N
juggle = 0
velset = 0,0
ctrl = 0
anim = 1500
poweradd = 0;30
sprpriority = 2

[State 0, ]
type = AfterImage
trigger1 = AnimElem = 1
time = 25
length = 6
palbright = 10,10,10
palcontrast = 120,120,120
paladd = 0,0,0
palmul = 1,1,1
timegap = 2
framegap = 2
trans = Add

[State 0, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 10
y = 10

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 100,0
volume = 255
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 800
value = 210,4
volume = 255
channel = 2

[State 0, ]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
damage = 25, 12
animtype = Hard
guardflag = MA
hitflag = MAFD
priority = 4, Hit
pausetime = 8, 35
sparkno = S8030+(random%5)
guard.sparkno = S8022+(random%2)
sparkxy = -10, 0
hitsound = S301, 3
guardsound = S2,0
ground.type = Low
ground.slidetime = 30
ground.hittime  = 35
ground.velocity = 0,0
air.type = Low
air.hittime = 35
p1stateno = 1504
air.velocity = 0,0
airguard.velocity = 0,0
getpower = 0;30

[State 0, ]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y >= 0) 
value = 52
ctrl = 0

;--------------------------------------------------------------------------
;Sayajin Dive Heavy - multi hits
[StateDef 1504]
type = A
movetype= A
physics = N
juggle = 2
velset = 0,0
ctrl = 0
anim = 1504
poweradd = 0;30
sprpriority = 2


[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S215,4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2 || animelem = 4 || animelem = 6
value = S200,3





[State 0, ]
type = AfterImage
trigger1 = AnimElem = 1
time = 35
length = 6
palbright = 10,10,10
palcontrast = 120,120,120
paladd = 0,0,0
palmul = 1,1,1
timegap = 2
framegap = 2
trans = Add

[State 0, ]
type = HitDef
trigger1 = AnimElem = 2  || AnimElem = 4
attr = A, NA
damage = 15, 8
animtype = Hard
guardflag = MA
hitflag = MAFD
priority = 4, Hit
pausetime = 2, 16
sparkno = S8030+(random%5)
guard.sparkno = S8022+(random%2)
sparkxy = -10, 0
hitsound = S300, 4
guardsound = S400,0
ground.type = High
ground.slidetime = 30
ground.hittime  = 35
ground.velocity = 0
air.type = Low
air.hittime = 35
air.velocity = 0,0
airguard.velocity = -4,0
getpower = 0;30

[State 0, ]
type = HitDef
trigger1 = AnimElem = 6
attr = A, NA
damage = 35, 9
animtype = Hard
guardflag = MA
hitflag = MAFD
priority = 4, Hit
pausetime = 10, 16
sparkno = S7034
guard.sparkno = S8022+(random%2)
sparkxy = -14, -17
hitsound = S1010, 0
guardsound = S400,0
ground.type = Low
ground.slidetime = 30
ground.hittime  = 35
ground.velocity = -9,12
air.type = Low
air.hittime = 35
p1stateno = 1506
air.velocity = -9,5
Fall = 1
airguard.velocity = -4,0
getpower = 0;30

[State 0, ]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y >= 0)
value = 52
ctrl = 0

[State 0, ]
type = ChangeState
trigger1 = AnimElem = 6,>=4 
value = 1506
ctrl = 0
;------------------------------------------------------------------------
;Sayajin Dive 2 Leap 
[StateDef 1505]
type = A
movetype= A
physics = A
juggle = 0
velset = 5,-8
ctrl = 0
anim = 42
poweradd = 0;00
sprpriority = 2


[State 0, CtrlSet]
type = CtrlSet
trigger1 = time = 30
value = 1
persistent = 0

[State 0, Turn]
type = Turn
trigger1 = P2BodyDist X < 10
persistent = 0

[State 50, 3]
type = ChangeAnim
trigger1 = Vel y > -5
trigger1 = SelfAnimExist(anim + 3)
persistent = 0
value = Anim + 3

[State 0, ]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y >= 0)
value = 52
ctrl = 0
;--------------------------------------------------------------------------
;Sayajin Dive Launch leap back
[StateDef 1506]
type = A
movetype= A
physics = A
juggle = 0
velset = -3,-5
ctrl = 0
anim = 43
poweradd = 0;0
sprpriority = 2

[State 50, 3]
type = ChangeAnim
trigger1 = Vel y > -5
trigger1 = SelfAnimExist(anim + 3)
persistent = 0
value = Anim + 3

[State 0, ]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y >= 0)
value = 52
ctrl = 0
;-------------------------------------------------------------------------
;ki blast weak
[StateDef 1300]
type = S
movetype= A
physics = N
juggle = 6
velset = 0,0
ctrl = 0
anim = 1300
poweradd = 0
sprpriority = 2

[State 0, PowerAdd]
type = PowerAdd
trigger1 = AnimElem = 3
value = -150
ignorehitpause =  1
;persistent =

[State 0, VarAdd]
type = VarAdd
trigger1 = Anim = 1300 && AnimElem = 3
trigger2 = Anim = 1301 && AnimElem = 3
v = 13    ;fv =
value = 1
ignorehitpause = 1
;persistent =

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1000,1
volume = 255
channel = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S210,1+(random%3)
volume = 255
channel = 2

[State 0, ]
type = Explod
trigger1 = AnimElem = 2
anim = 8100
ID = 8100
pos = -20,0
facing = 1
scale = 1,1
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 0, PalFX]
type = PalFX
trigger1 = AnimElem = 3,1
time = 10
add = 128,128,128
mul = 356,356,256
sinadd = -128,-128,-128,40

[State 0, Helper]
type = Helper
trigger1 = anim = 1300 && AnimElem = 3
helpertype = normal
name = "Kiblast weak"
ID = 1310
stateno = 1310
pos = 70,-65
postype = p1
facing = 1
ownpal = 1
size.xscale = .15
size.yscale = .15

[State 0, Helper]
type = Helper
trigger1 = anim = 1301 && AnimElem = 3
helpertype = normal
name = "Kiblast weak"
ID = 1310
stateno = 1310
pos = 59,-63
postype = p1
facing = 1
ownpal = 1
size.xscale = .15
size.yscale = .15





[State 0, ChangeAnim]
type = ChangeAnim
triggerall = Power > 0 && command = "b" && var(13) < 7
trigger1 = anim = 1300 && AnimElem = 3,>5
value = 1301
elem = 2
ignorehitpause = 1

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = Power > 0 && command = "b" && var(13) < 7
trigger1 = anim = 1301 && AnimElem = 3,>5
value = 1300
elem = 2
ignorehitpause = 1


[State 0, ChangeState]
type = ChangeState
trigger1 =!AnimTime
value = ifelse(power <= 0,9020,0)
ctrl = ifelse(power <= 0,0,1)

;--------------------------------------------------------------------------
;ki blast weak AIR
[StateDef 1305]
type = A
movetype= A
physics = A
juggle = 2
;velset = 0,0
ctrl = 0
anim = 1320
poweradd = 0
sprpriority = 2

[State 0, VelMul]
type = VelMul
trigger1 = time < 12
x = .8
y = .8
;ignorehitpause =
;persistent =

[State 0, VelSet]
type = VelSet
trigger1 = AnimElem = 2, 1
y = -3.5
;ignorehitpause =
;persistent =

[State 0, PowerAdd]
type = PowerAdd
trigger1 = AnimElem = 2
value = -150
ignorehitpause =  1
;persistent =

[State 0, VarAdd]
type = VarAdd
trigger1 = Anim = 1320 && AnimElem = 2
trigger2 = Anim = 1321 && AnimElem = 2
v = 13    ;fv =
value = 1
ignorehitpause = 1
;persistent =

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S1000,1
volume = 255
channel = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S210,1+(random%3)
volume = 255
channel = 2

[State 0, BGPalFX]
type = PalFX
trigger1 = AnimElem = 2,1
time = 10
add = 128,128,128
mul = 356,356,256
sinadd = -128,-128,-128,40

[State 0, Helper]
type = Helper
trigger1 = anim = 1320 && AnimElem = 2
helpertype = normal
name = "Kiblast weak AIR"
ID = 1315
stateno = 1315
pos = 39,-59
postype = p1
facing = 1
ownpal = 1
size.xscale = .15
size.yscale = .15

[State 0, Helper]
type = Helper
trigger1 = anim = 1321 && AnimElem = 2
helpertype = normal
name = "Kiblast weak AIR"
ID = 1315
stateno = 1315
pos = 19,-47
postype = p1
facing = 1
ownpal = 1
size.xscale = .20
size.yscale = .20

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = Power > 0 && command = "b" && var(13) < 7
trigger1 = anim = 1320 && AnimElem = 2,>5
value = 1321
elem = 1
ignorehitpause = 1

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = Power > 0 && command = "b" && var(13) < 7
trigger1 = anim = 1321 && AnimElem = 2,>5
value = 1320
elem = 1
ignorehitpause = 1


[State 0, ChangeState]
type = ChangeState
trigger1 =!AnimTime
value = 50
ctrl = 0
;--------------------------------------------------------------------------
;ki blast - hard
[StateDef 1350]
type = S
movetype= A
physics = S
juggle = 2
velset = 0,0
ctrl = 0
anim = 1350
poweradd = -250
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = (Anim = 1350 && AnimElem = 1)
value = S210,8
volume = 255
channel = 3

[State 40, 5]
type = VelSet
trigger1 = (var(5) = 0) && (!AnimTime) && (prevstateno = 100) && (sysvar(1) = 1)
x = const(velocity.runjump.fwd.x)

;Generated by Fighter Factory PalFX Editor
[State 0, PalFXWiz]
type = PalFX
triggerall = Anim = 1350
trigger1 = (time%5)=0
time = 5
add = -50,-50,-50
mul = 300,300,300
sinadd = 50,50,50,5
invertall = 0
color = 256
;ignorehitpause = 0
;persistent = 1

[State 0, VarSet]
type = VarSet
trigger1 = !time
v = 20
value = 0

[State 0, ]
type = Explod
trigger1 = (Anim = 1351) && (AnimElem = 2)
anim = 8100
ID = 8100
pos = -20,0
facing = 1
scale = 1,1
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = Anim = 1350
trigger1 = (time%15)=0
anim = 8140
ID =   8140
pos = 0,10
facing = -1+(random%2)*2
scale = 1, 1
postype = p1
bindtime = 1
sprpriority = -1
ownpal = 1
removetime = -2
supermovetime = 999
pausemovetime = 999
ontop = 0

[State 0, Explod]
type = Explod
trigger1 = Anim = 1350
trigger1 = (time%30)=0
anim = 8141
ID =   8141
pos = 0,0
facing = -1+(random%2)*2
scale = .7, .7
postype = p1
bindtime = 1
sprpriority = 4
ownpal = 1
removetime = -2
supermovetime = 999
pausemovetime = 999
ontop = 0


[State 0, VarAdd]
type = VarAdd
trigger1 = (Anim = 1350) && (AnimElem = 2,>=20) && (command = "holdb")
v = 20
value = 1

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = Anim = 1350 && AnimElemTime(2) >= 20-(prevstateno = 1300)*5
trigger1 = command != "holdb"
trigger2 = var(20) >= 35
value = 1351

[State 0, PowerAdd]
type = PowerAdd
triggerall = var(20)
trigger1 = (Anim = 1350) && (AnimElem = 2,>=20) && (command = "holdb")
value = -10


[State 0, Helper]
type = Helper
trigger1 = Anim = 1350 && AnimElem = 1
helpertype = normal
name = "electriccharge"
ID = 1320
stateno = 1320
pos = 0,-110
postype = p1
facing = 1
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = (Anim = 1351 && AnimElem = 1)
value = S210,6
volume = 255
channel = 3

[State 0, PalFX]
type = PalFX
trigger1 = (Anim = 1351 && AnimElem = 2)
time = 10
add = 128,128,128
mul = 356,356,256
sinadd = -128,-128,-128,40

[State 0, Helper]
type = Helper
trigger1 = (Anim = 1351 && AnimElem = 2)
helpertype = normal
name = "Kiblast Strong"
ID = 1330
stateno = 1330
pos = 55,-59
postype = p1
facing = 1
ownpal = 1
size.xscale = .35
size.yscale = .35

[State 0, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = ifelse(power <= 0,9020,0)
ctrl = ifelse(power <= 0,0,1)

;--------------------------------------------------------------------------
;Power up start
[StateDef 2000]
type = S
movetype= I
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 2000
poweradd = 0;0
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2,1
value = S2000,0
volume = 255
channel = 1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1,1
value = S210,6
volume = 255
channel = 3

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 2,1
anim = 8140
ID =   8140
pos = 0,0
scale = 1, 1
postype = p1
bindtime = 1
sprpriority = -1
ownpal = 1
removetime = -2
supermovetime = 999
pausemovetime = 999
ontop = 0

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 2,1
anim = 8141
ID =   8141
pos = 0,0
scale = 1.3, 1.3
postype = p1
bindtime = 1
sprpriority = 4
ownpal = 1
removetime = -2
supermovetime = 999
pausemovetime = 999
ontop = 0

[State 0, Helper]
type = Helper
trigger1 = AnimElem = 2,1
helpertype = normal ;player
name = "Shockwave"
ID = 8200
stateno = 8200
pos = 0,-40
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999

[State 0, EnvShake]
type = EnvShake
trigger1 = AnimElem = 2,1
time = 20
freq = 140
ampl = 8
;phase = 90
;ignorehitpause =
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 = AnimElem = 2,5
value = 2001
ctrl = 0

;--------------------------------------------------------------------------
;Powering up
[StateDef 2001]
type = S
movetype= I
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 2002
poweradd = 0;0
sprpriority = 2

[State 0, BGPalFX]
type = BGPalFX
triggerall = PalNo = [1,6]
trigger1 = (time%10)=0
time = 10
add = -32,-32,-16
mul = 256,256,192
sinadd = 32,32,16,5

[State 0, BGPalFX]
type = PalFX
triggerall = PalNo = [1,6]
trigger1 = (time%10)=0
time = 10
add = 64,64,0
mul = 256,256,256
sinadd = 128,128,64,5

[State 0, BGPalFX]
type = BGPalFX
triggerall = PalNo = [7,9]
trigger1 = (time%10)=0
time = 10
sinadd = 32,32,32,5

[State 0, BGPalFX]
type = PalFX
triggerall = PalNo = [1,9]
trigger1 = (time%10)=0
time = 10
add = 0,0,0
mul = 256,256,256
sinadd = 64,64,64,5

[State 0, Explod]
type = Explod
trigger1 = (time%15)=0
anim = 8140
ID =   8140
pos = 0,10
facing = -1+(random%2)*2
scale = 1, 1
postype = p1
bindtime = 1
sprpriority = -1
ownpal = 1
removetime = -2
supermovetime = 999
pausemovetime = 999
ontop = 0

[State 0, Explod]
type = Explod
triggerall = random = [1,333]
trigger1 = (time%20)=0
anim = 8141
ID =   8141
pos = 0,0
facing = -1+(random%2)*2
scale = 1,1
postype = p1
bindtime = 1
sprpriority = 4
ownpal = 1
removetime = -2
supermovetime = 999
pausemovetime = 999
ontop = 0

[State 0, Explod]
type = Explod
triggerall = random = [334,666]
trigger1 = (time%20)=0
anim = 8141
ID =   8141
pos = 0,0
facing = -1+(random%2)*2
scale = .8,.8
postype = p1
bindtime = 1
sprpriority = 4
ownpal = 1
removetime = -2
supermovetime = 999
pausemovetime = 999
ontop = 0

[State 0, Explod]
type = Explod
triggerall = random = [667,999]
trigger1 = (time%20)=0
anim = 8141
ID =   8141
pos = 0,0
facing = -1+(random%2)*2
scale = .6,.6
postype = p1
bindtime = 1
sprpriority = 4
ownpal = 1
removetime = -2
supermovetime = 999
pausemovetime = 999
ontop = 0

[State 0, PowerAdd]
type = PowerAdd
trigger1 = time < 60
value = 8

[State 0, PowerAdd]
type = PowerAdd
trigger1 = time = [60,119]
value = 14

[State 0, PowerAdd]
type = PowerAdd
trigger1 = time  = [120,179]
value = 18

[State 0, PowerAdd]
type = PowerAdd
trigger1 = time >= 180
value = 20



[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 120
value = S2001,2
volume = 255
channel = 3

[State 0, EnvShake]
type = EnvShake
trigger1 = (time%8)=0
time = 4
freq = 120
ampl = -6

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S2000,1
volume = 255
channel = 7
loop = 1

[State 0, Helper]
type = Helper
triggerall = var(26) = 0
trigger1 = !time
helpertype = normal ;player
name = "flamesup"
ID = 8300
stateno = 8300
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999

[State 0, ChangeState]
type = ChangeState
triggerall = time > 20
trigger1 = (command != "holda")
Value = 0
ctrl = 1

;--------------------------------------------------------------------------
;Zanzoken - Start
[StateDef 2100]
type = S
movetype= I
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 100
poweradd = -500
sprpriority = 2

[State 0, VarAdd]
type = VarAdd
trigger1 = !time && var(3) <= 2
v = 3
value = 2

[State 0, Helper]
type = Helper
trigger1 = !time
helpertype = normal ;player
name = "afterimage"
ID =8211
stateno = 8211
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = !time
flag = invisible
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S2100,0
volume = 255
channel = 6

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 1
value =  2101
ctrl = 0

;--------------------------------------------------------------------------
;zanzoken dissapear!
[StateDef 2101]
type = S
movetype= I
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 2101
poweradd = 0;0
sprpriority = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, Helper]
type = Helper
trigger1 = !time
helpertype = normal ;player
name = "linezanzouken"
ID =8210
stateno = 8210
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999

[State 0, PosSet]
type = PosSet
trigger1 = Pos Y >= 0
y = 0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, Pause]
type = Pause
trigger1 = P2MoveType = H
time = 5
movetime = 5

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 =Pos Y < 0
statetype = A
movetype = A
physics = N

[State 0, PosSet]
type = PosSet
trigger1 = !time && numtarget
x = ifelse(  facing = -1,(target, pos X-20), (target, pos X+20)  )
y = target, pos Y

[State 0, PosSet]
type = PosSet
trigger1 = !time && !numtarget
x = ifelse(  facing = -1,(enemynear, pos X-20), (enemynear, pos X+20)  )
y = enemynear, pos Y

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 1
y = 0

[State 0, ChangeState - idle]
type = ChangeState
trigger1 = !AnimTime; && command = "holddown"
value =  2105
ctrl = 1


;--------------------------------------------------------------------------
;Zanzoken attack - Start
[StateDef 2110]
type = S
movetype= I
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 100
poweradd = -500
sprpriority = 2

[State 0, VarAdd]
type = VarAdd
trigger1 = !time && var(3) <= 2
v = 3
value = 1

[State 0, Helper]
type = Helper
trigger1 = !time
helpertype = normal ;player
name = "afterimage"
ID =8211
stateno = 8211
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = !time
flag = invisible
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S2100,0
volume = 255
channel = 6

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 1
value =  2111
ctrl = 0

;--------------------------------------------------------------------------
;zanzoken attack - dissapear!
[StateDef 2111]
type = S
movetype= I
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 2101
poweradd = 0;0
sprpriority = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, Helper]
type = Helper
trigger1 = !time
helpertype = normal ;player
name = "linezanzouken"
ID =8210
stateno = 8210
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999

[State 0, PosSet]
type = PosSet
trigger1 = Pos Y >= 0
y = 0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, Pause]
type = Pause
trigger1 = P2MoveType = H
time = 15
movetime = 15

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 =Pos Y < 0
statetype = A
movetype = A
physics = N

[State 0, PosSet]
type = PosSet
trigger1 = !time && numtarget
x = ifelse(  facing = -1,(target, pos X-20), (target, pos X+20)  )
y = target, pos Y

[State 0, PosSet]
type = PosSet
trigger1 = !time && !numtarget
x = ifelse(  facing = -1,(enemynear, pos X-20), (enemynear, pos X+20)  )
y = enemynear, pos Y

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 1
y = 0

[State 0, ChangeState - Attack]
type = ChangeState
trigger1 = !AnimTime
value =  2112+(var(3)-1)
ctrl = 0

;--------------------------------------------------------------------------
;Zanzoken Attack 1
[StateDef 2112]
type = U
movetype= A
physics = U
juggle = 2
velset = 0,0
ctrl = 0
anim = 2112
poweradd = 0;0
sprpriority = 2

[State 0, Turn]
type = Turn
trigger1 = !time

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 2100,1
volume = 255
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 800
value = 4,16
volume = 255
channel = 2



[State 0, Helper]
type = Helper
trigger1 = movehit = 1
helpertype = normal ;player
name = "Shockwave"
ID = 8200
stateno = 8200
pos = 0,-55
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
damage = 48, 9
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 15, 15
sparkno = S8030+(random%5)
guard.sparkno = S8020+(random%2)
sparkxy = -10, -55
hitsound = S203, 1
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type = Low
ground.slidetime = 35
ground.hittime  = 35
ground.velocity = -14,-7
p2stateno = 6000
Fall = 1
air.type = Low
air.hittime = 35
air.velocity = -14,-7
airguard.velocity = -4.5,0
getpower = 0;30
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
yaccel = .4

[State 0, ]
type = ChangeState
trigger1 = !AnimTime
value = 0+(statetype=A)*50
ctrl = 1

;--------------------------------------------------------------------------
;Zanzoken Attack 2
[StateDef 2113]
type = U
movetype= A
physics = U
juggle = 0
velset = 0,0
ctrl = 0
anim = 2113
poweradd = 0;0
sprpriority = 2

[State 0, Turn]
type = Turn
trigger1 = !time

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 2100,3
volume = 255
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 800
value = 4,16
volume = 255
channel = 2

[State 0, Helper]
type = Helper
trigger1 = movehit = 1
helpertype = normal ;player
name = "Shockwave"
ID = 8200
stateno = 8200
pos = 0,-66
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
damage = 48, 9
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 15, 15
sparkno = S8030+(random%5)
guard.sparkno = S8020+(random%2)
sparkxy = -10, -66
hitsound = S203, 1
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type = High
ground.slidetime = 35
ground.hittime  = 35
ground.velocity = -14,-14
p2stateno = 6000
Fall = 1
air.type = High
air.hittime = 35
air.velocity = -14,-14
airguard.velocity = -4.5,0
getpower = 0;30
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
yaccel = .4

[State 0, ]
type = ChangeState
trigger1 = !AnimTime
value = 0+(statetype=A)*50
ctrl = 1

;--------------------------------------------------------------------------
;Zanzoken Attack 3
[StateDef 2114]
type = U
movetype= A
physics = U
juggle = 0
velset = 0,0
ctrl = 0
anim = 2114
poweradd = 0;0
sprpriority = 2

[State 0, Turn]
type = Turn
trigger1 = !time

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 2100,2
volume = 255
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 800
value = 4,16
volume = 255
channel = 2

[State 0, Helper]
type = Helper
trigger1 = movehit = 1
helpertype = normal ;player
name = "Shockwave"
ID = 8200
stateno = 8200
pos = 0,-40
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 55, 11
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 15
sparkno = S8030+(random%5)
guard.sparkno = S8020+(random%2)
sparkxy = -10, -40
hitsound = S203, 1
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type = High
ground.slidetime = 35
ground.hittime  = 35
ground.velocity = -7,14
p2stateno = 6000
Fall = 1
air.type = High
air.hittime = 35
air.velocity = -7,14
airguard.velocity = -4.5,0
getpower = 0;30
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
yaccel = .4

[State 0, ]
type = ChangeState
trigger1 = !AnimTime
value = 0+(statetype=A)*50
ctrl = 1


;--------------------------------------------------------------------------
;Zanzoken - Reappear AIR
[StateDef 2105]
type = A
movetype= A
physics = A
juggle = 0
velset = 0,-3
ctrl = 1
anim = 2105
poweradd = 0;0
sprpriority = 2

[State 0, Turn]
type = Turn
trigger1 = !time

[State 0, ]
type = ChangeState
trigger1 = Pos Y >= 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;Tired
[Statedef 9020]
type = S
physics = S
movetype = H
ctrl = 0

[State 9000, Change Animation]
type = ChangeAnim
trigger1 = !time
value = 5300

[State 0, VarSet]
type = VarSet
trigger1 = !time
v = 2
value = 0

[State 0, VarAdd]
type = VarAdd
trigger1 = 1
v = 2
value = 1

[State 0, VarAdd]
type = VarAdd
trigger1 = command = "x" || command = "y" || command = "z"
v = 2
value = 5

[State 9003, Flash]
type = PalFX
trigger1 =  command = "x" || command = "y" || command = "z"
time = 2
add = 50,50,50
mul = 300,300,300

[State 9000, Next]
type = SelfState
trigger1 = var(2)>= 120
value = 0
ctrl = 1
