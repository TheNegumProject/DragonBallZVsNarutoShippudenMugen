;fading afterimage fast
[statedef 1003]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0,0

[State 1001]
type = parentvarset
trigger1 = time = 0
v = 23
value = 1

[state 1001]
type = assertspecial
trigger1 = time = 0
flag = invisible

[state 1001]
type = varset
trigger1 = time = 0
v = 0
value = parent, anim

[state 1001]
type = varset
trigger1 = time = 0
v = 1
value = parent, animelemno(0)

[state 1001]
type = nothitby
trigger1 = 1
value = SCA

[state 1001]
type = trans
trigger1 = time < 3
trans = addalpha
alpha = 240,256

[state 1001]
type = trans
trigger1 = time >= 3
trans = addalpha
alpha = 240-((time-4)*5),256

[state 1001]
type = changeanim
trigger1 = 1
value = var(0)
elem = var(1)

[State 1001]
type = parentvarset
trigger1 = time = 28
v = 23
value = 0

[state 1001]
type = destroyself
trigger1 = time = 70
;--------------------------------------------------------------------------
;ki blast
[StateDef 1310]
type = A
movetype= A
physics = N
juggle  = 1
velset = 7+(random%2),4-(random%8)
ctrl = 0
anim = 8330
poweradd = 0;0
sprpriority = 5

[State 0, VelMul]
type = VelMul
trigger1 = 1
x = 1
y = .7
;ignorehitpause =
;persistent =


[State 0, ]
type = Explod
trigger1 = (time%6)=0
anim = 8100
ID = 8100
pos = 0,0-ceil(pos Y)
facing = 1
scale = .7,.3
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1


[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8310
ID = 8310
pos = -27,2
postype = p1  ;p2,front,back,left,right
removetime = -2
bindtime = 1
scale = .4,.4
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, PalFXWiz]
type =  PalFX
trigger1 = Parent, Var(27) = 1
time = 999
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = Parent, Var(6) = 0
trigger1 = time = [0,1]
flag = invisible
ignorehitpause = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NP,SP,HP
slot = 0
stateno = 1311
time = 1

[State 0, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = 1

[State -2, ComboDampener-Increase]
type = ParentVarAdd
trigger1 = MoveType = A
trigger1 = MoveHit = 1
trigger1 = FVar(10) < 31
trigger1 = NumTarget
fv = 10
value = 1
persistent = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, HitDef]
type = HitDef
trigger1 = !time
attr = A,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
;fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = ceil((25-(parent, var(13)*2))*parent, fvar(13)),ceil(5*parent, fvar(13))
pausetime = 0,15
;guard.pause,0
sparkno = -1
guard.sparkno = -1
sparkxy = -20,0
hitsound = S1000,3
guardsound = S300,2
ground.type = High      ;Low,Trip,None
ground.slidetime = 20
ground.hittime = 20
air.hittime = 20
ground.velocity = -7,0
air.velocity = -4,-3
sprpriority = 3
palfx.time = 15
palfx.add = -100,-100,-100
palfx.mul = 350,350,256
palfx.sinadd = 100,100,0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
getpower = 0;0

[State 0, VelSet]
type = VelSet
trigger1 = movecontact
x = 0
y = 0
ignorehitpause = 1
persistent = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = Movecontact
value = 1311
ctrl = 0
ignorehitpause = 1
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 30
value = 1312
ctrl = 0
ignorehitpause = 1
;persistent =

;--------------------------------------------------------------------------
;Ki blast destroy
[StateDef 1311]
type = S
movetype= A
physics = N
velset = 0,0
Anim = 1
ctrl = 0
sprpriority = 5


[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8331
ID = 8310
pos = 27,-5
postype = p1  ;p2,front,back,left,right
removetime = -2
bindtime = 1
scale = .35,.35
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0



[State 0, PalFXWiz]
type =  PalFX
trigger1 = Parent, Var(27) = 1
time = 999
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 1


[State 9050]
type 			= trans
trigger1 		= time = 0
trans 		= add

[State 9051:	End]
type			= Destroyself
trigger1		=  numtarget = 0
;--------------------------------------------------------------------------
;Kiblast fade away
[StateDef 1312]
type = S
movetype= A
physics = N
ctrl = 0
sprpriority = 5

[State 0, ]
type = Explod
triggerall = time<10
trigger1 = (time%6)=0
anim = 8100
ID = 8100
pos = 0,0-ceil(pos Y)
facing = 1
scale = .7-(time*.1),.3-(time*.05)
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 0, PalFXWiz]
type =  PalFX
trigger1 = Parent, Var(27) = 1
time = 999
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = Parent, Var(6) = 0
trigger1 = time = [0,1]
flag = invisible
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, VelMul]
type = VelMul
trigger1 = 1
x = .9
y = .9

[State 0, Trans]
type = Trans
trigger1 = 1
trans = Add

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 1-(time*.05),1-(time*.05)

[State 0, PalFX]
type = PalFX
trigger1 = !time
time = 20
sinadd = -255,-255,-255,80
invertall = 0
color = 256

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 20

;--------------------------------------------------------------------------
;ki blast - AIR
[StateDef 1315]
type = A
movetype= A
physics = N
juggle  = 0
velset = 7+(random%5),7+(random%5)
ctrl = 0
anim = 8334
poweradd = 0;0
sprpriority = 5

[State 0, VelMul]
type = null;VelMul
trigger1 = 1
x = 1
y = .7
;ignorehitpause =
;persistent =

[State 0, PalFXWiz]
type =  PalFX
trigger1 = Parent, Var(27) = 1
time = 999
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 1


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = Parent, Var(6) = 0
trigger1 = time = [0,1]
flag = invisible
ignorehitpause = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NP,SP,HP
slot = 0
stateno = 1311
time = 1

[State 0, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = 1

[State -2, ComboDampener-Increase]
type = ParentVarAdd
trigger1 = MoveType = A
trigger1 = MoveHit = 1
trigger1 = FVar(10) < 31
trigger1 = NumTarget
fv = 10
value = 1
persistent = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, HitDef]
type = HitDef
trigger1 = !time
attr = A,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = MA         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = back
;fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = ceil((25-(parent, var(13))*2)*parent, fvar(13)),ceil(5*parent, fvar(13))
pausetime = 0,15
;guard.pause,0
sparkno = -1
guard.sparkno = -1
sparkxy = -20,0
hitsound = S1000,3
guardsound = S300,2
ground.type = High      ;Low,Trip,None
Air.type = Low      ;Low,Trip,None
ground.slidetime = 20
ground.hittime = 20
air.hittime = 20
ground.velocity = -7,0
air.velocity = -4,4
sprpriority = 3
palfx.time = 15
palfx.add = -100,-100,-100
palfx.mul = 350,350,256
palfx.sinadd = 100,100,0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
getpower = 0;0

[State 0, VelSet]
type = VelSet
trigger1 = movecontact
x = 0
y = 0
ignorehitpause = 1
persistent = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = Movecontact
value = 1316
ctrl = 0
ignorehitpause = 1
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 25
value = 1312
ctrl = 0
ignorehitpause = 1
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 = Pos Y >=0
value = 1316
ctrl = 0
ignorehitpause = 1
;persistent =

;--------------------------------------------------------------------------
;Ki blast destroy hitting ground
[StateDef 1316]
type = S
movetype= A
physics = N
velset = 0,0
;Anim = 8340
ctrl = 0
sprpriority = 5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S1000,3
channel = 1
ignorehitpause = 1
;persistent =

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8335
ID = 8340
pos = 0,0
postype = p1  ;p2,front,back,left,right
removetime = -2
bindtime = 1
scale = .35,.35
sprpriority = 5
ontop = 0
ownpal = 0

[State 0, PalFXWiz]
type =  PalFX
trigger1 = Parent, Var(27) = 1
time = 999
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = invisible
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime

;--------------------------------------------------------------------------
;ki blast hard -charge effect
[StateDef 1320]
type = S
movetype= I
physics = N
velset = 0,0
Anim = 8460
ctrl = 0
sprpriority = 5

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent, pos x-0*facing
y = parent, pos y-110


