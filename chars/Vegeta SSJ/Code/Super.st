 ;--------------------------------------------------------------------------
;Galick Gun - Start
[StateDef 3000]
type = S
movetype= A
physics = S
juggle = 8
velset = 0,0
ctrl = 0
anim = 3000
poweradd = -1000
sprpriority = 2

[State 0, ScreenBound]
type = null;ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0


[State 0, PalFXWiz]
type = PalFX
trigger1 = !time
time = 45
add = 220,60,230
mul = 180,180,190
sinadd = -180,-60,-230,10
invertall = 0
color = 230




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
trigger1 = (time%20)=0
anim = 8141
ID =   8141
pos = 0,10
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

[State 0, SuperPause]
type = SuperPause
trigger1 = AnimElem = 2
time = 45
anim = -1
sound = -1
movetime = 45
darken = 0


[State 0, Helper]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal ;player
name = "Shockwave"
ID = 8200
stateno = 8200
pos = -17,-66
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999

[State 0, BGPalFX]
type = BGPalFX
trigger1 = time < 45
time = 1
add = 256-floor(time*5.67),256-floor(time*5.67),256-floor(time*5.67)
mul = 256,256-floor(time*5.67),256
color = 256-floor(time*5.67)

[State 0, Helper]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal
name = "chargegalick"
ID = 8506
stateno = 8506
pos = -17,-66
postype = p1
facing = 1
ownpal = 1
size.xscale = .7
size.yscale = .7
supermovetime = 999

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 8400
ID = 8400
pos = -17,-66
postype = p1
bindtime = -1
removetime = -2
supermovetime = 999
scale = 1,1
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 50
value = S210,6
volume = 0
channel = 2

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 45
value = 3001
ctrl = 0


;--------------------------------------------------------------------------
;Galick gun - Fire
[StateDef 3001]
type = S
movetype= A
physics = S
juggle = 8
velset = 0,0
ctrl = 0
anim = 3001
;poweradd = 0;0
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S3001,3
volumescale = 80


[State 0, BGPalFX]
type = PalFX
trigger1 = !time
time = 20
add = 198,128,198
mul = 356,356,256
sinadd = -128,-128,-128,80




[State 0, ScreenBound]
type = ScreenBound
trigger1 = var(42) = 1
value = 0
movecamera = 0,0
ignorehitpause = 1
;persistent =

[State 0, BGPalFX]
type = BGPalFX
trigger1 = time <= 9
time = 1
add = 0,0,0
mul = 256,floor((time*25.6)),256
color = floor((time*25.6))

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

[State 0, Helper]
type = Helper
trigger1 = (Anim = 3001) && (AnimElem = 2)
helpertype = normal
name = "galickgun!"
ID = 8516
stateno = 8516
pos = 43,-57
postype = p1
facing = 1
ownpal = 1
size.xscale = 1
size.yscale = 1
supermovetime = 999


[State 0, Helper]
type = Helper
trigger1 = (Anim = 3001) && (AnimElem = 2)
helpertype = normal
name = "galickgun Push"
ID = 8318
stateno = 8318
pos = 10,-57
postype = p1
facing = 1
ownpal = 1
size.xscale = 1
size.yscale = 1
supermovetime = 999

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 5
value = 3002
;elem = 1
ignorehitpause = 1
;persistent =


[State 0, ChangeState]
type = ChangeState
trigger1 = (Anim = 3002) && (!AnimTime)
value = 0
ctrl = 1

;-------------------------------------------------------------------------
;Galick Gun Air - Start
[StateDef 3003]
type = A
movetype= A
physics = N
juggle = 0
velset = 0,0
ctrl = 0
anim = 3003
poweradd = -1000
sprpriority = 2

[State 0, ScreenBound]
type = null;ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0


[State 0, SuperPause]
type = SuperPause
trigger1 = AnimElem = 2
time = 45
anim = -1
sound = -1
movetime = 45
darken = 0

[State 40, ]
type = Explod
trigger1 = animelem = 1
anim = 8420
ID = 8420
pos = 5,-45
postype = p1
facing = -1
bindtime = 1
;vel = 2,0
scale=.8111,.8111
removetime = 70
sprpriority = 1
ownpal = 1
supermovetime = 999
pausemovetime = 999


[State 0, PalFXWiz]
type = PalFX
trigger1 = !time
time = 50
add = 220,60,230
mul = 180,180,190
sinadd = -180,-60,-230,10
invertall = 0
color = 230

[State 0, Helper]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal ;player
name = "Shockwave"
ID = 8200
stateno = 8200
pos = -17,-66
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999

[State 0, BGPalFX]
type = BGPalFX
trigger1 = time < 45
time = 1
add = 256-floor(time*5.67),256-floor(time*5.67),256-floor(time*5.67)
mul = 256,256-floor(time*5.67),256
color = 256-floor(time*5.67)

[State 0, Helper]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal
name = "chargegalick"
ID = 8506
stateno = 8507
pos = -17,-266
postype = p1
facing = 1
ownpal = 1
size.xscale = .4
size.yscale = .4
supermovetime = 999

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 8400
ID = 8400
pos = -17,-66
postype = p1
bindtime = -1
removetime = -2
supermovetime = 999
scale = 1,1
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1