[State 0, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S3003,0
volume = 255
channel = 2

[State 0, PalFXWiz]
type = PalFX
trigger1 = !Var(6)
time = 999
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != 1350
trigger2 = (parent, stateno = 1350) && (parent, Anim = 1351)
ignorehitpause = 1

;--------------------------------------------------------------------------
;ki blast hard -charge effect
[StateDef 1325]
type = A
movetype= I
physics = N
velset = 0,0
Anim = 8460
ctrl = 0
sprpriority = 5

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent, pos x-0*facing
y = parent, pos y-110


[State 0, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S3003,0
volume = 255
channel = 2

[State 0, PalFXWiz]
type =PalFX
trigger1 = Parent, Var(6) = 0
time = 999
add = 0,0,0
mul = 256,126,512
sinadd = 0,0,0,1
invertall = 0
color = 1


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != 723 
trigger2 =(parent, stateno = 723) && (Parent,animelem = 2)
ignorehitpause = 1 

;--------------------------------------------------------------------------
;ki blast hard
[StateDef 1330]
type = A
movetype= A
physics = N
juggle  = 0
velset = 10,0
ctrl = 0
anim = 8330
poweradd = 0;0
sprpriority = 5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S3003,1
volume = 255
channel = 2

[State 0, ]
type = Explod
trigger1 = (time%6)=0
anim = 8100
ID = 8100
pos = 0,0-ceil(pos Y)
facing = 1
scale = 1,.5
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1


[State 0, Explod]
type = null; Explod
trigger1 = !time
anim = 8310
ID = 8310
pos = 0,0
postype = p1  ;p2,front,back,left,right
removetime = -2
bindtime = 1
scale = .6,.6
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, PalFXWiz]
type = PalFX
trigger1 = !Var(6)
time = 999
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 1




[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NP,SP,HP
slot = 0
stateno = 1311
time = 1

[State 0, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = 1

[State -2, ComboDampener-Increase]
type = ParentVarAdd
trigger1 = MoveType = A
trigger1 = MoveHit = 1
trigger1 = FVar(10) < 31
trigger1 = NumTarget
fv = 10
value = 1
persistent = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, HitDef]
type = HitDef
trigger1 = !time
attr = A,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
;fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = ceil((90+parent,var(20))*parent, fvar(13)),ceil((18+parent,var(20))*parent, fvar(13))
pausetime = 0,10
;guard.pause,0
sparkno = -1
guard.sparkno =-1
sparkxy = -20,0
hitsound = S815,0
guardsound = S815,0
ground.type = Low      ;Low,Trip,None
ground.slidetime = 25
ground.hittime = 25
air.hittime = 25
ground.velocity = -7,-2
fall = 1
air.velocity = -7,-2
sprpriority = 3
palfx.time = 15
palfx.add = -100,-100,-40
palfx.mul = 256,256,512
palfx.sinadd = 0,100,100,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
getpower = 0;0



[State 0, VelSet]
type = VelSet
trigger1 = movecontact
x = 0
y = 0
ignorehitpause = 1
persistent = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = Movecontact
value = 1331
ctrl = 0
ignorehitpause = 1
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 35
value = 1332
ctrl = 0
ignorehitpause = 1
;persistent =

;--------------------------------------------------------------------------
;ki blast hard destroy
[StateDef 1331]
type = S
movetype= A
physics = N
velset = 0,0
;Anim = 8331
ctrl = 0
sprpriority = 5

[State 0, PalFXWiz]
type = PalFX
trigger1 = !Var(6)
time = 999
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 1

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8331
ID = 8310
pos = 27,-5
postype = p1  ;p2,front,back,left,right
removetime = -2
bindtime = 1
scale = .55,.55
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 45


;--------------------------------------------------------------------------
;ki blast hard fade away
[StateDef 1332]
type = S
movetype= A
physics = N
ctrl = 0
sprpriority = 5

[State 0, ]
type = Explod
triggerall = time<10
trigger1 = (time%6)=0
anim = 8100
ID = 8100
pos = 0,0-ceil(pos Y)
facing = 1
scale = 1-(time*.1),.5-(time*.05)
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = !var(6)
trigger1 = time = [0,1]
flag = invisible

[State 0, PalFXWiz]
type = PalFX
trigger1 = !var(6)
time = 999
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, VelMul]
type = VelMul
trigger1 = 1
x = .9

[State 0, Trans]
type = Trans
trigger1 = 1
trans = Add

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 1-(time*.05),1-(time*.05)

[State 0, PalFX]
type = PalFX
trigger1 = !time
time = 20
sinadd = -255,-255,-255,80
invertall = 0
color = 256

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 20

;---------------------------------------------------------------------------
; Push Effect 2
[Statedef 8032]
type                    = S
movetype                = I
physics                 = S
anim                    = 8060
ctrl                    = 0
facep2                  = 1

[State 0:    VelSet]
type                    = VelSet
trigger1                = (!Time)
x		                = 20
y		                = 0

[State 0:    PlayerPush]
type                    = PlayerPush
trigger1                = (1)
value                   = 1

[State 0:    NotHitBy]
type                    = NotHitBy
trigger1                = (1)
time                    = 1
value                   = SCA

[State 0:    DestroySelf]
type                    = DestroySelf
trigger1                = (Time = 20)
 

;--------------------------------------------------------------------------
; Buster Ball
[Statedef 7023]
type 		        = U
movetype		        = A
physics		        = U
juggle	    	        = 1
anim    		        = 70233
velset		        = 0,0
ctrl		        = 0
poweradd		        = 0
facep2		        = 0
hitdefpersist	        = 0
movehitpersist	        = 0
hitcountpersist	        = 0
sprpriority	        = 3

[State 0:	VelSet]
type			        = VelSet
trigger1		        = 1
x			            = 12

[State 0: AssertSpecial]
type                    = AssertSpecial
trigger1                = 1
flag                    = noshadow

;---------------

[State 0:    HitOverride]
type                    = HitOverride
trigger1                = 1
slot                    = 1
time                    = -1
stateno                 = 7023
attr                    = SCA,AA,SP,AT

[State 0:    NotHitBy]
type                    = NotHitBy
trigger1                = 1
time                    = 2
value                   = SCA,AA,AT
ignorehitpause          = 1

[State 0:    HitBy]
type                    = HitBy
trigger1                = 1
value                   = SCA,AP
time                    = 2

;---------------

[State 0: Dust]
type                    = MakeDust
trigger1                = (1)
pos                     = 20,floor(-pos y)
spacing                 = 2

[State 0: 	AfterImage]
type 			        = AfterImage
trigger1 		        = !Time
time 			        = 99999
framegap 		        = 2
length 		            = 20
paladd 		            = 0, 0, 0
palmul 		            = .50, .50, .50
palcontrast 	        = 50, 50, 50
trans 		            = add

;---------------

[State 0, ]
type                    = HitDef
;triggerall              = p2stateno != 1024
trigger1                = !Time
attr                    = S, SP
damage                  = 0, 10
animtype                = hard
guardflag               = MAFD
hitflag                 = MAF, NP, SP, NT, ST, HT
priority                = 5, Miss
pausetime               = 0, 0
sparkno                 = S8030+(random%5)
guard.sparkno           = S8020+(random%2)
sparkxy                 = 19, 0
guardsound              = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
guardsound              = S2010, 3
ground.type             = High
ground.slidetime        = 20
ground.hittime          = 20
ground.velocity         = -7, -7
airguard.velocity       = -7, -7
air.type                = High
air.velocity            = -7, -7
air.hittime             = 12
getpower                = 27
givepower		        = 0
Fall                    = 1
Fall.recover            = 0
yaccel		            = 0.5
envshake.time           = 20
envshake.freq           = 80
envshake.ampl           = 10
id                      = 7023
p2facing                = 1
p1stateno               = 70231
p2stateno               = 1022

[State 0:    End]
type                    = DestroySelf
trigger1                = MoveGuarded || ((frontedgedist <= -175) || (backedgedist <= -175))

;--------------------------------------------------------------------------------------------------------------
; Blaster Ball - Grab
[Statedef 70231]
type 			        = U
movetype		        = A
physics		            = N
juggle	    	        = 1
anim    			    = 70233
velset		            = 15,0
ctrl			        = 0
poweradd		        = 0
facep2		            = 0
hitdefpersist	        = 0
movehitpersist	        = 0
hitcountpersist	        = 0
sprpriority		        = 2

[State 0: TargetBind]
type                    = TargetBind
trigger1                = 1
pos                     = 0,0
ID                      = 7023

[State 0]
type                    = AfterImageTime
trigger1                = 1
time                    = 1
ignorehitpause          = 1

[State 0, ]
type                    = PlaySnd
trigger1                = !Time
value                   = 1014,0
Volume                  = 255

[State 0: MakeDust]
type                    = MakeDust
trigger1                = 1
pos                     = 20,floor(-pos y)
spacing                 = 2

[State 0:       Big S Dust Right]
type                    = Explod
trigger1                = TimeMod = 3, 0
anim                    = 8100
ID                      = 7011
pos                     = 10,floor(-pos y)
removetime              = -2
pausemovetime           = 999
sprpriority             = 3
ownpal                  = 1
removeongethit          = 1

[State 0: Width]
type                    = width
trigger1                = 1
edge                    = 10,0

[State 0: ChangeState]
type                    = ChangeState
trigger1                = Time > 2 && FrontEdgeBodydist <= -5
value                   = 70232

;---------------------------------------------------------------------------
; Wall Explode
[Statedef 70232]
type 		= U
movetype		= I
physics		= U
juggle	    	= 1
anim    	          = 90
velset		            = 0,0
ctrl			        = 0
poweradd		        = 0
facep2		            = 0
hitdefpersist	        = 0
movehitpersist	        = 0
hitcountpersist	        = 0
sprpriority		        = 2

[State 0: AssertSpecial]
type                    = AssertSpecial
trigger1                = 1
flag                    = Invisible

[State 0: TargetBind]
type                    = TargetBind
trigger1                = !Time
pos                     = 50,0
ID                      = 7023

[State 0: Width]
type                    = width
trigger1                = 1
edge                    = 10,0

[State 0: TargetLifeAdd]
type                    = TargetLifeAdd
trigger1                = !Time
value                   = -90
ID                      = 7023

[State 0: TargetState]
type                    = Targetstate
trigger1                = !Time
value                   = 1023
ID                      = 7023

[State 0, Sound]
type                    = PlaySnd
trigger1                = !Time
value                   = 1014,1

[State 0: Helper]
type                    = Helper
triggerall              = !NumHelper(8103)
trigger1                = !Time
id                      = 8103
pos                     = 0,-20
postype                 = p2
stateno                 = 8101
ownpal                  = 1
size.xscale             = .7
size.yscale             = .7
ignorehitpause          = 1
persistent              = 0

[State 0:       EnvShake]
type 			        = EnvShake
trigger1 		        = !Time
time 			        = 20
freq 			        = 100
ampl 			        = 10
phase                   = 20

[State 0:    End]
type                    = DestroySelf
trigger1                = Time = 200

;---------------------------------------------------------------------------
; Explode
[Statedef 8101]
type                    = U
movetype                = U
physics                 = U
anim                    = 8340
velset                  = 0,0
ctrl                    = 0
poweradd                = 0
juggle                  = 0
facep2                  = 0
hitdefpersist           = 0
movehitpersist          = 0
hitcountpersist         = 0
sprpriority             = 5
;---------------

[State 0:    No Shadow]
Type                    = AssertSpecial
Trigger1                = 1
Flag                    = NoShadow

;---------------
;Effects
;---------------

;---------------

[State 0:    Done]
type                    = DestroySelf
trigger1                = !AnimTime

;-------------------------------------------------------------------------
;line effect
[StateDef 8210]
type = S
movetype= I
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = -1
poweradd = 0;0
sprpriority = 2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 999
ignorehitpause = 1

[State 0, PosSet]
type = PosSet
trigger1 = !time
x = parent, pos X
y = parent, pos Y


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8220
ID =   8210
pos = 0,0
postype = p1
bindtime = -1
sprpriority = 10
ownpal = 1
removetime = 5
supermove = 1
pausemovetime = 15
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8210
scale = .5-(0.1*time), 1-(0.2*time)
ignorehitpause = 1
persistent = 1

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8220
ID =   8211
pos = 0,-20
postype = p1
bindtime = -1
sprpriority = 10
ownpal = 1
removetime = 5
supermove = 1
pausemovetime = 15
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8211
scale = .5-(0.1*time), 1-(0.2*time)
ignorehitpause = 1
persistent = 1


[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8220
ID =   8212
pos = 0,-30
postype = p1
bindtime = -1
sprpriority = 10
ownpal = 1
removetime = 5
supermove = 1
pausemovetime = 15
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8212
scale = .5-(0.1*time), 1-(0.2*time)
ignorehitpause = 1
persistent = 1

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8220
ID =   8213
pos = 0,-45
postype = p1
bindtime = -1
sprpriority = 10
ownpal = 1
removetime = 5
supermove = 1
pausemovetime = 15
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8213
scale = .5-(0.1*time), 1-(0.2*time)
ignorehitpause = 1
persistent = 1

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8220
ID =   8214
pos = 0,-60
postype = p1
bindtime = -1
sprpriority = 10
ownpal = 1
removetime = 5
supermove = 1
pausemovetime = 15
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8214
scale = .5-(0.1*time), 1-(0.2*time)
ignorehitpause = 1
persistent = 1

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8220
ID =   8215
pos = 0,-75
postype = p1
bindtime = -1
sprpriority = 10
ownpal = 1
removetime = 5
supermove = 1
pausemovetime = 15
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8215
scale = .5-(0.1*time), 1-(0.2*time)
ignorehitpause = 1
persistent = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 6
;--------------------------------------------------------------------------
;Afterimage Effect
[StateDef 8211]
type = S
movetype= I
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
;anim = parent, Anim
poweradd = 0;0
sprpriority = 2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 999
ignorehitpause = 1


[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = parent, Anim
elem = parent, AnimElemNo(0)
ignorehitpause = 1
;persistent =

[State 0, Trans]
type = Trans
trigger1 = time <= 10
trans = addalpha
alpha = 256-(time*25),256

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 10

;--------------------------------------------------------------------------
;Shockwave
[StateDef 8200]
type = S
movetype= I
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = -1
poweradd = 0;0
sprpriority = 2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 999
ignorehitpause = 1


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible
ignorehitpause = 1

[State 0, EnvColor]
type = EnvColor
trigger1 = !time
value = 255,255,255
time = 3

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8210
ID =   8210
pos = 0,0
scale = 1, 1
postype = p1
bindtime = -1
sprpriority = 10
ownpal = 1
removetime = 9
supermove = 1
pausemovetime = 999
ontop = 1

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8200+(random%8)
ID =   8200
pos = 0,0
postype = p1
bindtime = -1
sprpriority = 10
ownpal = 1
removetime = 14
supermove = 1
pausemovetime = 999
ontop = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8200
scale = .6+(0.2*time), .6+(0.2*time)
ignorehitpause = 1
persistent = 1
supermove = 1
pausemovetime = 999

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8200+(random%8)
ID =   8201
pos = 0,0
postype = p1
bindtime = -1
sprpriority = 10
ownpal = 1
removetime = 14
supermove = 1
pausemovetime = 999
ontop = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8201
scale = .2+(0.1*time), .2+(0.1*time)
ignorehitpause = 1
persistent = 1
supermove = 1
pausemovetime = 999

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8200+(random%8)
ID =   8202
pos = 0,0
postype = p1
bindtime = -1
sprpriority = 10
ownpal = 1
removetime = 14
supermove = 1
pausemovetime = 999
ontop = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8202
scale = .1+(0.09*time), .1+(0.09*time)
ignorehitpause = 1
persistent = 1
supermove = 1
pausemovetime = 999

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 30
;--------------------------------------------------------------------------
;Aura up
[StateDef 8300]
type = S
movetype= I
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = -1
poweradd = 0;0
sprpriority = 2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 999
ignorehitpause = 1
;persistent =

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent, pos x
y = parent, pos y

[State 0, PalFXWiz]
type =  PalFX
trigger1 = Parent, Var(27) = 1
time = 999
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 1

[State 0, VarRandom]
type = VarRandom
trigger1 = 1
v = 0
range = 5,10






[State 0, VarRandom]
type = VarRandom
trigger1 = 1
v = 0
range = 5,10

[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 0
value = .1*var(0)

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8300
ID = 8300
pos = 0-(random%20),-20-(random%60)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8301
ID = 8301
pos = 0+(random%20),-10-(random%60)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8302
ID = 8302
pos = 0-(random%10),0-(random%40)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8303
ID = 8303
pos = 10-(random%20),0-(random%50)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8304
ID = 8304
pos = 0+(random%20),-20-(random%60)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8305
ID = 8305
pos = 0-(random%20),-10-(random%60)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8306
ID = 8306
pos = 0+(random%10),0-(random%40)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8307
ID = 8307
pos = 15-(random%30),0-(random%50)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != 2001 
ignorehitpause = 1

;--------------------------------------------------------------------------
;Aura side
[StateDef 8301]
type = S
movetype= I
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = -1
poweradd = 0;0
sprpriority = 2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 999
ignorehitpause = 1
;persistent =

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent, pos x
y = parent, pos y

[State 0, PalFXWiz]
type =  PalFX
trigger1 = Parent, Var(27) = 1
time = 999
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 1

[State 0, VarRandom]
type = VarRandom
trigger1 = 1
v = 0
range = 5,10

[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 0
value = .1*var(0)

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible


[State 0, ]
type = Explod
trigger1 = random < 300
anim = 8302
ID = 8302
pos = floor(30+parent, vel X)-(random%50),0-(random%50)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,0)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 300
anim = 8305
ID = 8305
pos = floor(30+parent, vel X)-(random%50),-10-(random%50)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,0)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 300
anim = 8308
ID = 8308
pos = floor(30+parent, vel X)-(random%50),0-(random%50)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,0)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random > 700
anim = 8309
ID = 8309
pos = floor(30+parent, vel X)-(random%50),-30-(random%50)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,0)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random > 700
anim = 8308
ID = 8308
pos = floor(-30+parent, vel X)-(random%50),-20-(random%20)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0)*.7,Fvar(0)*.7
sprpriority = ifelse(random<500,-3,0)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random = [200,300]
anim = 8308
ID = 8308
pos = floor(-50+parent, vel X)-(random%50),-20-(random%20)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0)*.7,Fvar(0)*.7
sprpriority = ifelse(random<500,-3,0)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 300
anim = 8309
ID = 8309
pos = floor(-10+parent, vel X)-(random%50),-20-(random%40)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0)*.7,Fvar(0)*.7
sprpriority = ifelse(random<500,-3,0)
ownpal = 0
ignorehitpause= 1


[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != 300
trigger1 = parent, stateno != 304
trigger1 = parent, stateno != 1100
ignorehitpause = 1

;--------------------------------------------------------------------------
;Aura up
[StateDef 8302]
type = S
movetype= I
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = -1
poweradd = 0;0
sprpriority = 2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 999
ignorehitpause = 1
;persistent =

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent, pos x
y = parent, pos y

[State 0, PalFXWiz]
type =  PalFX
trigger1 = Parent, Var(27) = 1
time = 999
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 1

[State 0, VarRandom]
type = VarRandom
trigger1 = 1
v = 0
range = 5,10

[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 0
value = .1*var(0)

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 0, Horiz, top]
type = Explod
trigger1 = random > 700
anim = 8308
ID = 8308
pos = floor(0+parent, vel X)-(random%50),floor(-100+parent, vel Y)+(random%40)
postype = p1
facing = -1
vfacing = -1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,0)
ownpal = 0
ignorehitpause= 1

[State 0, Diagdown, top]
type = Explod
trigger1 = random < 200
anim = 8302
ID = 8302
pos = floor(0+parent, vel X)-(random%50),floor(-80+parent, vel Y)+(random%30)
postype = p1
facing = -1
vfacing = -1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,0)
ownpal = 0
ignorehitpause= 1

[State 0, down, top]
type = Explod
trigger1 = random < 400
anim = 8303
ID = 8303
pos = floor(0+parent, vel X)-(random%50),floor(-80+parent, vel Y)+(random%50)
postype = p1
facing = -1
vfacing = -1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,0)
ownpal = 0
ignorehitpause= 1

[State 0, down 2, mid]
type = Explod
trigger1 = random > 700
anim = 8304
ID = 8304
pos = floor(0+parent, vel X)-(random%40),floor(-60+parent, vel Y)+(random%50)
postype = p1
facing = -1
vfacing = -1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,0)
ownpal = 0
ignorehitpause= 1

[State 0, diagdown, mid]
type = Explod
trigger1 = random > 700
anim = 8306
ID = 8306
pos = floor(0+parent, vel X)-(random%40),floor(-60+parent, vel Y)+(random%50)
postype = p1
facing = -1
vfacing = -1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,0)
ownpal = 0
ignorehitpause= 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != 302
ignorehitpause = 1


;--------------------------------------------------------------------------
;Aura up
[StateDef 8303]
type = S
movetype= I
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = -1
poweradd = 0;0
sprpriority = 2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 999
ignorehitpause = 1
;persistent =

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent, pos x
y = parent, pos y

[State 0, PalFXWiz]
type =  PalFX
trigger1 = Parent, Var(27) = 1
time = 999
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 1

[State 0, VarRandom]
type = VarRandom
trigger1 = 1
v = 0
range = 5,10

[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 0
value = .1*var(0)

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8300
ID = 8300
pos = 0-(random%20),-20-(random%60)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8301
ID = 8301
pos = 0+(random%20),-10-(random%60)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8302
ID = 8302
pos = 0-(random%10),0-(random%40)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8303
ID = 8303
pos = 10-(random%20),0-(random%50)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8304
ID = 8304
pos = 0+(random%20),-20-(random%60)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8305
ID = 8305
pos = 0-(random%20),-10-(random%60)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8306
ID = 8306
pos = 0+(random%10),0-(random%40)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8307
ID = 8307
pos = 15-(random%30),0-(random%50)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno!= 3101
ignorehitpause = 1

;-------------------------------------------------------------------------
;Galick Gun - Charge
[StateDef 8506]
type = S
movetype= A
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 8506
poweradd = 0;0
sprpriority = 5

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent, pos x-17*facing
y = parent, pos y-66

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S3001,0
volume = 0
channel = 3

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = nobardisplay

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != 3000
ignorehitpause = 1
;persistent =

;--------------------------------------------------------------------------
;Galick Gun - Charge
[StateDef 8507]
type = S
movetype= A
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 8506
poweradd = 0;0
sprpriority = 5

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent, pos x-18*facing
y = parent, pos y-68

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S3001,0
volume = 0
channel = 3

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = nobardisplay

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != 3003
ignorehitpause = 1

;-------------------------------------------------------------------------
;Million Dollar Renzoku (Ball charge) 
[StateDef 8500]
physics = N
anim = -1
sprpriority = 5

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible
flag2 = nobardisplay
flag3 = noshadow

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8313
ID = 8500
postype = p1
removetime = -1
supermovetime = 999
pausemovetime = 999
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 0, Modifyexplod]
type = modifyexplod
trigger1 = 1
ID = 8500
scale = .75-(.010*time), .75-(.010*time)

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8315
ID = 85011
postype = p1
removetime = 48
supermovetime = 999
pausemovetime = 999
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 0, Modifyexplod]
type = modifyexplod
trigger1 = 1
ID = 85011
scale = .25+(.0075*time), .25+(.0075*time)


[State 0, Explod]
type = Explod
trigger1 = time = 14
anim = 8315
ID = 85012
postype = p1
removetime = 48
supermovetime = 999
pausemovetime = 999
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 0, Modifyexplod]
type = modifyexplod
trigger1 = 1
ID = 85012
scale = .25+(.0075*(time-14)), .25+(.0075*(time-14))


[State 0, Explod]
type = Explod
trigger1 = time = 28
anim = 8315
ID = 85013
postype = p1
removetime = 48
supermovetime = 999
pausemovetime = 999
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 0, Modifyexplod]
type = modifyexplod
trigger1 = 1
ID = 85013
scale = .25+(.0075*(time-28)), .25+(.0075*(time-28))