[State 0, ChangeState]
type = ChangeState
trigger1 = time = 50
value = 3004
ctrl = 1
;----------------------------------------------------------------------
;Galick gun (Air) - Fire
[StateDef 3004]
type = A
movetype= A
physics = N
;juggle = 6
velset = 0,0
ctrl = 0
anim = 3004
;poweradd = 0;0
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S3001,3
volumescale = 55


[State 0, BGPalFX]
type = PalFX
trigger1 = !time
time = 20
add = 198,128,198
mul = 356,356,256
sinadd = -128,-128,-128,80


[State 0, VarSet]
type = VarSet
trigger1 = !time
v = 42
value = 0
ignorehitpause = 1
persistent = 0

[State 0, VarSet]
type = VarSet
trigger1 = numhelper(8516)
v = 42
value = 1
ignorehitpause = 1
persistent = 0


[State 0, ScreenBound]
type = ScreenBound
trigger1 = var(42) = 1
value = 0
movecamera = 0,0
ignorehitpause = 1
;persistent =

[State 0, BGPalFX]
type = BGPalFX
trigger1 = time <= 9
time = 1
add = 0,0,0
mul = 256,floor((time*25.6)),256
color = floor((time*25.6))


[State 0, Helper]
type = Helper
trigger1 = (Anim = 3004) && (AnimElem = 2)
helpertype = normal
name = "galickgun!"
ID = 2515
stateno = 2515
pos = 55,-32
postype = p1
facing = 1
ownpal = 1
size.xscale = .7
size.yscale = .7
supermovetime = 999


[State 0, ChangeState]
type = ChangeState
trigger1 = time = 30
value = 50
ctrl = 0

;-------------------------------------------------------------------------
;Million Dollar Renzoku
[StateDef 3100]
type = S
movetype= A
physics = S
juggle = 8
velset = 0,0
ctrl = 0
anim = 3100
poweradd = -1000
sprpriority = 2

[State 0, ScreenBound]
type = null; ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8140
ID =   8140
pos = 0,0
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
trigger1 = !time
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
trigger1 =  animelem = 2
anim = 8400
ID = 8400
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
supermovetime = 999
scale = 1,1
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, Helper]
type = Helper
trigger1 = !time
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

[State 0, SuperPause]
type = SuperPause
trigger1 = !time
time = 60
anim = -1
sound = -1
movetime = 60
darken = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S190,4