[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 60 || parent,movetype = H

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 61 || parent,movetype = H 


;-------------------------------------------------------------------------
;Galick Gun - Fire!
[StateDef 8516]
type = S
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 8516
poweradd = 0
sprpriority = 5
juggle = 1



[state 8516, Juggle Set for Basics]
type =  parentvarset
trigger1 = numtarget
trigger1 = movehit = 1
v = 14
value = 10 


[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent, pos x+43*facing
y = parent, pos y-57

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S3001,2

[State 0, HitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State -2, ComboDampener-Increase]
type = ParentVarAdd
trigger1 = MoveType = A
trigger1 = MoveHit = 1
trigger1 = FVar(10) < 31
trigger1 = NumTarget
fv = 10
value = 1
persistent = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, HitDef]
type = HitDef
trigger1 = !time
ID = 8516
nochainID = 8516
nochainid = 1365
attr = S,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 0;0,0
givepower = 0,0
;affectteam = E          ;B,E,F
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
;fall.animtype = Back
priority = 5,Hit   ;Hit,Miss,Dodge
damage = ceil(225*parent, fvar(13)),ceil(45*parent, fvar(13))
pausetime = 0,20
;guard.pause,0
air.juggle = 1
sparkno = -1
guard.sparkno = S8345+(random%4)
sparkxy = -20,0
;hitsound = S3001,2
;guardsound = S3001,2
ground.type = Low      ;Low,Trip,None
ground.slidetime = 20
ground.hit = 35
air.hittime = 35
Fall = 1
p2stateno = 6000
ground.velocity = -15,-4
air.velocity = -15,-4
sprpriority = 5
palfx.time = 55
palfx.add = 240,50,250
palfx.mul = 250,224,220
palfx.sinadd = 110,55,185,15
envshake.time = 35
envshake.freq = 120
envshake.ampl = 8

[State 0, ChangeState]
type = ChangeState
trigger1 = !AnimTime || Moveguarded
value = 8317
ctrl = 0
ignorehitpause = 1
;persistent =

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != 3001 && time = 34
ignorehitpause = 1
;--------------------------------------------------------------------------
;-Galick Gun - Destroy
[StateDef 8317]
type = S
movetype= A
physics = N
velset = 0,0
Anim = -1
ctrl = 0
sprpriority = 5


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 10

[State 0, ChangeState]
type = ChangeState
trigger1 = Pos Y >=0
value = 2516
ctrl = 0
ignorehitpause = 1
;--------------------------------------------------------------------------
;Galic Gun push (Kamekaze code thanks!)
[Statedef 8318]
physics = N
velset = 0,0
anim = 5333
ctrl = 0

[State 0, VelSet]
type = VelSet
trigger1 = !time
x = 30

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 161

[State 0, VelMul]
type = VelMul
trigger1 = time > 20
x = .85

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S5,1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0

[State 4003, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1
ignorehitpause = 1
persistent = 1

[State 911, Destroy]
type = destroyself
trigger1 = time >= 35
;--------------------------------------------------------------------------
;Galick Ho Blast - AIR
[StateDef 2515]
type = A
movetype= A
physics = N
juggle  = 0
velset = 9,12
ctrl = 0
anim = 8334
poweradd = 0;0
sprpriority = 5

[State 0, PalFXWiz]
type =PalFX
trigger1 = Parent, Var(6) = 0
time = 999
add = 0,0,0
mul = 380,230,512
sinadd = 0,0,0,10
invertall = 0
color = 1




[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = Parent, Var(6) = 0
trigger1 = time = [0,1]
flag = invisible
ignorehitpause = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NP,SP,HP
slot = 0
stateno = 2516
time = 1

[State 0, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time 
value = S1000,2



[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, HitDef]
type = HitDef
trigger1 = !time
attr = A,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium         ;light,medium,hard,back,up,diagup
air.animtype = Hard
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 225
pausetime = 0,9
;guard.pause,0
sparkno = -1
guard.sparkno = S8340+(random%4)
sparkxy = -20,0
hitsound = S1000,3
guardsound = S300,2
ground.type = Low      ;Low,Trip,None
Air.type = Low      ;Low,Trip,None
ground.slidetime = 20
ground.hittime = 20
air.hittime = 20
ground.velocity = -7,0
air.velocity = -9,8
palfx.time = 35
palfx.add = 240,50,250
palfx.mul = 250,224,220
palfx.sinadd = 110,55,185,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
getpower = 0;0
Fall = 1


[State 9050:	Stop]
type			= velset
trigger1		= movecontact && !animtime
y			= 0

[State 9050:	Explode]
type			= Changestate
trigger1		= movecontact  || pos Y >= 0
value			= 2516

;--------------------------------------------------------------------------
;Galick Ho blast destroy hitting ground
[StateDef 2516]
type = S
movetype= A
physics = N
velset = 0,0
Anim = 8335
ctrl = 0
sprpriority = 5

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1


[State 9050]
type 			= trans
trigger1 		= time = 0
trans 		= add

[State 9051:	End]
type			= Destroyself
trigger1		= animtime = 0
;-------------------------------------------------------------------------------
;Galick Ho blast destroy
[StateDef 2511]
type = S
movetype= A
physics = N
velset = 0,0
Anim = 8335
ctrl = 0
sprpriority = 5

[State 0, PalFXWiz]
type =PalFX
trigger1 = Parent, Var(6) = 0
time = 999
add = 0,0,0
mul = 256,126,512
sinadd = 0,0,0,1
invertall = 0
color = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 45


;-----------------------------------------------------------------------
;ki blast hard
[StateDef 1335]
type = A
movetype= A
physics = N
juggle  = 0
velset = 10,0
ctrl = 0
anim = 8330
poweradd = 0;0
sprpriority = 5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S3003,1
volume = 255
channel = 2

[State 0, ]
type = Explod
trigger1 = (time%6)=0
anim = 8100
ID = 8100
pos = 0,0-ceil(pos Y)
facing = 1
scale = 1,.5
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1


[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8310
ID = 8310
pos = -25,-4
postype = p1  ;p2,front,back,left,right
removetime = -2
bindtime = 1
scale = .6,.6
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, PalFXWiz]
type = PalFX
trigger1 = !Var(6)
time = 999
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NP,SP,HP
slot = 0
stateno = 1311
time = 1

[State 0, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = 1

[State -2, ComboDampener-Increase]
type = ParentVarAdd
trigger1 = MoveType = A
trigger1 = MoveHit = 1
trigger1 = FVar(10) < 31
trigger1 = NumTarget
fv = 10
value = 1
persistent = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, HitDef]
type = HitDef
trigger1 = !time
attr = A,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
;fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 5
pausetime = 0,25
;guard.pause,0
sparkno = S8340
guard.sparkno = S8340+(random%4)
sparkxy = -20,0
hitsound = S815,0
guardsound = S815,0
ground.type = Low      ;Low,Trip,None
ground.slidetime = 25
ground.hittime = 25
air.hittime = 25
ground.velocity = -7,-2
fall = 0
air.velocity = -7,-2
sprpriority = 3
palfx.time = 15
palfx.add = -100,-100,-100
palfx.mul = 350,350,256
palfx.sinadd = 100,100,0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
getpower = 0;0
p2stateno = 761

[State 0, VelSet]
type = VelSet
trigger1 = movecontact
x = 0
y = 0
ignorehitpause = 1
persistent = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = Movecontact
value = 1331
ctrl = 0
ignorehitpause = 1
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 35
value = 1332
ctrl = 0
ignorehitpause = 1
;persistent =

;-----------------------------------------------------------------------
;ki blast hard
[StateDef 1340]
type = A
movetype= A
physics = N
juggle  = 0
velset = 10,0
ctrl = 0
anim = 8330
poweradd = 0;0
sprpriority = 5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S1000,0
volume = 255
channel = 2

[State 0, ]
type = Explod
trigger1 = (time%6)=0
anim = 8100
ID = 8100
pos = 0,0-ceil(pos Y)
facing = 1
scale = 1,.5
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1


[State 0, PalFXWiz]
type = PalFX
trigger1 = !Var(6)
time = 999
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NP,SP,HP
slot = 0
stateno = 1311
time = 1

[State 0, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = 1

[State -2, ComboDampener-Increase]
type = ParentVarAdd
trigger1 = MoveType = A
trigger1 = MoveHit = 1
trigger1 = FVar(10) < 31
trigger1 = NumTarget
fv = 10
value = 1
persistent = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, HitDef]
type = HitDef
trigger1 = !time
attr = A,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
;fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 50
pausetime = 0,10
;guard.pause,0
sparkno = S8340
guard.sparkno = S8340+(random%4)
sparkxy = -20,0
hitsound = S815,0
guardsound = S815,0
ground.type = Low      ;Low,Trip,None
ground.slidetime = 25
ground.hittime = 25
air.hittime = 25
ground.velocity = -10,-6
fall = 1
air.velocity = -7,-2
sprpriority = 3
palfx.time = 15
palfx.add = -100,-100,-100
palfx.mul = 350,350,256
palfx.sinadd = 100,100,0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
getpower = 0;0


[State 0, VelSet]
type = VelSet
trigger1 = movecontact
x = 0
y = 0
ignorehitpause = 1
persistent = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = Movecontact
value = 1331
ctrl = 0
ignorehitpause = 1
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 35
value = 1332
ctrl = 0
ignorehitpause = 1


;--------------------------------------------------------------------------
;Renzoku
[StateDef 1360]
type = A
movetype= A
physics = N
juggle  = 2
velset = 9+(random%2),4-(random%8)
ctrl = 0
anim = 8330
poweradd = 0;0
sprpriority = 5


[State 0, VelMul]
type = VelMul
trigger1 = 1
x = 1
y = .7
;ignorehitpause =
;persistent =



[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8310
ID = 8310
pos = -27,2
postype = p1  ;p2,front,back,left,right
removetime = -2
bindtime = 1
scale = .4,.4
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, PalFXWiz]
type = null; PalFX
trigger1 = Parent, Var(6) = 0
time = 999
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = Parent, Var(6) = 0
trigger1 = time = [0,1]
flag = invisible
ignorehitpause = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NP,SP,HP
slot = 0
stateno = 1351
time = 1

[State 0, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = 1

[State -2, ComboDampener-Increase]
type = ParentVarAdd
trigger1 = MoveType = A
trigger1 = MoveHit = 1
trigger1 = FVar(10) < 31
trigger1 = NumTarget
fv = 10
value = 1
persistent = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, HitDef]
type = HitDef
;nochainid = 1370
trigger1 = parent,anim =3101 &&!time
attr = A,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = diagup
;fall.animtype = diagup
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 5,1
pausetime = 0,15
;guard.pause,0
sparkno = -1
guard.sparkno = -1
sparkxy = -20,0
hitsound = S300,2
guardsound     = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2)) 
ground.type = High      ;Low,Trip,None
ground.slidetime = 20
ground.hittime = 20
air.hittime = 20
ground.velocity = -4
air.velocity = -2,-1
palfx.time = 15
palfx.add = -100,-100,-100
palfx.mul = 350,350,256
palfx.sinadd = 100,100,0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
getpower = 0;0
fall = 0
fall.recover = 0

[State 0, VelSet]
type = VelSet
trigger1 = movecontact
x = 0
y = 0
ignorehitpause = 1
persistent = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = Movecontact
value = 1361
ctrl = 0
ignorehitpause = 1
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 45
value = 1362
ctrl = 0
ignorehitpause = 1
;persistent =

;--------------------------------------------------------------------------
;Renzoku bigger blast
[StateDef 1365]
type = A
movetype= A
physics = N
juggle  = 8
velset = 12
ctrl = 0
anim = 8330
poweradd = 0;0
sprpriority = 5


[State 0, VelMul]
type = VelMul
trigger1 = 1
x = 1
y = .7
;ignorehitpause =
;persistent =



[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8310
ID = 8310
pos = -27,2
postype = p1  ;p2,front,back,left,right
removetime = -2
bindtime = 1
scale = .4,.4
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, PalFXWiz]
type = null; PalFX
trigger1 = Parent, Var(6) = 0
time = 999
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = Parent, Var(6) = 0
trigger1 = time = [0,1]
flag = invisible
ignorehitpause = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NP,SP,HP
slot = 0
stateno = 1351
time = 1

[State 0, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = 1

[State -2, ComboDampener-Increase]
type = ParentVarAdd
trigger1 = MoveType = A
trigger1 = MoveHit = 1
trigger1 = FVar(10) < 31
trigger1 = NumTarget
fv = 10
value = 1
persistent = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, HitDef]
type = HitDef
trigger1 = parent,anim =3101 &&!time
attr = A,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = diagup
;fall.animtype = diagup
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 5,1
pausetime = 0,9
;guard.pause,0
sparkno = s8345
guard.sparkno = S8020+(random%2)
sparkxy = -20,0
hitsound = S300,2
guardsound          = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2)) 
ground.type = High      ;Low,Trip,None
ground.slidetime = 20
ground.hittime = 20
air.hittime = 20
ground.velocity = -2,-12
air.velocity = -1,-11
palfx.time = 15
palfx.add = -100,-100,-100
palfx.mul = 350,350,256
palfx.sinadd = 100,100,0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
getpower = 0;0
fall = 1
fall.recover = 0

[State 0, VelSet]
type = VelSet
trigger1 = movecontact
x = 0
y = 0
ignorehitpause = 1
persistent = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = Movecontact
value = 1361
ctrl = 0
ignorehitpause = 1
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 45
value = 1362
ctrl = 0
ignorehitpause = 1
;persistent =

;-------------------------------------------------------------------------
;Ki Bullet
[StateDef 1370]
type = A
movetype= A
physics = N
juggle  = 8
velset = 19.5,
ctrl = 0
anim = 8336
poweradd = 0;0
sprpriority = 5


[State 0, VelMul]
type = VelMul
trigger1 = 1
x = 1
y = .7
;ignorehitpause =
;persistent =


[State 0, ]
type = Explod
trigger1 = (time%6)=0
anim = 8100
ID = 8100
pos = 0,0-ceil(pos Y)
facing = 1
scale = .7,.3
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1


[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8310
ID = 8310
pos = -27,6
postype = p1  ;p2,front,back,left,right
removetime = -2
bindtime = 1
scale = .4,.4
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, PalFXWiz]
type = null; PalFX
trigger1 = Parent, Var(6) = 0
time = 999
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 1

[State 0: Dust]
type                    = MakeDust
trigger1                = (1)
pos                     = 20,floor(-pos y)
spacing                 = 2

[State 0: 	AfterImage]
type 			        = AfterImage
trigger1 		        = !Time
time 			        = 99999
framegap 		        = 2
length 		            = 20
paladd 		            = 0, 0, 0
palmul 		            = .50, .50, .50
palcontrast 	        = 50, 50, 50
trans 		            = add


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = Parent, Var(6) = 0
trigger1 = time = [0,1]
flag = invisible
ignorehitpause = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr =,HP
slot = 0
stateno = 1351
time = 1

[State 0, HitBy]
type = HitBy
trigger1 = 1
value = ,HP
time = 1

[State -2, ComboDampener-Increase]
type = ParentVarAdd
trigger1 = MoveType = A
trigger1 = MoveHit = 1
trigger1 = FVar(10) < 31
trigger1 = NumTarget
fv = 10
value = 1
persistent = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, HitDef]
type = HitDef
ID = 1370
trigger1 = !time
attr = A,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = diagup        ;light,medium,hard,back,up,diagup
air.animtype = diagup
fall.animtype = diagup
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 125,15
pausetime = 0,12
;guard.pause,0
sparkno = s8345
guard.sparkno = S8020+(random%2)
sparkxy = -20,0
hitsound = S1000,3
guardsound     = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2)) 
ground.type = High      ;Low,Trip,None
ground.slidetime = 20
ground.hittime = 20
air.hittime = 20
ground.velocity = -2,-5
air.velocity = -7,-7
palfx.time = 15
;p1stateno               = 70231
;p2stateno               = 1022
palfx.add = -100,-100,-100
palfx.mul = 350,350,256
palfx.sinadd = 100,100,0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
getpower = 0;0
fall =1
fall.recover = 1

[State 0, VelSet]
type = VelSet
trigger1 = movecontact
x = 0
y = 0
ignorehitpause = 1
persistent = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = Movecontact
value = 1361
ctrl = 0
ignorehitpause = 1
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 45
value = 1362
ctrl = 0
ignorehitpause = 1
;persistent =

;-------------------------------------------------------------------------
;Ki blast destroy
[StateDef 1361]
type = S
movetype= A
physics = N
velset = 0,0
Anim = 1
ctrl = 0
sprpriority = 5



[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8331
ID = 8310
pos = 27,-5
postype = p1  ;p2,front,back,left,right
removetime = -2
bindtime = 1
scale = .35,.35
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0


[State 0, PalFXWiz]
type = null; PalFX
trigger1 = Parent, Var(6) = 0
time = 999
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1


[State 9050]
type 			= trans
trigger1 		= time = 0
trans 		= add

[State 9051:	End]
type			= Destroyself
trigger1		= numtarget = 0
trigger2            = time = 15
;-------------------------------------------------------------------------
;Kiblast fade away
[StateDef 1362]
type = S
movetype= A
physics = N
ctrl = 0
sprpriority = 5

[State 0, ]
type = Explod
triggerall = time<10
trigger1 = (time%6)=0
anim = 8100
ID = 8100
pos = 0,0-ceil(pos Y)
facing = 1
scale = .7-(time*.1),.3-(time*.05)
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 0, PalFXWiz]
type = null;PalFX
trigger1 = Parent, Var(6) = 0
time = 999
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = Parent, Var(6) = 0
trigger1 = time = [0,1]
flag = invisible
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, VelMul]
type = VelMul
trigger1 = 1
x = .9
y = .9

[State 0, Trans]
type = Trans
trigger1 = 1
trans = Add

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 1-(time*.05),1-(time*.05)

[State 0, PalFX]
type = PalFX
trigger1 = !time
time = 20
sinadd = -255,-255,-255,80
invertall = 0
color = 256

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 20

;--------------------------------------------------------------------------
;ki blast hard -charge effect
[StateDef 1400]
type = S
movetype= I
physics = N
velset = 0,0
Anim = 8460
ctrl = 0
sprpriority = 5

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent, pos x-0*facing
y = parent, pos y-110


[State 0, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S3003,0
volume = 255
channel = 2

[State 0, PalFXWiz]
type = PalFX
trigger1 = !Var(6)
time = 999
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != 1261
trigger2 = (parent, stateno = 1261) && (parent, Animelem = 2)
ignorehitpause = 1
;----------------------------------------------------------------------
;ki blast hard
[StateDef 1410]
type = A
movetype= A
physics = N
juggle  = 0
velset = 10,0
ctrl = 0
anim = 8330
poweradd = 0;0
sprpriority = 5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S3003,1
volume = 255
channel = 2

[State 0, ]
type = Explod
trigger1 = (time%6)=0
anim = 8100
ID = 8100
pos = 0,0-ceil(pos Y)
facing = 1
scale = 1,.5
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1


[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8310
ID = 8310
pos = -55,-5
postype = p1  ;p2,front,back,left,right
removetime = -2
bindtime = 1
scale = .5,.5
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, PalFXWiz]
type = PalFX
trigger1 = !Var(6)
time = 999
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NP,SP,HP
slot = 0
stateno = 1311
time = 1

[State 0, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = 1

[State -2, ComboDampener-Increase]
type = ParentVarAdd
trigger1 = MoveType = A
trigger1 = MoveHit = 1
trigger1 = FVar(10) < 31
trigger1 = NumTarget
fv = 10
value = 1
persistent = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, HitDef]
type = HitDef
trigger1 = !time
attr = A,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
;fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 60
pausetime = 0,10
;guard.pause,0
sparkno = -1
guard.sparkno = S8340+(random%4)
sparkxy = -20,0
hitsound = S300,2
guardsound = S815,0
ground.type = Low      ;Low,Trip,None
ground.slidetime = 25
ground.hittime = 25
air.hittime = 25
ground.velocity = -7
fall = 0
air.velocity = -7,-2
sprpriority = 3
palfx.time = 15
palfx.add = -100,-100,-100
palfx.mul = 350,350,256
palfx.sinadd = 100,100,0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
getpower = 0;0

[State 0, VelSet]
type = VelSet
trigger1 = movecontact
x = 0
y = 0
ignorehitpause = 1
persistent = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = Movecontact
value = 1331
ctrl = 0
ignorehitpause = 1
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 35
value = 1332
ctrl = 0
ignorehitpause = 1

;-------------------------------------------------------------------------
;Air Raid KI
[Statedef 9050]
type 			= A
movetype 		= A
physics 		= N
ctrl 			= 0
anim 			= 8500
sprpriority		= 4


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 9050]
type 			=  trans
trigger1 		= time = 0
trans 		= add

[state 9050:	Accel]
type			= velset
trigger1		= time = 0
y			= 15


[State 0, PalFXWiz]
type = PalFX
trigger1 = Parent, Var(6) = 0 && time = 0
time = 999
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 1

[State 9050:	NoShadow]
type 			= AssertSpecial
trigger1 		= 1
flag 			= NoShadow
ignorehitpause 	= 1
persistent = 1

[State 9050:	HitDef]
type			= HitDef
trigger1		= !time
attr			= S, NP
hitflag		= MAFPD
guardflag		= MA
animtype		= Hard
priority		= 3, Hit
damage		= 110,12
pausetime		= 0,12
guard.pausetime	= 1,4
sparkno		= S8030+(random%5)
guard.sparkno	= S8020+(random%2)
sparkxy		= -32,0
hitsound		= S2,9
guardsound          = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type         = High
air.type		= high
ground.slidetime	= 25
ground.hittime	= 10
air.hittime         = 10
ground.velocity	= -1,5
guard.velocity	= -1
air.velocity	= -2,4
airguard.velocity	= -2,4
ground.cornerpush.veloff = 0
down.velocity	= -1,-2
getpower		= 0
givepower		= 0
ownpal 		= 1
envshake.time 	= 12
envshake.freq 	= 120
envshake.ampl 	= -4
fall = 1

[State 9050:	Stop]
type			= velset
trigger1		= movecontact
y			= 0

[State 9050:	Explode]
type			= Changestate
trigger1		= movecontact || pos Y >= 0
value			= 9051