[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S3001,0


[State 0, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 1
add = 256-floor((time*4.25)),256-floor((time*4.25)),256-floor((time*4.25))
mul = 256,256,256-floor((time*4.25))
color = 256-floor((time*4.25))

[State 0, Helper]
type = Helper
trigger1 = !time
helpertype = normal ;player
name = "superchargeren"
ID =8500
stateno = 8500
pos = -21,-52
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime =999
pausemovetime = 999

[State 0, Helper]
type = Helper
trigger1 = !time
helpertype = normal ;player
name = "superchargeren"
ID =8501
stateno = 8500
pos = 16,-49
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime =999
pausemovetime = 999

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 60
value = 3101
ctrl = 1

;--------------------------------------------------------------------------
;Million Dollar Renzoku - fire
[StateDef 3101]
type = S
movetype= A
physics = S
juggle = 6
velset = 0,0
ctrl = 0
anim = 3101
poweradd =0
sprpriority = 2

[State 0, BGPalFX]
type = BGPalFX
trigger1 = time <= 10
time = 1
add = 0,0,0
mul = 256,256,floor((time*25.6))
color = floor((time*25.6))


[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 3101
trigger1 = AnimElem = 1 || AnimElem = 5 || AnimElem = 9 || AnimElem = 13
value = S1000,1
volume = 255
channel = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 3102 && animelemtime(4)>=0
trigger1   = enemy, Pos y > -160
value = S1000,2
persistent = 0


[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 3101
trigger1 = AnimElem = 4 || AnimElem = 7 || AnimElem = 11 || AnimElem = 14
trigger2 = AnimElem = 18 || AnimElem = 21 || AnimElem = 25 || animelem =28
trigger3 =  AnimElem = 32 || AnimElem = 35 || animelem = 38 || animelem = 41
trigger4 =  AnimElem = 45 || AnimElem = 48 || animelem = 52 || animelem = 55
trigger5 =  AnimElem = 59 || AnimElem = 62 || animelem = 66 || animelem = 68
value = S1000,0
volume = 255
channel = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 3101
trigger1 = animelem = 4
value = S215,3
volume = 255
channel = 2


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 68
value = S210,6
volume = 255
channel = 4


[State 0, ]
type = Explod
triggerall = anim = 3101
trigger1 = AnimElem = 4  || AnimElem = 11 || AnimElem = 18
trigger2 = AnimElem = 25 || animelem =32
trigger3 =  AnimElem = 38 || AnimElem = 52 || animelem = 59
anim = 8100
ID = 8100
pos = -20,0
facing = 1
scale = 1,1
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 0, Helper]
type = Helper
triggerall = anim = 3101
trigger1 = AnimElem = 4 ||  AnimElem = 11  
trigger2 = AnimElem = 18 ||  AnimElem = 25 || animelem = 32
trigger3 = AnimElem = 38 ||  AnimElem = 45 || animelem = 52
trigger4 = AnimElem = 59 ||  AnimElem = 66 
helpertype = normal
name = "Kiblast ren"
ID = 1310
stateno = 1360
pos = 40,-62
postype = p1
facing = 1
ownpal = 1
size.xscale = .15
size.yscale = .15


[State 0, Helper]
type = Helper
trigger1 =  AnimElem = 7 || AnimElem = 14 || animelem = 21
trigger2 =  AnimElem = 28 || AnimElem = 35 || animelem = 41
trigger3 =  AnimElem = 48 || AnimElem = 55 || animelem = 62
helpertype = normal
name = "Kiblast ren"
ID = 1310
stateno = 1360
pos = 15,-62
postype = p1
facing = 1
ownpal = 1
size.xscale = .17
size.yscale = .15

[State 0: Helper]
type                    = Helper
trigger1                = AnimElem = 68
helpertype              = normal
ID                      = 7023
pos                     = 20,-55
stateno                 = 7023
ownpal                  = 1
pausemovetime           = 999
size.xscale             = .9
size.yscale             = .7


[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 3101 && !animtime 
value = 3102
;elem = 1
;ignorehitpause = 
persistent = 0


[State 0, ]
type = Explod
trigger1 = anim = 3102 && animelem = 4
anim = 8100
ID = 8100
pos = -20,0
facing = 1
scale = 1,1
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1
removeongethit = 1




[State 0, Helper]
type =  Helper
triggerall = anim = 3102 && animelemtime(4)>=0
;trigger1   = numtarget 
trigger1   = enemy, Pos y > -135
helpertype = normal
name = "Kibullet"
ID = 1320
stateno = 1370
pos = 40,-72
postype = p1
facing = 1
ownpal = 1
size.xscale = .45
size.yscale = .15
persistent = 0

[State 0: Helper]
type                    = null; Helper
triggerall = anim = 3102 && animelemtime(4)>=0
trigger1   = enemy, Pos y > -135
helpertype              = normal
ID                      = 7023
pos                     = 40,-70
stateno                 = 7023
ownpal                  = 1
pausemovetime           = 999
size.xscale             = .83
size.yscale             = .30
persistent = 0

[State 0, ]
type = Explod
triggerall = anim = 3102 && animelemtime(4)>=0
;trigger1   = numtarget 
trigger1   = enemy, Pos y > -160
anim = 8100
ID = 8100
pos = -20,0
facing = 1
scale = 1,1
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1
persistent = 0
removeongethit = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 3102 && animelemtime(4)>=0
;trigger1   = numtarget 
trigger1   = enemy, Pos y > -160
value = S210,11
persistent = 0


[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 3102
trigger1 = animelem = 3
value = S3100,0
volume = 255
channel = 10

[State 0, ]
type = Explod
triggerall = anim = 3102
trigger1 = AnimElem = 3
anim = 8525
ID = 8100
pos = 0,0
facing = 1
scale = 1,1
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1
removeongethit = 1

[State 0, Helper]
type = Helper
trigger1   = !time
helpertype = normal ;player
name = "flamesup"
ID = 8303
stateno = 8303
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = 1.2
size.yscale = 1.2


[State 0, Helper]
type = Helper
triggerall = anim = 3102
trigger1 = animelem = 3
helpertype = normal ;player
name = "superchargeren"
ID =8500
stateno = 8500
pos = 40,-73
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime =999
pausemovetime = 999
size.xscale = .75
size.yscale = .75



[State 0, ChangeState]
type = ChangeState
trigger1 = anim = 3102 && !animtime || anim = 3101 && !animtime
value = 0
ctrl = 1

;------------------------------------------------------------------------
;Bakuhatsuha
[StateDef 3200]
type = S
movetype= A
physics = S
juggle = 2
velset = 0,0
ctrl = 0
anim = 3200
poweradd = -2000
sprpriority = 2

[State 0, ScreenBound]
type = null; ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8140
ID =   8140
pos = 0,0
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
trigger1 = !time
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


[State 0, ]
type = Explod
trigger1 = animelem = 2
anim = 8525
ID = 8100
pos = 0,0
facing = 1
scale = 1,1
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999


[State 0, Explod]
type = Explod
trigger1 =  animelem = 2
anim = 8400
ID = 8400
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
supermovetime = 999
scale = 1,1
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, Helper]
type = Helper
trigger1 = !time
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

[State 0, SuperPause]
type = SuperPause
trigger1 = !time
time = 60
anim = -1
sound = -1
movetime = 60
darken = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S215,4



[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S3001,0




[State 0, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 1
add = 256-floor((time*4.25)),256-floor((time*4.25)),256-floor((time*4.25))
mul = 64,161,255
color = 256-floor((time*4.25))

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 60
value = 3201
ctrl = 1

;--------------------------------------------------------------------------
;Bakuhatsuha - Dash
[Statedef 3201]
type = S
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 3201
poweradd = 0
sprpriority = 2

[state 1030]
type = velset
trigger1 = animelem = 2
x = 14

[state 1030]
type = veladd
trigger1 = vel X> 0 && animelemtime(2) > 7
x = -0.6


[State 0, Explod]
type =  Explod
trigger1 = !time
anim = 8100
ID = 7015
pos = 0,0
facing = 1
postype =p1
bindtime = 1
removetime = -2
scale = 1,1
pausemovetime =999
sprpriority = 4
removeongethit = 1
ownpal = 1


[State 0, HitDef]
type = HitDef
trigger1 = animelem =2
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MA        ;HLAFD+-
ID = 3201
NochainID           = 3201
guardflag = MA         ;HLA
getpower = 0,0
givepower = 0,0         ;B,E,F
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 5,Hit   ;Hit,Miss,Dodge
damage = 0,0
pausetime = 0,15
sparkno = -1
guard.sparkno =s9054
sparkxy = -10, -35
hitsound = s2,9
guardsound = s0,9
ground.type = High      ;Low,Trip,None
ground.slide = 0
ground.hit = 0
air.hittime = 20
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
ground.velocity = 0,0
air.velocity = 0,0
sprpriority = 1
id = 20
snap = 20, 0
p1getp2facing = 0
down.bounce = 0
kill= 1

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

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S20,0


[State 0, PlaySnd]
type = PlaySnd
trigger1 = Animelem=1
value = S0,4

[State 0, end]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[State 0, end]
type = ChangeState
trigger1 = moveguarded
value = 0
ctrl = 1


[State 0, Posset]
type = Posadd
trigger1 = animtime= 0
x = 0
y = 0


[State 0, end]
type = ChangeState
trigger1 = movehit
value = 3202
ctrl = 1


[State 3101:	End]
type			= changestate
trigger1		= !animtime
value			= 0
ctrl			= 1


;---------------------------------------------------------------------------------------
;Bakuhatsuha- attacks
[Statedef 3202]
type = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 3202
poweradd = 0
sprpriority = 2



[State 0, ]
type                    = PlaySnd
trigger1                = AnimElem = 3, 4
trigger2                = AnimElem = 5, 2
trigger3                = AnimElem = 8, 2
trigger4                = AnimElem = 11, 2
trigger5                = AnimElem = 13, 2
trigger6                = AnimElem = 15, 2
value                   = 2100, 0

[State 0: Pause]
type                    = Pause
trigger1                = AnimElem = 3, 4
trigger2                = AnimElem = 5, 2
trigger3                = AnimElem = 8, 2
trigger4                = AnimElem = 11, 2
trigger5                = AnimElem = 13, 2
trigger6                = AnimElem = 15, 2
time                    = 2
movetime                = 2

[State 0: PosAdd]
type                    = PosAdd
trigger1                = AnimElem = 3, 4
trigger2                = AnimElem = 5, 2
trigger3                = AnimElem = 8, 2
trigger4                = AnimElem = 11, 2
trigger5                = AnimElem = 13, 2
trigger6                = AnimElem = 15, 2
x                       = 80

[State 0: Turn]
type                    = Turn
trigger1                = AnimElem = 3, 4
trigger2                = AnimElem = 5, 2
trigger3                = AnimElem = 8, 2
trigger4                = AnimElem = 11, 2
trigger5                = AnimElem = 13, 2
trigger6                = AnimElem = 15, 2


[State 0, HitDef]
type = HitDef
trigger1 = animelem = 2 || animelem = 4 || animelem = 7 || animelem = 10
trigger2 = animelem = 12 || animelem = 14 || animelem = 18
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 0,0
givepower = 20,0         ;B,E,F
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 5,Hit   ;Hit,Miss,Dodge
damage = 41,6
pausetime = 2,30
sparkno = S8040+(random%5)
guard.sparkno =s8020
sparkxy = -25, -60
hitsound = s203,1
guardsound = s0,9
ground.type = High      ;Low,Trip,None
ground.slide = 0
ground.hit = 0
air.hittime = 20
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
ground.velocity = -8,0
air.velocity = 0,0
sprpriority = 1
p1getp2facing = 0
down.bounce = 0
kill= 0


[State 0, Helper]
type = Helper
trigger1 = movehit = 1 
helpertype = normal ;player
name = "Shockwave"
ID = 8201
stateno = 8200
pos = 0,-55
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 0
;persistent = 0


[State 3101:	End]
type			= changestate
trigger1		= !animtime
value			= 3203
ctrl			= 0

;------------------------------------------------------------------------
;Bakuhatsuha - Fire
[Statedef 3203]
type		= S
movetype		= A
physics		= S
anim		= 3203
ctrl		= 0
poweradd		= 0
facep2		= 1
hitdefpersist 	= 0
movehitpersist	= 0
hitcountpersist	= 1
sprpriority 	= 2

[State 800, 1]
type = Explod
trigger1 = time = 0
Anim = 8100
pos = 0,0
Id = 6031
sprpriority = 0
removeongethit = 1
removetime = -2
scale = 1, 1
bindtime = -1
SuperMove = 1
ownpal = 1




[State 191:		Shake]
type		= EnvShake
trigger1 		= time = 2 || time = 4
time		= 5
freq		= 150
ampl		= -4

[State 3101:	Voice]
type		 = PlaySND
trigger1		= time = 0
value		= S3000,0

[State 191:		Ki]
type		= helper
trigger1		= animelem = 3
stateno 		= 9310
ID 		= 9310
pos 		= 8,0
postype		= p2
ownpal 		= 1
keyctrl		= 0
pausemovetime 	= 99
ignorehitpause	= 1
size.xscale     = .5
size.yscale     = .5



[State 3101:	End]
type			= changestate
trigger1		= !animtime
value			= 0
ctrl			= 1


;----------------------------------------------------------------------
;Big Bang Attack 
[StateDef 3300]
type = S
movetype= A
physics = S
juggle = 2
velset = 0,0
ctrl = 0
anim = 3300
poweradd = -2000
sprpriority = 2

[State 0, ScreenBound]
type = null; ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8140
ID =   8140
pos = 0,0
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
trigger1 = !time
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


[State 0, ]
type = Explod
trigger1 = !time
anim = 8525
ID = 8100
pos = 0,0
facing = 1
scale = 1,1
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999


[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8400
ID = 8400
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
supermovetime = 999
scale = 1,1
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, Helper]
type = Helper
trigger1 = !time
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

[State 0, SuperPause]
type = SuperPause
trigger1 = !time
time = 60
anim = -1
sound = -1
movetime = 60
darken = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S215,4



[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S3001,0


[State 0, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 1
add = 256-floor((time*4.25)),256-floor((time*4.25)),256-floor((time*4.25))
mul = 64,161,255
color = 256-floor((time*4.25))

[State 0, BGPalFX]
type = null;  BGPalFX
trigger1 = time <45
time = 1
add = 150-floor(time*4.67),256-floor(time*4.67),256-floor(time*4.67)
mul = 220,256-floor(time*4.67),256
color = 256-floor(time*4.67)


[State 0, ChangeState]
type = ChangeState
trigger1 = time = 60
value = 3301
ctrl = 1

;-------------------------------------------------------------------------
;Big Bang Attack 
[StateDef 3301]
type = S
movetype= A
physics = S
juggle = 2
velset = 0,0
ctrl = 0
anim = 3301
poweradd = -2000
sprpriority = 2


[state 0,]
type                    = VelSet
trigger1                = AnimElem = 2
x                       = 15

[State 0, ]
type                    = PlaySnd
trigger1                = AnimElem = 2
value                   = 900, 0

[State 0, ]
type                    = MakeDust
trigger1                = AnimElem = 1 > 0 && AnimElem = 4 < 0
pos                     = -5,-2
spacing                 = 4

[State 0: HitDef]
type                    = HitDef
trigger1                = !Time
attr                    = S, HT
guardflag               = MA
hitflag                 = MA
pausetime               = 11, 22
snap                    = 30, 0
sparkno                 = S8040+(random%5)
guard.sparkno           = S7113
sparkxy                 = 0, -40
hitsound                = S300, 2
guardsound              = S400, 0
p2facing                = 1
sprpriority             = -1
p1stateno               = 3302
persistent              = 0

;---------------


[State 0, ]
type                    = ChangeState
trigger1                = !AnimTime
value                   = 0
ctrl                    = 1

;---------------------------------------------------------------------------
; Big Bang Attack - Hit
[Statedef 3302]
type 		= S
movetype		= A
physics		= S
juggle	    	= 1
anim    	          = 3302
velset		            = 0,0
ctrl			        = 0
poweradd		        = 0
facep2		            = 1
hitdefpersist	        = 0
movehitpersist	        = 0
hitcountpersist	        = 0
sprpriority		        = 2

[State 0: PlayerPush]
type                    =null; PlayerPush
trigger1                = 1
value                   = 1

[State 0: RemoveExplod]
type                    = RemoveExplod
trigger1                = AnimElem = 4
ID                      = 7012

[State 0, ]
type                    = PlaySnd
trigger1                = AnimElem = 3, 2
value                   = 200, Ifelse (random < 500, 1, 0)

[State 0, ]
type                    = PlaySnd
trigger1                = AnimElem = 3, 4
value                   = 2100, 0

[State 0: Pause]
type                    = Pause
trigger1                = AnimElem = 3, 4
time                    = 2
movetime                = 2




[State 0, ]
type                    = HitDef
trigger1                = AnimElem = 2
attr                    = S, HA
damage                  = 5
numhits                 = 0
animtype = back         ;light,medium,hard,back,up,diagup
air.animtype = back
animtype                = Heavy
guardflag               = M
hitflag                 = MAF
priority                = 5, Hit
pausetime               = 0, 10
snap                    = 20, 0
sparkno                 = S7034
guard.sparkno           = S7113
sparkxy                 = 0, -40
hitsound                = S1010, 0
guardsound              = S400, 0
ground.type             = low
ground.slidetime        = 0
ground.hittime          = 12
ground.velocity         = -2.8, -5.5
airguard.velocity       = -3.9,-3
air.type                = low
air.velocity            = 0, 0
air.hittime             = 12
getpower                = 0
givepower		        = 0
envshake.time           = 10
envshake.freq           = 100
envshake.ampl           = -4
envshake.phase          = 10
yaccel		            = .00002
fall                    = 1
fall.recover            = 0
;p2stateno               = 3012
Id                      = 3012
;p2facing                = 1
kill                    = 0




;--------------

[State 0: Pause]
type                    = Pause
triggerall              = backedgedist>70
trigger1                = !time
time                    = 2
movetime                = 2

[State 0: PosAdd]
type                    = PosAdd
triggerall              = backedgedist>70
trigger1                = !time
x                       = 80

[State 0, Turn]
type = Turn
triggerall              = backedgedist>70
trigger1 = !time
;ignorehitpause = 
;persistent = 


[State 0: StateTypeSet]
type			        = StateTypeSet
trigger1		        = AnimElem = 4
statetype		        = A
physics		            = N


[State 0: Pause]
type                    = null;Pause
triggerall              = AnimElem = 4,>  0 && AnimElem = 4, < 35
trigger1                = gametime%2 = 0
time                    = 1

[State 0, ]
type                    = PlaySnd
trigger1                = AnimElem = 4
value                   = 250, 4
volume                  = 255

[State 0, ]
type                    = PlaySnd
trigger1                = AnimElem = 4
value                   = 3300, 1
volume                  = 255

[State 0, ]
type                    = PlaySnd
trigger1                = AnimElem = 4
value                   = 3100, 0
volume                  = 255

[State 0, ]
type                    = PlaySnd
trigger1                = AnimElem = 4, 25
value                   = 3002, 1
volume                  = 255

[State 0, ]
type                    = PlaySnd
trigger1                = AnimElem = 4, 18
value                   = 3300, 0
volume                  = 255

[State 0:       Ball]
type                    = Helper
trigger1                = AnimElem = 3
helpertype	            = normal
id                      = 80055
stateno	                = 80055
keyctrl	                = 0
ownpal		            = 1
size.xscale             = .06
size.yscale             = .06
supermovetime = 999
pausemovetime = 999


[State 0, Helper]
type = Helper
triggerall = var(26) = 0
trigger1   = animelem = 4
helpertype = normal ;player
name = "flamesup"
ID = 8305
stateno = 8305
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = 1.2
size.yscale = 1.2


[State 0:       Elec Sparks]
type                    = Explod
triggerall              = AnimElem = 4, > 0 && AnimElem = 4, < 40
trigger1                = (TimeMod = 5,0)
anim                    = 8250
pos                     = 0,-30
random                  = 20, 40
bindtime                = -1
scale                   = 1-random%2, 1-random%2
removetime              = 10
pausemovetime           = 999
sprpriority             = 4
ownpal                  = 1
removeongethit          = 1


[State 0: PosAdd]
type                    = PosAdd
trigger1                = AnimElem = 3, 4
x                       = (p2dist X)+ 150
y                       = floor(p2dist Y)- 190

[State 0: Turn]
type                    = Turn
trigger1                = AnimElem = 4

[State 0: Helper]
type                    = Helper
trigger1                = AnimElem = 4,25
helpertype              = normal
name                    = "BBA"
ID                      = 8014
pos                     = 24,-44
postype                 = p1
stateno                 = 8014
ownpal                  = 1
size.xscale             = .9
size.yscale             = .9
supermovetime = 999
pausemovetime = 999


[State 0, Helper]
type = Helper
trigger1 = animelemtime(4) = 20
helpertype = normal ;player
name = "Shockwave"
ID = 8200
stateno = 8200
pos = 25,-70
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent = 0

[State 0: ScreenBound]
type                    = null;ScreenBound
trigger1                = AnimElem = 4, > 20 && AnimElem = 4, < 140
value                   = 1

;--------------


[State 0, Pause]
type =  Pause
trigger1 = p2stateno = 3013
time = 10
movetime = 10
;endcmdbuftime = 0
;pausebg = 1
;ignorehitpause = 
;persistent = 


[State 0, ]
type                    = ChangeState
trigger1                = !AnimTime
value                   = 50
ctrl                    = 1

;----------------------------------------------------------------
;p2 custom state
[statedef 3012]
type                    = A
movetype                = H
physics                 = N
ctrl                    = 0
velset                  = 0,0
facep2		            = 0

[State 0: VelSet]
type                    = VelSet
trigger1                = time = 12
x                       = -3.8
y                       = -5.1

;x                       = ifelse(backedgedist<10,-.3,-2.8)

[State 0: PosAdd]
type                    = PosAdd
trigger1                = AnimElem = 2
y                       = -34
persistent              = 0

[State 0: Gravity]
type                    = Gravity
trigger1                = Time > 50

[State 0: ScreenBound]
type                    = ScreenBound
trigger1                = 1
value                   = 1

[State 0: AngleDraw]
type                    = AngleDraw
triggerall              = time > 12
trigger1                = 1

[State 0: AngleAdd]
type                    = AngleAdd
triggerall              = time > 12
trigger1                = 1
value                   = -45

[state 0]
type                    = changeanim2
trigger1                = !time
value                   = 3312

[state 0]
type                    = selfstate
trigger1                =  Time > 20 && (Pos y >= 0)
value                   = 3013
ctrl                    = 1

;---------------------------------------------------------------------------
; BBA - P2 Get Hit State
[Statedef 3013]
type                    = S
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
value 		            = 3313

;---------------------------------------------------------------------------
; BBA - P2 Get Hit State 2
[Statedef 3014]
type                    = S
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

[State 0:     SelfState]
type 			        = changestate
trigger1 		        = !time
value 		            = 5050

;--------------------------------------------------------------------------
;Final Flash Rise
[Statedef 3400]
type                    = S
movetype                = I
physics                 = S
anim                    = 3400
ctrl                    = 0

[State 0: StateTypeSet]
type			        = StateTypeSet
trigger1		        = AnimElem = 2
statetype		        = A
physics		            = N



[State 0: VelSet]
type                    = VelSet
trigger1                = AnimElem = 2
y                       = -13.8
X                       = 2.5


[State 0: VelAdd]
type                    = VelAdd
trigger1                = (AnimElem = 2, > 0 && AnimElem = 3, < 0) && (Vel Y < -1)
y                       = 0.40
x                       = 0

[State 0: VelSet]
type                    = VelSet
trigger1                = AnimElem = 3
y                       = 0
x                       = 0

[State 0:       Screen Flash]
type                    = EnvColor
trigger1                = AnimElem = 3
value                   = 255,255,255
time                    = 5
under                   = 0



[State 0, Explod]
type = Explod
trigger1 = animelem = 2
anim = 8430
ID = 8430
pos = -5,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 20
pausemovetime = 0
scale = .7,.60
sprpriority = 0
ownpal = 1
removeongethit = 0




[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(2) = 1
value = S100,1
volume = 255
channel = 12


[State 0: ChangeState]
type                    = ChangeState
trigger1                = !AnimTime
value                   = 3401

;-------------------------------------------------------------------------
;Final Flash charge
[Statedef 3401]
type 		= A
movetype		= A
physics		= N
juggle	    	= 1
anim    	          = 3401
velset		= 0,0
ctrl	          = 0
poweradd		= -3000
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority         = 2

;---------------

[State 0, SuperPause]
type = SuperPause
trigger1 = !time
time = 60
anim = -1
sound = -1
movetime = 60
darken = 0



[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S210,10


[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S3001,0

[State 0, ]
type                    = PlaySnd ;rumble
trigger1                = animelem = 2
value                   = 700, 2
volume                  = 155 
channel = 12


[State 0:     PlaySND]
type                    =  PlaySnd
trigger1                = AnimElem = 2  ; aura woosh
value                   = 700, 1
volume                  = 20
channel = 12


[State 0:     PlaySND]
type                    = PlaySnd
trigger1                = AnimElem = 2  ; wind
value                   = 700, 3
volume                  = 20
channel = 12


[State 0, BGPalFX]
type = BGPalFX
trigger1 = time < 45
time = 1
add = 256-floor((time*4.25)),256-floor((time*4.25)),256-floor((time*4.25))
mul = 256,256,256-floor((time*4.25))
color = 256-floor((time*4.25))

[State 0, Helper]
type = Helper
triggerall = var(26) = 0
trigger1   = !time
helpertype = normal ;player
name = "flamesup"
ID = 8304
stateno = 8304
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = 1.2
size.yscale = 1.2

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8400
ID = 8400
pos = -17,-66
postype = p1
bindtime = -1
removetime = -2
supermovetime = 999
scale = 1,1
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1


[State 0, Helper]
type = Helper
trigger1 = !time
helpertype = normal ;player
name = "Shockwave"
ID = 8200
stateno = 8201
pos = 0,-40
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999



[State 0: Turn]
type                    = Turn
triggerall              = AnimElem = 3 < 0
trigger1                = p2dist x <=0




[State 0:       EnvShake]
type 			        = null;EnvShake
Triggerall              = Time > 140
trigger1 		        = gametime%2
time 			        = 5
freq 			        = 70
ampl 			        = 7





[State 0:       Push Effect 2]
type                    = Helper
trigger1                = (TimeMod = 10,0) && Time > 50
helpertype	    = normal
name		    = "Push Effect 2"
id                      = 8032
pos                     = -20, floor (-pos y)
stateno	              = 8032
keyctrl	              = 0
ownpal		    = 1
supermovetime	    = 0
pausemovetime	    = 0
size.xscale	    = 1
size.yscale	    = 1

;---------------

[State 0:       EnvShake]
type 			        =  EnvShake
Triggerall              = AnimElem = 3 > 25
trigger1 		        = gametime%2
time 			        = 5
freq 			        = 40
ampl 			        = 7



[State 0, ScreenBound]
type = ScreenBound
trigger1 = animelem = 3
value = 0
movecamera = 40,-120
;ignorehitpause = 
;persistent = 


[State 0:       Elec]
type                    = Explod
trigger1                = !Time
anim                    = 8250
ID                      = 7011
pos                     = 0,-55
bindtime                = -1
scale                   = .5, .5
removetime              = -1
pausemovetime           = 999
sprpriority             = 4
ownpal                  = 1
removeongethit          = 1
supermovetime = 999
pausemovetime = 999


[State 0:       Elec 2]
type                    = Explod
trigger1                = !Time
anim                    = 8250
ID                      = 7011
pos                     = 0,-25
facing                  = -1
vfacing                 = -1
bindtime                = -1
scale                   = .4, .4
removetime              = -1
sprpriority             = 4
ownpal                  = 1
removeongethit          = 1
supermovetime = 999
pausemovetime = 999


[State 0:       Ball transition]  ; left hand ball
type                    =  Explod
trigger1                = animelem = 2
anim                    = 70231
pos                     = -38, -87
bindtime                = -1
scale                   = .15, .15
removetime              = 10
supermovetime = 999
pausemovetime = 999
sprpriority             = 4
ownpal                  = 1
removeongethit          = 1

[State 0:       Ball transition]   ; right hand ball
type                    = Explod
trigger1                = animelem = 2
anim                    = 70231
pos                     = 29, -84
bindtime                = -1
scale                   = .15, .15
removetime              = 10
supermovetime = 999
pausemovetime = 999
sprpriority             = 4
ownpal                  = 1
removeongethit          = 1


[State 0:       Elec transition 2]
type                    = Explod
trigger1                = AnimElem = 4
anim                    = 8250
pos                     = 20,-50
bindtime                = -1
scale                   = .8, .8
removetime              = 30
supermovetime = 999
pausemovetime = 999
sprpriority             = 4
ownpal                  = 1
removeongethit          = 1

[State 0:       Elec transition 2]
type                    =   Explod
trigger1                = AnimElem = 4
anim                    = 8250
pos                     = 20,-50
bindtime                = -1
scale                   = .8, .8
removetime              = 30
supermovetime = 999
pausemovetime = 999
sprpriority             = 4
ownpal                  = 1
removeongethit          = 1


[State 0:       Ball]
type                    =  Helper
trigger1                = AnimElem = 4
helpertype	    = normal
pos                     = 0,-120
id                      = 80051
stateno	              = 80051
keyctrl	              = 0
ownpal		    = 1
size.xscale             = .01
size.yscale             = .01




[State 0:       Ball]
type                    = Helper  ; Left hand
trigger1                = AnimElemtime(3) = 1
helpertype	    = normal
pos                     = 0,-120
id                      = 80052
stateno	              = 80052
keyctrl	              = 0
ownpal		    = 1
size.xscale             = .01
size.yscale             = .01


[State 0:       Ball]
type                    =   Helper     ; Right hand
trigger1                = AnimElemtime(3) = 1
helpertype	    = normal
pos                     = 0,-120
id                      = 80053
stateno	              = 80053
keyctrl	              = 0
ownpal		    = 1
size.xscale             = .01
size.yscale             = .01






[State 0:       RemoveExplod]
type                    = RemoveExplod
trigger1                = !AnimTime
ID                      = 7011





[State 0, PalFXWiz]
type 				    = AllPalFX
trigger1 			    = Time = 114
time 				    = 25
add 				    = 200,200,256
mul 				    = 200,200,256
sinadd 			        = 200,200,256,150
invertall 			    = 0
color 			        = 256

;---------------

[State 0, ]
type                    = ChangeState
trigger1                = !animtime 
value                   = 3402
ctrl                    = 1


;-------------------------------------------------------------------------
;Final Flash BG
[Statedef 3402]
type 		= U
movetype		= I
physics		= U
juggle	    	= 1
anim    	          = 3402
velset		= 0,0
ctrl	          = 0
poweradd		= 0
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority         = 2

;---------------

[State 3010, ScreenBound]
type = null;ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 0, Pause]
type = Pause
trigger1 = !time
time = 74
movetime = 74
;endcmdbuftime = 0
;pausebg = 1
;ignorehitpause = 
;persistent = 

[State 0, ]
type                    = PlaySnd
trigger1                = !time
value                   = 3400,1
volume                  = 255
channel	                = -1



[State 3204, VarSet]
type = VarSet
trigger1 = !time
v = 25    ;fv = 10
value = 1
;ignorehitpause = 
;persistent = 


[State 3204, VarSet]
type =  VarSet
trigger1 = time = 65
v = 25    ;fv = 10
value = 0


[State 1600, SuperPic.Helper]
type = Helper
trigger1 = !time
name = "SuperPic"
stateno = 19004
id = 19004
pos = 40,0
postype = p1
ownpal = 1
sprpriority = 4
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ignorehitpause = 1
size.xscale = .5
size.yscale = .5


[State 0, AssertSpecial]
type =  AssertSpecial
trigger1 = 1
flag = noBG
flag = noFG



[State 1600, BlackFade]
type = Explod
trigger1 = !time
Anim = 19005
Pos = -50, -50
Id = 19005
sprpriority = 4
removeongethit = 1
Postype = left
Bindtime = 1
ownpal = 1
removetime = 60
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ignorehitpause = 1
scale = 3, 3
;ontop = 1




[State 0, PalFXWiz]
type 				    = AllPalFX
trigger1 			    = Time = 40
time 				    = 38
add 				    = 200,200,240
mul 				    = 200,200,240
sinadd 			        = 200,200,230,150
invertall 			    = 0
color 			        = 256

[State 0, ]
type                    = ChangeState
trigger1                = time = 80
value                   = 3403
ctrl                    = 0

;-------------------------------------------------------------------------
;Final Flash Fire
[Statedef 3403]
type 		= A
movetype		= A
physics		= N
juggle	    	= 1
anim    	          = 3402
velset		= 0,0
ctrl	          = 0
poweradd		= 0
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority         = 2

;---------------



[State 0: Helper]
type                    =  Helper
Trigger1              = !time 
helpertype              = normal
name                    = "Final Flash"
ID                      = 8402
postype                 = p1
pos                     = -30,-84
stateno                 = 8402
ownpal                  = 1
size.xscale             = 1.7
size.yscale             = 1.7


[State 0:       Slow Mo]
type                    =  Helper
Triggerall              = NumHelper(8402)||NumHelper(8403)
trigger1                = helper(8402), movehit
helpertype	            = normal
id                      = 8405
stateno	               = 8405
keyctrl	               = 0
ownpal		     = 1
pausemovetime	     = 999
ignorehitpause          = 1



[State 0, ]
type                    = PlaySnd
Trigger1             = !time
value                   = 3400,0
volume                  = 255
channel	                = -1


[State 0:     PlaySND]
type                    = PlaySnd
trigger1                = !AnimTime
value                   = 700, 0
channel	                = -1

[State 0, PalFXWiz]
type 				    = AllPalFX
trigger1 			    = Time = 69
time 				    = 5
add 				    = 200,200,256
mul 				    = 200,200,256
sinadd 			        = 200,200,256,150
invertall 			    = 0
color 			        = 256


[State 0, ]
type                    = ChangeState
trigger1                = !animtime
value                   = 50
ctrl                    = 0