;-------------------------------------------------------------------------
;Air Raid KI
[Statedef 9051]
type 			= A
movetype 		= I
physics 		= N
ctrl 			= 0
anim 			= 8501
vel 			= 0,0
sprpriority		= 4

[State 0, PalFXWiz]
type = PalFX
trigger1 = Parent, Var(6) = 0 && time = 0
time = 999
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1


[State 9050]
type 			= trans
trigger1 		= time = 0
trans 		= add

[State 9051:	End]
type			= Destroyself
trigger1		= animtime = 0

;-------------------------------------------------------------------------
;Bakuhatsuha
[Statedef 9310]
type 		= S
movetype 		= A
physics 		= N
ctrl 		= 0
anim 		= 8700
sprpriority	= 4

[State 3102, AssertSpecial]
type = AssertSpecial
trigger1 = 1
ignorehitpause = 1
persistent = 1
flag = noshadow

[State 9310, PosSet]
type = PosSet
triggerall = p2bodydist x < 180
trigger1 = !time
x = enemynear, Pos X-0
y = 0



[State 9310:	Ground]
type		= null
trigger1		= time = 0
y		= 0



[State 9310:	SND]
type		= playSND
trigger1		= time = 0
value		= S1900,0

[State 9310:	Hit]
type 		= HitDef
trigger1 		= time = 0
attr 		= S,HA
hitflag 		= MAFD
guardflag 	= MA 
animtype 		= Hard
priority 		= 9999,Hit
ID                  = 3201
hitsound 		= S203,2
guardsound 	= S1611,0
sparkno 		= S IfElse(random<500,IfElse(random<500,8015,8016),IfElse(random<500,8017,8018))
guard.sparkno 	= -1
sparkxy 		= -22,-40
spark.postype	= p2
damage 		= 80
pausetime 	= 0,10
ground.type 	= High
ground.velocity     = 9,-7
air.velocity 	= 5,-12
fall 		= 1
fall.recover	= 1
envshake.time 	= 10
envshake.freq 	= 60
envshake.ampl 	= -4
ignorehitpause      = 1

[state 9091,pause]
type = pause
trigger1 = animelem = 8
trigger2 = time%4 = 0
time = 3

[State 1000:    	Screen Flash]
type          	= EnvColor
trigger1      	= movecontact && animelem = 5
value         	= 255,255,255
time            	= 1
under           	= 0

[State 800, 1]
type = Explod
trigger1 = movecontact && numexplod(6069) = 0
Anim = 8111
pos = 0,0
postype = p2
Id = 6069
sprpriority = 1
removeongethit = 1
removetime = -2
scale = 1,1
bindtime = 1
SuperMove = 1
ownpal = 1
persistent = 0

[State 9310]
type			= destroyself
trigger1		= !animtime

;---------------------------------------------------------------------------
;FF Ball
[Statedef 80051]
type                    = U
movetype                = U
physics                 = U
anim                    = 70231
velset                  = 0,0
ctrl                    = 0
poweradd                = 0
juggle                  = 0
facep2                  = 0
hitdefpersist           = 0
movehitpersist          = 0
hitcountpersist         = 0
sprpriority             = 3
;---------------




[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S3100,0


[State 0:     VelSet]
type                    = VelSet
trigger1                = (!Time)
x		                = 0
y		                = 0

[State 0: VarSet]
type 			        = VarSet
trigger1 		        = (!Time)
fv 			            = 1
value 		            = 1

[State 0: VarAdd]
type 			        = VarAdd
trigger1 		        = (TimeMod = 2,0)
fv 			            = 1
value 		            = -1

[State 0: Trans]
type                    = Trans
trigger1 			    = 1
trans                   = add

[State 0: AngleDraw]
type                    = AngleDraw
trigger1                = 1
scale                   = fvar(1), fvar(1)

[State 0, ]
type                    = BindToParent
trigger1                = 1
time                    = 1
pos		                = 20,-52

[State 0: 	AfterImage]
type 			        = AfterImage
trigger1 		        = (!Time)
time 			        = 9999999
framegap 		        = 4
length 		            = 20
paladd 		            = 0, 0, 0
palmul 		            = .60, .60, .60
palcontrast 	        = 50, 50, 50
trans 		            = add

[State 0, AfterImage]
type                    = AfterImageTime
trigger1                = 1
time                    = 2

[State 0:     Turn]
type                    = Turn
trigger1                = (P2BodyDist X < 0)

[State 0:    No Shadow]
Type                    = AssertSpecial
Trigger1                = 1
Flag                    = NoShadow

[State 0:        DestroySelf]
type 			        = DestroySelf
trigger1 		        = parent, animelem = 13, > 31
trigger2 		        = parent,stateno != 3401
trigger3 		        = parent,movetype = H
;------------------------------------------------------------------------
;FF Ball - Left Arm
[Statedef 80052]
type                    = U
movetype                = U
physics                 = U
anim                    = 70232
velset                  = 0,0
ctrl                    = 0
poweradd                = 0
juggle                  = 0
facep2                  = 0
hitdefpersist           = 0
movehitpersist          = 0
hitcountpersist         = 0
sprpriority             = 5
;---------------




[State 0:     VelSet]
type                    = VelSet
trigger1                = (!Time)
x		                = 0
y		                = 0

[State 0: VarSet]
type 			        = VarSet
trigger1 		        = (!Time)
fv 			            = 1
value 		            = 1

[State 0: VarAdd]
type 			        = VarAdd
trigger1 		        = (TimeMod = 1,0)
fv 			            = 1
value 		            = -1

[State 0: Trans]
type                    = Trans
trigger1 			    = 1
trans                   = add

[State 0: AngleDraw]
type                    = AngleDraw
trigger1                = 1
scale                   = fvar(1), fvar(1)

[State 0, ]
type                    = BindToParent
trigger1                = 1
time                    = 1
pos		                = -20, -70






[State 0: 	AfterImage]
type 			        = AfterImage
trigger1 		        = (!Time)
time 			        = 9999999
framegap 		        = 4
length 		            = 20
paladd 		            = 0, 0, 0
palmul 		            = .60, .60, .60
palcontrast 	        = 50, 50, 50
trans 		            = add

[State 0, AfterImage]
type                    = AfterImageTime
trigger1                = 1
time                    = 2

[State 0:     Turn]
type                    = Turn
trigger1                = (P2BodyDist X < 0)

[State 0:    No Shadow]
Type                    = AssertSpecial
Trigger1                = 1
Flag                    = NoShadow

[State 0:        DestroySelf]
type 			        = DestroySelf
trigger1 		        = parent, animelem = 4
trigger2 		        = parent,stateno != 3401
trigger3 		        = parent,movetype = H
;------------------------------------------------------------------------
;FF Ball - Right arm
[Statedef 80053]
type                    = U
movetype                = U
physics                 = U
anim                    = 70232
velset                  = 0,0
ctrl                    = 0
poweradd                = 0
juggle                  = 0
facep2                  = 0
hitdefpersist           = 0
movehitpersist          = 0
hitcountpersist         = 0
sprpriority             = 5
;---------------




[State 0:     VelSet]
type                    = VelSet
trigger1                = (!Time)
x		                = 0
y		                = 0

[State 0: VarSet]
type 			        = VarSet
trigger1 		        = (!Time)
fv 			            = 1
value 		            = 1

[State 0: VarAdd]
type 			        = VarAdd
trigger1 		        = (TimeMod = 1,0)
fv 			            = 1
value 		            = -1

[State 0: Trans]
type                    = Trans
trigger1 			    = 1
trans                   = add

[State 0: AngleDraw]
type                    = AngleDraw
trigger1                = 1
scale                   = fvar(1), fvar(1)

[State 0, ]
type                    = BindToParent
trigger1                = 1
time                    = 1
pos		                = 34,-63

[State 0: 	AfterImage]
type 			        = AfterImage
trigger1 		        = (!Time)
time 			        = 9999999
framegap 		        = 4
length 		            = 20
paladd 		            = 0, 0, 0
palmul 		            = .60, .60, .60
palcontrast 	        = 50, 50, 50
trans 		            = add

[State 0, AfterImage]
type                    = AfterImageTime
trigger1                = 1
time                    = 2

[State 0:     Turn]
type                    = Turn
trigger1                = (P2BodyDist X < 0)

[State 0:    No Shadow]
Type                    = AssertSpecial
Trigger1                = 1
Flag                    = NoShadow

[State 0:        DestroySelf]
type 			        = DestroySelf
trigger1 		        = parent, animelem = 4
trigger2 		        = parent,stateno != 3401
trigger3 		        = parent,movetype = H
;------------------------------------------------------------------------

; Final Flash Beam
[Statedef 8402]
type 		= U
movetype		= A
physics		= U
juggle	    	= 1
anim    	          = 8388
velset		= 0,0
ctrl	          = 0
poweradd		= 0
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority         = 3

[State 0, ]
type                    = BindToParent
trigger1                = 1
time                    = 1
pos                     = -11, -72

[State 0:    No Shadow]
Type                    = AssertSpecial
Trigger1                = 1
Flag                    = NoShadow

[State 0: 	AfterImage]
type 		= AfterImage
trigger1 		= (!Time)
time 	          = 9999999
framegap 		= 4
length 		= 20
paladd 		= 0, 0, 0
palmul 		= .60, .60, .60
palcontrast 	= 50, 50, 50
trans 		= add





[State 0, AfterImage]
type                    = AfterImageTime
trigger1                = 1
time                    = 2

[State 0, ]
type                    = HitDef
trigger1                = !Time
attr                    = A, HP
damage                  = 400,120
animtype                = Heavy
guardflag               = M
hitflag                 = MAF, NP, SP, HP, NT, ST, HT
priority                = 5, Hit
pausetime               = 0, 12
sparkno                 = -1
guard.sparkno           = -1
sparkxy                 = 0, 40
hitsound                = S3000, 3
guardsound              = S3000, 3
ground.type             = High
ground.slidetime        = 12
ground.hittime          = 12
ground.velocity         = -12, -12
airguard.velocity       = -3.9,-4
air.type                = High
air.velocity            = -12,-12
air.hittime             = 12
getpower                = 0
givepower		        = 0
yaccel		            = 0.5
Fall                    = 1
fall.recover            = 0
envshake.time           = 30
envshake.freq           = 90
envshake.ampl           = 10
id                      = 8320
p1sprpriority           = 6

[State 0: Helper]
type                    = Helper
trigger1                = MoveContact
helpertype              = normal
ID                      = 8403
stateno                 = 8403
postype                 = p2
ownpal                  = 1
size.xscale             = 1.5
size.yscale             = 1.5
Persistent              = 0

[State 0:        DestroySelf]
type 			        = DestroySelf
trigger1 		        = parent,stateno != 3403
trigger2 		        = parent,movetype = H
;---------------------------------------------------------------------------
; Final Flash Explode
[Statedef 8403]
type                    = U
movetype                = U
physics                 = U
anim                    = 90
velset                  = 0,0
ctrl                    = 0
poweradd                = 0
juggle                  = 0
facep2                  = 0
hitdefpersist           = 0
movehitpersist          = 0
hitcountpersist         = 0
sprpriority             = 5
;---------------

[State 0: Helper]
type                    = Helper
trigger1                = !Time
helpertype              = normal
ID                      = 8404
stateno                 = 8404
ownpal                  = 1
size.xscale             = 1
size.yscale             = 1

;---------------
;Effects
;---------------

[State 0, PalFXWiz]
type 				    = AllPalFX
trigger1 			    = Time = 15
time 				    = 40
add 				    = 200,200,256
mul 				    = 200,200,256
sinadd 			        = 200,200,256,150
invertall 			    = 0
color 			        = 256

;---------------
[State 0:    Done]
type                    = DestroySelf
trigger1                = (Time >= 200)

;---------------------------------------------------------------------------
;Final Flash Explode Helper
[Statedef 8404]
type                    = U
movetype                = U
physics                 = U
anim                    = 8530
velset                  = 0,0
ctrl                    = 0
poweradd                = 0
juggle                  = 0
facep2                  = 0
hitdefpersist           = 0
movehitpersist          = 0
hitcountpersist         = 0
sprpriority             = 5
;---------------

[State 0, ]
type                    = BindToTarget
trigger1                = 1
time                    = 1
pos		                = 0,0

[State 0: VarSet]
type 			        = VarSet
trigger1 		        = (!Time)
fv 			            = 1
value 		            = -1

[State 0: VarAdd]
type 			        = VarAdd
trigger1 		        = (TimeMod = 5,0)
fv 			            = 1
value 		            = -1

[State 0: AngleDraw]
type                    = AngleDraw
trigger1                = 1
scale                   = fvar(1), fvar(1)

[State 0:    No Shadow]
Type                    = AssertSpecial
Trigger1                = 1
Flag                    = NoShadow

[State 0: Trans]
type                    = Trans
trigger1 			    = 1
trans                   = add

[State 0:        DestroySelf]
type 			        = DestroySelf
trigger1 		        = Time = 40

;---------------------------------------------------------------------------
;Slow down
[Statedef 8405]
type                    = U
movetype                = U
physics                 = U
anim                    = 90
velset                  = 0,0
ctrl                    = 0
poweradd                = 0
juggle                  = 0
facep2                  = 0
hitdefpersist           = 0
movehitpersist          = 0
hitcountpersist         = 0
sprpriority             = 5
;---------------

[State 0: Pause]
type                    = Pause
triggerall              = 1
trigger1                = gametime%2 = 0
time                    = 1

[State 0:        DestroySelf]
type 			        = DestroySelf
trigger1 		        = Time = 100
trigger2 		        = parent,stateno != 3401
trigger3 		        = parent,movetype = H

;---------------------------------------------------------------------------
;Aura up
[StateDef 8304]
type = S
movetype= I
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = -1
poweradd = 0;0
sprpriority = 2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 999
ignorehitpause = 1
;persistent =

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent, pos x
y = parent, pos y

[State 0, PalFXWiz]
type =  PalFX
trigger1 = Parent, Var(27) = 1
time = 999
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 1

[State 0, VarRandom]
type = VarRandom
trigger1 = 1
v = 0
range = 5,10

[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 0
value = .1*var(0)

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8300
ID = 8300
pos = 0-(random%20),-20-(random%60)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermovetime = 999
pausemovetime = 999
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8301
ID = 8301
pos = 0+(random%20),-10-(random%60)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermovetime = 999
pausemovetime = 999
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8302
ID = 8302
pos = 0-(random%10),0-(random%40)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermovetime = 999
pausemovetime = 999
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8303
ID = 8303
pos = 10-(random%20),0-(random%50)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8304
ID = 8304
pos = 0+(random%20),-20-(random%60)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8305
ID = 8305
pos = 0-(random%20),-10-(random%60)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8306
ID = 8306
pos = 0+(random%10),0-(random%40)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8307
ID = 8307
pos = 15-(random%30),0-(random%50)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno!= [3400,3403]
ignorehitpause = 0

;-------------------------------------------------------------------------
;Super Portrait
[Statedef 19004]
physics  = N
anim     = 90
sprpriority = 5

[State 19004, VarSet]
type = VarSet
trigger1 = time = 0
persistent = 0
ignorehitpause = 1
fv = 1
value = 0

[State 19004, VarAdd]
type = VarAdd
trigger1 = time >= 40
persistent = 1
ignorehitpause = 1
fv = 1
value = 0.04

[State 19004, AssertSpecial]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 19004, Picture]
type = Explod
trigger1 = time = 0
anim = 19000
id = 19000
pos = -170,190
postype = back
ownpal = 0
sprpriority = 6
supermovetime = 9999
pausemovetime = 9999
persistent = 1
ignorehitpause = 1
scale = .9,.9
ontop = 1

[State 700,5 speed lines]
type = Explod
trigger1 = !time
Anim = 15000
pos = -120,210
postype = front ;p2,front,back,left,right
bindtime = -1
id=  7015
removetime = 57
scale =1.4, 1.111
pausemovetime = 999
sprpriority = 5
removeongethit = 1
ownpal=1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0
;ignorehitpause = 
;persistent = 


[State 19002, RemoveExplod]
type = RemoveExplod
trigger1 = time = 80
id = 19002

[State 19002, DestroySelf]
type = DestroySelf
trigger1 = time = 80
;---------------------------------------------------------------------------
;Shockwave
[StateDef 8201]
type = S
movetype= I
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = -1
poweradd = 0;0
sprpriority = 2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 999
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = nobardisplay

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible
ignorehitpause = 1

[State 0, EnvColor]
type = EnvColor
trigger1 = !time
value = 255,255,255
time = 3

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8210
ID =   8210
pos = 0,0
scale = 1, 1
postype = p1
bindtime = -1
sprpriority = 10
ownpal = 1
removetime = 9
supermove = 1
pausemovetime = 999
ontop = 1

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8200+(random%8)
ID =   8200
pos = 0,0
postype = p1
bindtime = -1
sprpriority = 10
ownpal = 1
removetime = 14
supermove = 1
pausemovetime = 999
ontop = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8200
scale = .6+(0.2*time), .6+(0.2*time)
ignorehitpause = 1
persistent = 1
supermove = 1
pausemovetime = 999

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8200+(random%8)
ID =   8201
pos = 0,0
postype = p1
bindtime = -1
sprpriority = 10
ownpal = 1
removetime = 14
supermove = 1
pausemovetime = 999
ontop = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8201
scale = .2+(0.1*time), .2+(0.1*time)
ignorehitpause = 1
persistent = 1
supermove = 1
pausemovetime = 999

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8200+(random%8)
ID =   8202
pos = 0,0
postype = p1
bindtime = -1
sprpriority = 10
ownpal = 1
removetime = 14
supermove = 1
pausemovetime = 999
ontop = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8202
scale = .1+(0.09*time), .1+(0.09*time)
ignorehitpause = 1
persistent = 1
supermove = 1
pausemovetime = 999

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 60
;-------------------------------------------------------------------------
; BBA Ball
[Statedef 8014]
type 			        = A
movetype		        = A
physics		            = N
juggle	    	        = 1
anim    			    = 8150
velset		            = 0,0
ctrl			        = 0
poweradd		        = 0
facep2		            = 0
hitdefpersist	        = 0
movehitpersist	        = 0
hitcountpersist	        = 0
sprpriority		        = 3



[State 0:	VelSet]
type			        = VelSet
trigger1		        = 1
x			            = 7
y                       = 7

[State 0: AssertSpecial]
type                    = AssertSpecial
trigger1                = 1
flag                    = noshadow

;---------------

[State 0:    HitOverride]
type                    = HitOverride
trigger1                = 1
slot                    = 1
time                    = -1
stateno                 = 8014
attr                    = SCA,AA,SP,AT

[State 0:    NotHitBy]
type                    = NotHitBy
trigger1                = 1
time                    = 2
value                   = SCA,AA,AT
ignorehitpause          = 1

[State 0:    HitBy]
type                    = HitBy
trigger1                = 1
value                   = SCA,AP
time                    = 2

;---------------

[State 0: Dust]
type                    = MakeDust
trigger1                = (1)
pos                     = 20,floor(-pos y)
spacing                 = 2

[State 0: 	AfterImage]
type 			        = AfterImage
trigger1 		        = !Time
time 			        = 99999
framegap 		        = 2
length 		            = 20
paladd 		            = 0, 0, 0
palmul 		            = .50, .50, .50
palcontrast 	        = 50, 50, 50
trans 		            = add

;---------------





[State 0, ]
type                    = HitDef
triggerall              = p2stateno != 1024
trigger1                = !Time
attr                    = S, SP
damage                  = 0, 20
animtype                = hard
guardflag               = MAFD
hitflag                 = MAF, NP, SP, NT, ST, HT
priority                = 5, Miss
pausetime               = 0, 0
sparkno                 = -1
guard.sparkno           = S7113
sparkxy                 = 0, 0
guardsound              = S400, 0
guardsound              = S2010, 3
ground.type             = High
ground.slidetime        = 20
ground.hittime          = 20
ground.velocity         = -7, -7
airguard.velocity       = -7, -7
air.type                = High
air.velocity            = -7, -7
air.hittime             = 12
getpower                = 27
givepower		        = 0
Fall                    = 1
Fall.recover            = 0
yaccel		            = 0.5
envshake.time           = 20
envshake.freq           = 80
envshake.ampl           = 10
id                      = 8014
p2facing                = 1
p1stateno               = 80141
p2stateno               = 3013

[State 0:    End]
type                    = DestroySelf
trigger1                = MoveGuarded || ((frontedgedist <= -175) || (backedgedist <= -175))

;---------------------------------------------------------------------------
; BBA - Grab
[Statedef 80141]
type 			        = U
movetype		        = A
physics		            = N
juggle	    	        = 1
anim    			    = 8150
velset		            = 5,7
ctrl			        = 0
poweradd		        = 0
facep2		            = 0
hitdefpersist	        = 0
movehitpersist	        = 0
hitcountpersist	        = 0
sprpriority		        = 2

[State 0: TargetBind]
type                    = TargetBind
trigger1                = 1
pos                     = 40,40
ID                      = 8014

[State 0]
type                    = AfterImageTime
trigger1                = 1
time                    = 1
ignorehitpause          = 1


[State 0: AssertSpecial]
type                    = AssertSpecial
trigger1                = 1
flag                    = noshadow

[State 0: MakeDust]
type                    = MakeDust
trigger1                = 1
pos                     = 20,floor(-pos y)
spacing                 = 2

[State 0:       Big S Dust Right]
type                    = Explod
trigger1                = TimeMod = 3, 0
anim                    = 8100
ID                      = 7011
pos                     = 10,floor(-pos y)
removetime              = -2
pausemovetime           = 999
sprpriority             = 3
ownpal                  = 1
removeongethit          = 1

[State 0: Width]
type                    = width
trigger1                = 1
edge                    = 2,0

[State 0: ChangeState]
type                    = ChangeState
trigger1                = Pos y > -20
value                   = 80142

;---------------------------------------------------------------------------
; Ground Explode
[Statedef 80142]
type 			        = U
movetype		        = I
physics		            = U
juggle	    	        = 1
anim    			    = 90
velset		            = 0,0
ctrl			        = 0
poweradd		        = 0
facep2		            = 0
hitdefpersist	        = 0
movehitpersist	        = 0
hitcountpersist	        = 0
sprpriority		        = 2

[State 0: AssertSpecial]
type                    = AssertSpecial
trigger1                = 1
flag                    = Invisible

[State 0: TargetBind]
type                    = TargetBind
trigger1                = !Time
pos                     = 30,40
ID                      = 7023

[State 0: Width]
type                    = width
trigger1                = 1
edge                    = 10,0

[State 0: TargetLifeAdd]
type                    = TargetLifeAdd
trigger1                = !Time
value                   = -340
ID                      = 8014

[State 0: TargetState]
type                    = Targetstate
trigger1                = !Time
value                   = 3014
ID                      = 8014

[State 0, Sound]
type                    = PlaySnd
trigger1                = !Time
value                   = 3002,2

[State 0: Helper]
type                    = Helper
triggerall              = !NumHelper(8103)
trigger1                = !Time
helpertype              = normal
ID                      = 84031
stateno                 = 84031
postype                 = p2
ownpal                  = 1
size.xscale             = 1
size.yscale             = 1
Persistent              = 0

[State 0:       EnvShake]
type 			        = EnvShake
trigger1 		        = !Time
time 			        = 20
freq 			        = 100
ampl 			        = 10
phase                   = 20

[State 0:    End]
type                    = DestroySelf
trigger1                = Time = 200

;---------------------------------------------------------------------------
; BBA Explode
[Statedef 84031]
type                    = U
movetype                = U
physics                 = U
anim                    = 90
velset                  = 0,0
ctrl                    = 0
poweradd                = 0
juggle                  = 0
facep2                  = 0
hitdefpersist           = 0
movehitpersist          = 0
hitcountpersist         = 0
sprpriority             = 5
;---------------

[State 0: Helper]
type                    = Helper
trigger1                = !Time
helpertype              = normal
ID                      = 84041
stateno                 = 84041
ownpal                  = 1
size.xscale             = 1
size.yscale             = 1
supermovetime = 999
pausemovetime = 999

;---------------
;Effects
;---------------

[State 0, PalFXWiz]
type 				    = AllPalFX
trigger1 			    = Time = 10
time 				    = 30
add 				    = 200,200,256
mul 				    = 200,200,256
sinadd 			        = 200,200,256,150
invertall 			    = 0
color 			        = 256

;---------------
[State 0:    Done]
type                    = DestroySelf
trigger1                = (Time >= 200)

;---------------------------------------------------------------------------
;BBA Explode Helper
[Statedef 84041]
type                    = U
movetype                = U
physics                 = U
anim                    = 8150
velset                  = 0,0
ctrl                    = 0
poweradd                = 0
juggle                  = 0
facep2                  = 0
hitdefpersist           = 0
movehitpersist          = 0
hitcountpersist         = 0
sprpriority             = 5
;---------------




[State 0, ]
type = Explod
trigger1 = time = 30
anim = 8111
ID = 8100
pos = 0,-25
facing = 1
scale = 1.8,1
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999


[State 0, ]
type                    = BindToTarget
trigger1                = 1
time                    = 1
pos		                = 0,0



[State 0: VarSet]
type 			        = VarSet
trigger1 		        = (!Time)
fv 			            = 1
value 		            = -1

[State 0: VarAdd]
type 			        = VarAdd
trigger1 		        = (TimeMod = 5,0)
fv 			            = 1
value 		            = -1

[State 0: AngleDraw]
type                    = AngleDraw
trigger1                = 1
scale                   = fvar(1), fvar(1)

[State 0:    No Shadow]
Type                    = AssertSpecial
Trigger1                = 1
Flag                    = NoShadow

[State 0: Trans]
type                    = Trans
trigger1 			    = 1
trans                   = add

[State 0:        DestroySelf]
type 			        = DestroySelf
trigger1 		        = Time = 20

;---------------------------------------------------------------------------
;BBA Ball
[Statedef 80055]
type                    = U
movetype                = U
physics                 = U
anim                    = 8151
velset                  = 0,0
ctrl                    = 0
poweradd                = 0
juggle                  = 0
facep2                  = 0
hitdefpersist           = 0
movehitpersist          = 0
hitcountpersist         = 0
sprpriority             = 5
;---------------

[State 0:     VelSet]
type                    = VelSet
trigger1                = (!Time)
x		                = 0
y		                = 0

[State 0: AngleDraw]
type                    = AngleDraw
trigger1                = 1

[State 0: AngleAdd]
type                    = AngleAdd
trigger1                = 1
value                   = -25

[State 0: VarSet]
type 			        = VarSet
trigger1 		        = (!Time)
fv 			            = 1
value 		            = 1

[State 0: VarAdd]
type 			        = VarAdd
trigger1 		        = (TimeMod = 2,0)
fv 			            = 1
value 		            = -1

[State 0: Trans]
type                    = Trans
trigger1 			    = 1
trans                   = add

[State 0: AngleDraw]
type                    = AngleDraw
trigger1                = 1
scale                   = fvar(1), fvar(1)

[State 0, ]
type                    = BindToParent
trigger1                = 1
time                    = 1
pos		                = 32,-55

[State 0: 	AfterImage]
type 			        = AfterImage
trigger1 		        = (!Time)
time 			        = 9999999
framegap 		        = 4
length 		            = 20
paladd 		            = 0, 0, 0
palmul 		            = .60, .60, .60
palcontrast 	        = 50, 50, 50
trans 		            = add

[State 0, AfterImage]
type                    = AfterImageTime
trigger1                = 1
time                    = 2

[State 0:     Turn]
type                    = Turn
trigger1                = (P2BodyDist X < 0)

[State 0:    No Shadow]
Type                    = AssertSpecial
Trigger1                = 1
Flag                    = NoShadow

[State 0:        DestroySelf]
type 			        = DestroySelf
trigger1 		        = parent, animelem = 4, > 40
trigger2 		        = parent,stateno != 3302
trigger3 		        = parent,movetype = H

;-------------------------------------------------------------------------
;Aura up (bba Attack)
[StateDef 8305]
type = S
movetype= I
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = -1
poweradd = 0;0
sprpriority = 2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 999
ignorehitpause = 1
;persistent =

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent, pos x
y = parent, pos y

[State 0, PalFXWiz]
type =  PalFX
trigger1 = Parent, Var(27) = 1
time = 999
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 1


[State 0, VarRandom]
type = VarRandom
trigger1 = 1
v = 0
range = 5,10

[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 0
value = .1*var(0)

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8300
ID = 8300
pos = 0-(random%20),-20-(random%60)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1
supermovetime = 999
pausemovetime = 999

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8301
ID = 8301
pos = 0+(random%20),-10-(random%60)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
ignorehitpause= 1
supermovetime = 999
pausemovetime = 999

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8302
ID = 8302
pos = 0-(random%10),0-(random%40)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1
supermovetime = 999
pausemovetime = 999

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8303
ID = 8303
pos = 10-(random%20),0-(random%50)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1
supermovetime = 999
pausemovetime = 999

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8304
ID = 8304
pos = 0+(random%20),-20-(random%60)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1
supermovetime = 999
pausemovetime = 999

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8305
ID = 8305
pos = 0-(random%20),-10-(random%60)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1
supermovetime = 999
pausemovetime = 999

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8306
ID = 8306
pos = 0+(random%10),0-(random%40)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1
supermovetime = 999
pausemovetime = 999

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8307
ID = 8307
pos = 15-(random%30),0-(random%50)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1
supermovetime = 999
pausemovetime = 999

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != 3302 
ignorehitpause = 1

;--------------------------------------------------------------------------
;Aura up (Intro)
[StateDef 8306]
type = S
movetype= I
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = -1
poweradd = 0;0
sprpriority = 2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 999
ignorehitpause = 1
;persistent =

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent, pos x
y = parent, pos y

[State 0, PalFXWiz]
type =  PalFX
trigger1 = Parent, Var(27) = 1
time = 999
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 1


[State 0, VarRandom]
type = VarRandom
trigger1 = 1
v = 0
range = 5,10

[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 0
value = .1*var(0)

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8300
ID = 8300
pos = 0-(random%20),-20-(random%60)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8301
ID = 8301
pos = 0+(random%20),-10-(random%60)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8302
ID = 8302
pos = 0-(random%10),0-(random%40)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8303
ID = 8303
pos = 10-(random%20),0-(random%50)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8304
ID = 8304
pos = 0+(random%20),-20-(random%60)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8305
ID = 8305
pos = 0-(random%20),-10-(random%60)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8306
ID = 8306
pos = 0+(random%10),0-(random%40)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8307
ID = 8307
pos = 15-(random%30),0-(random%50)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno = 0 || parent, stateno = 197 && time = 200
ignorehitpause = 1

;--------------------------------------------------------------------------
;Aura up (Intro)
[StateDef 8307]
type = S
movetype= I
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = -1
poweradd = 0;0
sprpriority = 2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 999
ignorehitpause = 1
;persistent =

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent, pos x
y = parent, pos y

[State 0, PalFXWiz]
type =  PalFX
trigger1 = Parent, Var(27) = 1
time = 999
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 1


[State 0, VarRandom]
type = VarRandom
trigger1 = 1
v = 0
range = 5,10

[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 0
value = .1*var(0)

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8300
ID = 8300
pos = 0-(random%20),-20-(random%60)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8301
ID = 8301
pos = 0+(random%20),-10-(random%60)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8302
ID = 8302
pos = 0-(random%10),0-(random%40)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8303
ID = 8303
pos = 10-(random%20),0-(random%50)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8304
ID = 8304
pos = 0+(random%20),-20-(random%60)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8305
ID = 8305
pos = 0-(random%20),-10-(random%60)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8306
ID = 8306
pos = 0+(random%10),0-(random%40)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8307
ID = 8307
pos = 15-(random%30),0-(random%50)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 925 || parent, stateno = 0
ignorehitpause = 1

;---------------------------------------------------------------------------
;Slow down
[Statedef 8405]
type                    = U
movetype                = U
physics                 = U
anim                    = 90
velset                  = 0,0
ctrl                    = 0
poweradd                = 0
juggle                  = 0
facep2                  = 0
hitdefpersist           = 0
movehitpersist          = 0
hitcountpersist         = 0
sprpriority             = 5
;---------------

[State 0: Pause]
type                    = Pause
triggerall              = 1
trigger1                = gametime%2 = 0
time                    = 1

[State 0:        DestroySelf]
type 			        = DestroySelf
trigger1 		        = Time = 100
trigger2 		        = parent,stateno != 195
trigger3 		        = parent,movetype = H

;---------------------------------------------------------------------------


