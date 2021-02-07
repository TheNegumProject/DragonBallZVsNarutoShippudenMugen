;===========================================================================
;===========================================================================
;BasicsStateFile
;===========================================================================
;===========================================================================
;VAR
;1=Used
;2=HiJump
;3=AirDash
;4=0
;5=Walking
;6=Transformation
;8= Sayajin Charge Elbow
;9=sayjin strike
;13=kiblast combo limit (statedef 1300)
;20 charge attacks
;21 Gut check 
;25= Dissappearing 
;26= Aura power (Disabled)
;27 = palfx aura (manga palette)
;55 = juggle system (nulled)
; FVARS
; 10-13=DAMAGE DAMPNER

;SoundChannelsinuse:

;1=AttackFX
;2=Voice
;3=Walk
;4=Powerup

;---------------------------------------------------------------------------
; Lose by Time Over
[Statedef 170]
type = S
ctrl = 0
anim = 180 + Var(6)
velset = 0,0

[State 0, ]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win state decider
[Statedef 180]
type = S

[State 0, 0]
type = ChangeState
Triggerall = !MatchOver = 1
trigger1 = !Time
value = Ifelse (random<500, Ifelse (random<500, 181, 182), 183)

[State 0, 0]
type = ChangeState
trigger1 = MatchOver = 1
value = 183

;---------------------------------------------------------------------------
; Win pose 1
[Statedef 181]
type = S
ctrl = 0
anim = 180 + Var(6)
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S182,0
volumescale = 255



[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time < 150
flag = RoundNotOver
ignorehitpause = 1
persistent = 1

;---------------

[State 0, ]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win pose 2
[Statedef 182]
type = S
ctrl = 0
anim = 181 + Var(6)
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S190,1
volumescale = 255



[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time < 160
flag = RoundNotOver
ignorehitpause = 1
persistent = 1

;---------------

[State 0, ]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win pose 3 revert
[Statedef 183]
type = S
ctrl = 0
anim = 182 + Var(6)
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = S182,1
volumescale = 255

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 29
value = 700, 0
volume = 255


[State 0, PalFXWiz]
type 				    = AllPalFX
;trigger1 			    = animelemtime(52) = 82
trigger1                          =  time = 29
time 				    = 10
add 				    = 256,256,256
mul 				    = 256,256,256
sinadd 			        = 200,200,256,150
invertall 			    = 0
color 			        = 256


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time < 296
flag = RoundNotOver
ignorehitpause = 1
persistent = 1

;---------------

[State 0, ]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;-------------------------------------------------------------------------
; PREINTRO
[Statedef 190]
type = S
ctrl = 0
velset = 0,0

[State 0, ]
type = ChangeState
trigger1 = !time
value = Ifelse (random<500, Ifelse (random<500, 191, 192), 196)

;---------------------------------------------------------------------------
; PREINTRO - Intro 1 WAITING (SSJ Mode)
[Statedef 191]
type = S
movetype = I
physics = N
anim = 191 + Var(6)
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 0
facep2 = 0
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0
sprpriority = 1
;---------------

[State 0, Intro]
type = AssertSpecial
trigger1 = (1)
flag = Intro
flag2		    = NoMusic
ignorehitpause = 1

[State 0, ]
type = ChangeState
trigger1 = ID < Enemy,ID
value = Ifelse (random<500, Ifelse (random<500, 193, 194), 193)

[State 0, ]
type = ChangeState
trigger1 = Enemy, stateno = 0 
trigger2 = Enemy, Anim = 0 && enemy, animelemtime(1) >=0
value = Ifelse (random<500, Ifelse (random<500, 193, 194), 194)

;---------------------------------------------------------------------------
; PREINTRO - Intro 2 WAITING (Normal mode)
[Statedef 192]
type = S
movetype = I
physics = N
anim = 192 + Var(6)
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 0
facep2 = 0
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0
sprpriority = 1
;---------------

[State 0, Intro]
type = AssertSpecial
trigger1 = (1)
flag = Intro
ignorehitpause = 1


[State 0, ]
type = ChangeState
trigger1 = ID < Enemy,ID
value = 195; Ifelse (random<500, Ifelse (random<500, 192, 195), 193)

[State 0, ]
type = ChangeState
trigger1 = Enemy, stateno = 0
value = 195;Ifelse (random<500, Ifelse (random<500, 192, 195), 193)

;---------------------------------------------------------------------------
; Intro
[Statedef 193]
type = S
movetype = I
physics = N
anim = 193 + Var(6)
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 0
facep2 = 0
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0
sprpriority = 1

;---------------

[State 0, Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro
ignorehitpause = 1
flag2		    = NoMusic

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time = 10
value = 190, 0
channel = 1
volume = 255

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4, 10
value = 190, 1
channel = 1
volume = 255

[State 0, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------
; Intro  - Come at me with full power understand?
[Statedef 194]
type = S
movetype = I
physics = N
anim = 194 + Var(6)
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 0
facep2 = 0
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0
sprpriority = 1

;---------------

[State 0, Intro]
type = AssertSpecial
trigger1 = 1
flag      = Intro
flag2	= NoMusic
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 190, 2
channel = 1
volume = 255



[State 0, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-------------------------------------------------------------------------
; Intro  - I'm going to show you the overwhelming power of a saiyan elite (going ssj)
[Statedef 195]
type = S
movetype = I
physics = N
anim = 195 + Var(6)
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 0
facep2 = 0
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0
sprpriority = 1

;---------------

[State 0, Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro
ignorehitpause = 1
flag2		    = NoMusic


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 190, 5
channel = 1
volume = 255


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(50) = 1
value = 215, 1
channel = 1
volume = 255

[State 0, ]
type                    = PlaySnd ;rumble
trigger1                = animelem = 51
value                   = 700, 2
volumescale                  = 70
channel = 2
loop = 1

[State 0, PlaySnd]
type = null; PlaySnd
trigger1 = animelem = 49 
value = S3400,2
volumescale = 180
channel = 3
Loop = 1 



[State 0:     PlaySND]
type                    =  PlaySnd
trigger1                = AnimElem = 53  ; aura woosh
value                   = 700, 1
volumescale                  = 70
channel = 2
loop  = 1


[State 0:       EnvShake]
type 			        =  EnvShake
Triggerall              = AnimElemtime(51) >= 5
trigger1 		        = gametime%2
time 			        = 5
freq 			        = 40
ampl 			        = 7

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  animelemtime(52) = 1
value = 210, 7
channel = 1
volume = 255

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  animelemtime(52) = 79
trigger2 = !animtime
value = 700, 0
volume = 255


[State 0, Helper]
type = Helper
trigger1   = animelem = 53
helpertype = normal ;player
name = "flamesup"
ID = 8306
stateno = 8306
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
trigger1 = AnimElemtime(52)= 60
anim = 8110
ID =   8142
pos = 8,0
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
trigger1 = AnimElemtime(52)= 79
trigger2 = !animtime
anim = 7034
ID =   8142
pos = 8,-60
scale = 1.2, 1.2
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
trigger1 = AnimElemtime(52)= 79
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


[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = stateno != 195 
id = 8142
;ignorehitpause = 
persistent = 1


[State 0, PalFXWiz]
type 				    = AllPalFX
;trigger1 			    = animelemtime(52) = 82
trigger1                          = !animtime
time 				    = 7
add 				    = 200,200,256
mul 				    = 200,200,256
sinadd 			        = 200,200,256,150
invertall 			    = 0
color 			        = 256




[State 0, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-------------------------------------------------------------------------
; Intro Flying down
[Statedef 196]
type                    = A
movetype                = I
physics                 = N
anim                    = 196
velset                  = 0,0
ctrl                    = 0
poweradd                = 0
juggle                  = 0
facep2                  = 0
hitdefpersist           = 0
movehitpersist          = 0
hitcountpersist         = 0
sprpriority             = 1

[State 0:     Intro]
type                    = AssertSpecial
trigger1                = (1)
flag                    = Intro
flag2		    = NoMusic

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time 
value = S8900,0
volumescale = 255
channel = 3

[State 0:     PlaySND]
type                    =  PlaySnd
trigger1                = !time  ; aura woosh
value                   = 700, 1
volumescale             = 60               
channel = 2
loop  = 1




[State 0: ScreenBound]
type                    = ScreenBound
trigger1                = 1
value                   = 0



[State 0, Helper]
type = Helper
trigger1   = !time
helpertype = normal ;player
name = "flamesup"
ID = 8306
stateno = 8307
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = .7
size.yscale = 1.4


[State 0: PosSet]
type                    = PosSet
trigger1                = !Time
y                       = -250


[State 0: VelSet]
type                    = VelSet
trigger1                = !Time
y                       = .5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 350
value = S100,0


[State 0: VelSet]
type                    = VelSet
trigger1                = time = 350
y                       = .2



[State 0:       GroundWaves]
type                    = Explod
trigger1                = Time = 350
anim                    = 8110
ID                      = 8110
pos                     = 0,ifelse(pos Y < 0,floor(0-Pos Y),0)
removetime              = -1
sprpriority             = -2
ownpal                  = 1
removeongethit          = 1
scale                   = 1,1





;---------------

[State 0:     End]
type                    = ChangeState
trigger1                = Pos Y >= 0
value                   = 197
ctrl                    = 1

;-------------------------------------------------------------------------------
;Land "Hmph"
[Statedef 197]
type = S
ctrl = 0
anim = 197
velset = 0,0


[State 0:     Intro]
type                    = AssertSpecial
trigger1                = (1)
flag                    = Intro
flag2		   = NoMusic

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 15
value = S190,1
channel = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 =(!time)
value = S52,0
channel = 6

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 200
value = 700, 0
volume = 255


[State 0, PalFXWiz]
type 				    = AllPalFX
;trigger1 			    = animelemtime(52) = 82
trigger1                          =  time = 200
time 				    = 10
add 				    = 200,200,256
mul 				    = 200,200,256
sinadd 			        = 200,200,256,150
invertall 			    = 0
color 			        = 256


[State 191, 5]
type = ChangeState
trigger1 = animtime = 0
value = 0

[State 0: RemoveExplod]
type                    = RemoveExplod
trigger1                = !Time
ID                      = 8110
;-------------------------------------------------------------------------
;taunt
[statedef 198, Taunt]
type = S
ctrl = 0
movetype = I
anim = 170 + Var(6)
physics = S
Sprpriority = 2


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(3) = 10
value = S190,1
volumescale = 255
channel = 5



[State 0, ChangeState]
type = ChangeState
trigger1 = !animtime 
value = 0
ctrl = 1
;anim =
;ignorehitpause = 
;persistent = 
;------------------------------------------------------------------------


;Standing light attack
[StateDef 200]
type = S
movetype= A
physics = S
juggle = 2
velset = 2,0
ctrl = 0
anim = 200+var(6)
poweradd = 40;20
sprpriority = 2


[State 0, ]
type = PlaySnd
trigger1 = !time
value = 200,0
volume = 255
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 400
value = ifelse(random > 500,210,-1),ifelse(random > 500,0,ifelse(random > 500,1,2))
volume = 255
channel = 2

;S IfElse(random<500,IfElse(random<500,7100,7101),IfElse(random<500,7102,7103))

[State 0, ]
type = HitDef
triggerall = !var(55)
trigger1 = AnimElem = 3
attr = S, NA
damage = 10
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9, 9
sparkno = S8000+(random%10)
guard.sparkno = S8020+(random%2)
sparkxy = -10, -58
hitsound = S301, 1
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
air.type = High
air.hittime = 12
air.velocity = -1,-1
airguard.velocity = -2,0
getpower = 20
givepower = 10

[State 0, ]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
;--------------------------------------------------------------------------
;Standing light attack (close)
[StateDef 201]
type = S
movetype= A
physics = S
juggle = 2
velset = 2,0
ctrl = 0
anim = 201+var(6)
poweradd = 20
sprpriority = 2




[State 0, ]
type = PlaySnd
trigger1 = !time
value = 200,0
volume = 255
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 400
value = ifelse(random > 500,210,-1),ifelse(random > 500,0,ifelse(random > 500,1,2))
volume = 255
channel = 2

[State 0, ]
type = HitDef
triggerall = !var(55)
trigger1 = AnimElem = 4
attr = S, NA
damage = 11
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9, 9
sparkno = S8000+(random%10)
guard.sparkno = S8020+(random%2)
sparkxy = -10, -58
hitsound = S300, 0
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
air.type = Low
air.hittime = 12
air.velocity = -1,-1
airguard.velocity = -2,0
getpower = 20
givepower = 10

[State 0, ]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
;--------------------------------------------------------------------------
;Standing light attack 2
[StateDef 202]
type = S
movetype= A
physics = S
juggle = 3
velset = 3,0
ctrl = 0
anim = 202+var(6)
poweradd = 30
sprpriority = 2

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 200,1
volume = 255
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 400
value = ifelse(random > 500,210,-1),ifelse(random > 500,0,ifelse(random > 500,1,2))
volume = 255
channel = 2

[State 0, ]
type = HitDef
triggerall = !var(55)
trigger1 = AnimElem = 3
attr = S, NA
damage = 25
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 11, 11
sparkno = S8000+(random%10)
guard.sparkno = S8020+(random%2)
sparkxy = -10, -58
hitsound = S301, 0
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type = High
ground.slidetime = 5
ground.hittime  = 14
ground.velocity = -4
air.type = High
air.hittime = 14
air.velocity = -1,-1
airguard.velocity = -2,0
getpower = 20
givepower = 10

[State 0, ]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------
;Standing light attack 3
[StateDef 203]
type = S
movetype= A
physics = S
juggle = 3
velset = 3,0
ctrl = 0
anim = 212+var(6)
poweradd = 20
sprpriority = 2

[State 0, ]
type = PlaySnd
trigger1 = AnimElem = 1
value = 200,1
volume = 255
channel = 2

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 600
value = ifelse(random > 500,210,210),ifelse(random > 500,4,2)
volume = 255
channel = 2

[State 0, ]
type = HitDef
triggerall = !var(55)
trigger1 = AnimElem = 3
attr = S, NA
damage = 15
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = S8000+(random%10)
guard.sparkno = S8020+(random%2)
sparkxy = -20, -46
hitsound = S300, 4
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 0, 1))
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
Air.Fall = 0
air.type = Low
air.hittime = 15
air.velocity = -3,-4
airguard.velocity = -3,-1
getpower = 20
givepower = 10

[State 0, ]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
;--------------------------------------------------------------------------
;Standing hard attack 1 (right kick)
[StateDef 210]
type = S
movetype= A
physics = S
juggle = 3
velset = 2,0
ctrl = 0
anim = 210+var(6)
poweradd = 25
sprpriority = 2

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 200,4
volume = 255
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 600
value = ifelse(random > 500,210,210),ifelse(random > 500,4,2)
volume = 255
channel = 2

[State 0, ]
type = HitDef
triggerall = !var(55)
trigger1 = AnimElem = 3
attr = S, NA
damage = 30
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 13, 13
sparkno =S8010+(random%10)
guard.sparkno = S8022+(random%2)
sparkxy = -20, -76
hitsound = S300, 4
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 0, 1))
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
Air.Fall = 0
air.type = High
air.hittime = 25
air.velocity = -3,-4
airguard.velocity = -3,-1
getpower = 20
givepower = 10
;ground.cornerpush.veloff = 0
air.cornerpush.veloff = 1



[State 0, ]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------
;Standing hard attack 1 (close)
[StateDef 211]
type = S
movetype= A
physics = S
juggle = 3
velset = 6,0
ctrl = 0
anim = 211+var(6)
poweradd = 30
sprpriority = 2

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 200,1
volume = 255
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 600
value = ifelse(random > 500,210,210),ifelse(random > 500,4,2)
volume = 255
channel = 2

[State 0, ]
type = HitDef
triggerall = !var(55)
trigger1 = AnimElem = 2
attr = S, NA
damage = 31
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 13, 13
sparkno =S8010+(random%10)
guard.sparkno = S8020+(random%2)
sparkxy = -10, -56
hitsound = S300, 4
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 0, 1))
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -7
Air.Fall = 0
air.type = Low
air.hittime = 25
air.velocity = -3,-4
airguard.velocity = -3,-1
getpower = 20
givepower = 10

[State 0, ]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
;--------------------------------------------------------------------------
;Standing hard attack 2 (close)
[StateDef 212]
type = S
movetype= A
physics = S
juggle = 3
velset = 0,0
ctrl = 0
anim = 207+var(6)
poweradd = 30
sprpriority = 2


[State 0, Explod]
type = Explod
trigger1 = var(20) = 2
anim = 8450
ID = 8450
pos = 4,-59
postype = p1  ;p2,front,back,left,right
bindtime = -1
scale = .8,.8
sprpriority = 1
ignorehitpause = 0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, VarSet]
type = VarSet
trigger1 = !time
trigger2 = command != "holdy"
v = 20
value = 0

[State 0, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 6
y = 0

[State 0, VarAdd]
type = VarAdd
trigger1 = (AnimElem = 1,2) && (command = "holdy") && (var(20) < 15)
v = 20
value = 1
ignorehitpause = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = (AnimElem = 1,2) && (command = "holdy") && (var(20) < 15)
value = Anim
elem = 1
ignorehitpause = 1


[State 0, ]
type = PlaySnd
trigger1 = var(20)=2 && AnimElem = 1,1
value = 203,0
volume = 255
channel = 1
ignorehitpause = 1

[State 0, PalFXWiz]
type = PalFX
trigger1 = var(20)=15 && AnimElem = 1,2
time = 12
add = 0,0,256
mul = 256,256,256
sinadd = 0,0,256,12
invertall = 0
color = 256
ignorehitpause = 1
;persistent = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = var(20)=15
flag = unguardable
ignorehitpause = 1

[State 0, ]
type = PlaySnd
trigger1 = AnimElem = 1, 3
value = 200,3
volume = 255
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 400
value = ifelse(random > 500,210,-1),ifelse(random > 500,0,ifelse(random > 500,1,2))
volume = 255
channel = 2

[State 0, ]
type = HitDef
triggerall = !var(55)
trigger1 = AnimElem = 3
attr = S, NA
damage = 25+var(20), 0
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 13+5*(var(20)=15), 13 +15*(var(20)=15)
sparkno =S8010+(random%10)
guard.sparkno = S8020+(random%2)
sparkxy = -10, -48
hitsound = S300, 3
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5,0
air.type = Low
air.hittime = 15
air.velocity = -2,-3
airguard.velocity = -2,0
getpower = 20
givepower = 10
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6

[State 0, ]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;--------------------------------------------------------------------------
;Standing hard attack 3
[StateDef 213]
type = S
movetype= A
physics = S
juggle = 4
velset = 0
ctrl = 0
anim = 213+var(6)
poweradd = 30
sprpriority =2

[State 0, VelSet]
type = VelSet
trigger1 = AnimElem = 2,[1,5]
x = 5
y = 0


[State 0, ]
type = PlaySnd
trigger1 = AnimElem = 1
value = 200,2
volume = 255
channel = 2

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 600
value = ifelse(random > 500,210,210),ifelse(random > 500,4,2)
volume = 255
channel = 2

[State 0, ]
type = HitDef
triggerall = !var(55)
trigger1 = AnimElem = 3
attr = S, NA
damage = 32, 0
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 13, 13
sparkno =S8010+(random%10)
guard.sparkno = S8020+(random%2)
sparkxy = -20, -66
hitsound = S300, 3
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 0, 1))
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -9
Air.Fall = 0
air.type = High
air.hittime = 15
air.velocity =-6,-3
airguard.velocity = -4,-2
getpower = 20
givepower = 10
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6

[State 0, ]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;--------------------------------------------------------------------------
;DashKick
[StateDef 230]
type = S
movetype= A
physics = S
juggle = 2
;velset = 12
ctrl = 0
anim = 230+var(6)
poweradd = 30
sprpriority =2

[State 0, Turn]
type = Turn
triggerall = !time
trigger1 = P2Dist X < 0

[State 0, ]
type = Explod
trigger1 = !time
anim = 8100
ID = 8100
pos = -20,0
facing = 1
scale = 1,1
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 0, VelSet]
type = VelSet
trigger1 = AnimElem = 2<,1
x = 12
y = 0

[State 0, ]
type = PlaySnd
trigger1 = AnimElem = 1
value = 200,2
volume = 255
channel = 2

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 600
value = ifelse(random > 500,210,210),ifelse(random > 500,4,2)
volume = 255
channel = 2

[State 0, ]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 48, 0
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 15, 15
sparkno =S8010+(random%10)
guard.sparkno = S8022+(random%2)
sparkxy = -10, -47
hitsound = S203, 1
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type = Low
ground.slidetime = 35
ground.hittime  = 35
ground.velocity = -14,-4
p2stateno = 6000
Fall = 1
air.type = Low
air.hittime = 35
air.velocity = -14,-4
airguard.velocity = -4.5,0
getpower = 0;30
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
yaccel = .2

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
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1
;--------------------------------------------------------------------------
;Punt kick
[StateDef 220]
type = S
movetype= A
physics = S
juggle = 5
;velset = 0,0
ctrl = 0
anim = 221
poweradd = 50
sprpriority = 2

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = prevstateno = 100 && !time
value = 221
elem = 2
;ignorehitpause =
;persistent =



[State 0, ]
type = Explod
triggerall = pos Y >= 0 && prevstateno != 100
trigger1 = AnimElem = 2
anim = 8100
ID = 8100
pos = 0,0
facing = 1
scale = 1,1
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 0, ]
type = AfterImage
trigger1 = AnimElem = 3
time = 22
length = 4
palbright = 10,10,10
palcontrast = 120,120,120
paladd = 0,0,0
palmul = 1,1,1
timegap = 2
framegap = 3
trans = Add

 [State 0, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 4+6*(prevstateno=100)
y = -4.9

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 3
statetype = A
movetype = A
physics = A

[State 0, VelMul]
type = Veladd
trigger1 = AnimElem = 5,>5
y = .3
;ignorehitpause =
;persistent =



[State 0, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 200,3
volume = 255
channel = 1

[State 0, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 210,2
volume = 255
channel = 2

[State 0, ]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
damage = 35
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 15, 15
sparkno =S8010+(random%10)
guard.sparkno = S8020+(random%2)
sparkxy = 0, -65
hitsound = S300, 2
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 0, 1))
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -12,-7
Fall = 1
air.type = High
air.hittime = 20
air.velocity = -4,-10
airguard.velocity = -3,0
getpower = 30
givepower = 10
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6


[State 0, ChangeState]
type = ChangeState
triggerall = Statetype = A
trigger1 = Pos Y>=0 && Vel Y >=0
value = 52
ctrl = 1

;-----------------------------------------------------------------------
;Knee Attack
[StateDef 221]
type = S
movetype= A
physics = N
juggle = 20
velset = 8,0
ctrl = 0
anim = 220
poweradd = 30
sprpriority = 2

[State 0, ]
type = AfterImage
trigger1 = AnimElem = 1
time = 25
length = 4
palbright = 10,10,10
palcontrast = 120,120,120
paladd = 0,0,0
palmul = 1,1,1
timegap = 2
framegap = 1
trans = Add

[State 0, VelSet]
type = VelSet
trigger1 = AnimElem = 1,4
x = 4

[State 0, VelSet]
type = VelSet
trigger1 = AnimElem = 2
y = -7

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 2,1
statetype = A
movetype = A
physics = A

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 50,1
volume = 255
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 400
value = ifelse(random > 500,210,-1),ifelse(random > 500,0,ifelse(random > 500,1,2))
volume = 255
channel = 2

[State 0, ]
type = Explod
trigger1 = AnimElem = 1,4
anim = 8101
ID = 8101
pos = -25,0
facing = 1
scale = 1,1
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 8613
ID = 8613
pos = 44,-73
postype = p1  ;p2,front,back,left,right
bindtime = 99
removetime = -2
scale = .75,.75
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 0, ]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
damage = 60
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 17, 17
sparkno =S8010+(random%10)
guard.sparkno = S8020+(random%2)
sparkxy = 0, -55
hitsound = S300, 4
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 0, 1))
ground.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -3,-10
Fall = 1
air.type = Low
air.hittime = 20
air.velocity = -3,-10
airguard.velocity = -3,0
getpower = 0;30
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6


[State 0, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 50
ctrl = 1

;--------------------------------------------------------------------------
;Launcher after stun
[StateDef 225]
type = S
movetype= A
physics = S
juggle = 6
velset = 0,0
ctrl = 0
anim = 225
poweradd = 30
sprpriority = 2

[State 225,Dust ]
type = null; Explod
triggerall = Animelemtime(5)>=1 && AnimElem = 6,<3
trigger1 = (time%6)=0
anim = 8100
ID = 8100
pos = 0,0-pos Y
facing = 1
scale = 1,.5
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 0

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 210,6
volume = 255
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = AnimElem = 3
value = 200,2
volume = 255
channel = 2

[State 0, ]
type = AfterImage
trigger1 = AnimElem = 4
time = 18
length = 11
palbright = 0,0,0
palcontrast = 120,120,120
paladd = 0,0,0
palmul = 1,1,1
timegap = 1
framegap = 2
trans = Add

[State 0, VelSet]
type = VelSet
trigger1 = AnimELemtime(5)=[1,4]
x = 7
y = 0

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
trigger1 = AnimElem = 5
attr = S, NA
damage = 48
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 15, 15
sparkno =S8010+(random%10)
guard.sparkno = S8022+(random%2)
sparkxy = -10, -47
hitsound = S203, 1
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type = Low
ground.slidetime = 35
ground.hittime  = 35
ground.velocity = -14,-4
p2stateno = 6000
Fall = 1
air.type = Low
air.hittime = 35
air.velocity = -14,-4
airguard.velocity = -4.5,0
getpower = 0;30
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
yaccel = .3

[State 0, ScreenBound]
type = ScreenBound
trigger1 = AnimElemtime(5)>=1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, ]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------
;Meteo Start 1 (Ground)
[StateDef 300]
type = S
movetype= A
physics = S
juggle = 2
velset = 0,0
ctrl = 0
anim = 300
poweradd = -250;30
sprpriority = -1

[State 0, VarAdd]
type = VarAdd
trigger1 = !time && var(3) <= 2
v = 3
value = 4


[State 0, ]
type = AfterImage
trigger1 = AnimElem = 2
time = 60
length = 4
palbright = 10,10,10
palcontrast = 120,120,120
paladd = 0,0,0
palmul = 1,1,1
timegap = 1
framegap = 1
trans = Add

[State 0, Pause]
type = Pause
trigger1 = (time%2)
time = 1
movetime = 1
pausebg = 0
ignorehitpause= -1
;persistent =

[State 0, EnvColor]
type = EnvColor
trigger1 = !time
value = 255,255,255
time = 2

[State 0, Explod Dust]
type = Explod
trigger1 = AnimElem = 1,1
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

[State 0, Explod Dust twirl]
type = Explod
trigger1 = AnimElem = 1,1
anim = 8141
ID =   8141
pos = 0,0
scale = .7, .7
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

[State 0, Voice]
type  = PlaySnd
trigger1 = !Time
value = ifelse(random > 500,210,-1),ifelse(random > 500,5,6)
channel = 0
volume = 255

[State 0, Dash]
type = PlaySnd
trigger1 = !Time
value = 240, 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, Width]
type = Width
trigger1 = 1
edge = -10,-10
player = 0,0


[State 0: VelSet]
type = VelSet
trigger1 = AnimELem = 2,>1
x = ifelse(P2BodyDist X < 0,12, 12+abs(P2BodyDist x*.1))
y = 0


[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A       ;S,A,C,L
physics = A         ;A,C,S,N
;ignorehitpause =
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 = P2BodyDist x < -30-Vel X
value = 301
ctrl = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 60
value = 101
ctrl = 1


;--------------------------------------------------------------------------
;Meteo Attack 1
[StateDef 301]
type = C
movetype= A
physics = C
juggle  = 0
;velset = 3,0
ctrl = 0
anim = 301
poweradd = 0;20
sprpriority = -1

[State 0, Turn]
type = Turn
trigger1 = !time

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 50,1
volume = 255
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 400
value = ifelse(random > 500,210,-1),ifelse(random > 500,0,ifelse(random > 500,1,2))
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
trigger1 = !time
attr = C, NA
damage = 40
animtype = Back
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 15, 15
sparkno =S8010+(random%10)
guard.sparkno = S8020+(random%2)
sparkxy = 0, -55
hitsound = S300, 4
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 0, 1))
ground.type = Low
ground.slidetime = 10
ground.hittime  = 17
ground.velocity = 0,-13
fall = 1
air.type = Low
air.hittime = 17
air.velocity = 0,-13
airguard.velocity = -2,0
getpower = 0;20
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6

[State 0, ]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;--------------------------------------------------------------------------
;Meteo Start 2 (up)
[StateDef 302]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 302
poweradd = -250;30
sprpriority = -1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A
physics = A

[State 0, ]
type = AfterImage
trigger1 = AnimElem = 2
time = 60
length = 4
palbright = 10,10,10
palcontrast = 120,120,120
paladd = 0,0,0
palmul = 1,1,1
timegap = 1
framegap = 1
trans = Add

[State 0, Pause]
type = Pause
trigger1 = (time%2)
time = 1
movetime = 1
pausebg = 0
ignorehitpause= -1
;persistent =

[State 0, EnvColor]
type = EnvColor
trigger1 = !time
value = 255,255,255
time = 2

[State 0, Explod Dust]
type = Explod
trigger1 = AnimElem = 1,1
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

[State 0, Explod Dust twirl]
type = Explod
trigger1 = AnimElem = 1,1
anim = 8141
ID =   8141
pos = 0,0
scale = .7, .7
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
trigger1 = !time
helpertype = normal ;player
name = "flamesup"
ID = 8302
stateno = 8302
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999

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

[State 0, Voice]
type  = PlaySnd
trigger1 = !Time
value = ifelse(random > 500,210,-1),ifelse(random > 500,5,6)
channel = 0
volume = 255

[State 0, Dash]
type = PlaySnd
trigger1 = !Time
value = 240, 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, Width]
type = Width
trigger1 = 1
edge = -10,-10
player = 0,0



[State 0: VelSet]
type = VelSet
trigger1 = AnimELem = 2,>1
x = 0
y = ifelse(P2BodyDist Y < 0,-12, -12-abs(P2BodyDist Y*.1))

[State 0, ChangeState]
type = ChangeState
triggerall = AnimELem = 2,>1
trigger1 = P2BodyDist Y-10 > 0 + Vel Y
value = 303
ctrl = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 60
value = 101
ctrl = 1

;--------------------------------------------------------------------------
;Meteo Attack 2
[StateDef 303]
type = A
movetype= A
physics = A
juggle  = 0
;velset = 3,0
ctrl = 0
anim = 303
poweradd = 0;20
sprpriority = 2

[State 0, VelMul]
type = VelMul
trigger1 = AnimElem = 4,<1
x = 1
y = .9
;ignorehitpause =
;persistent =


[State 0, ]
type = PlaySnd
trigger1 = !time
value = 50,1
volume = 255
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 400
value = ifelse(random > 500,210,-1),ifelse(random > 500,0,ifelse(random > 500,1,2))
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
trigger1 = !time
attr = S, NA
damage = 48
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 15, 15
sparkno =S8010+(random%10)
guard.sparkno = S8022+(random%2)
sparkxy = -10, -47
hitsound = S203, 1
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type = Low
ground.slidetime = 35
ground.hittime  = 35
ground.velocity = -14,-4
p2stateno = 6000
Fall = 1
air.type = Low
air.hittime = 35
air.velocity = -14,-4
airguard.velocity = -4.5,0
getpower = 0;30
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
yaccel = .2

;--------------------------------------------------------------------------
;Meteo Start 3 (Air)
[StateDef 304]
type = A
movetype= A
physics = A
juggle = 0
velset = 0,0
ctrl = 0
anim = 300
poweradd = -250;30
sprpriority = -1

[State 0, ]
type = AfterImage
trigger1 = AnimElem = 2
time = 60
length = 4
palbright = 10,10,10
palcontrast = 120,120,120
paladd = 0,0,0
palmul = 1,1,1
timegap = 1
framegap = 1
trans = Add

[State 0, Pause]
type = Pause
trigger1 = (time%2)
time = 1
movetime = 1
pausebg = 0
ignorehitpause= -1
;persistent =

[State 0, EnvColor]
type = EnvColor
trigger1 = !time
value = 255,255,255
time = 2

[State 0, Explod Dust]
type = Explod
trigger1 = AnimElem = 1,1
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

[State 0, Explod Dust twirl]
type = Explod
trigger1 = AnimElem = 1,1
anim = 8141
ID =   8141
pos = 0,0
scale = .7, .7
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

[State 0, Voice]
type  = PlaySnd
trigger1 = !Time
value = ifelse(random > 500,210,-1),ifelse(random > 500,5,6)
channel = 0
volume = 255

[State 0, Dash]
type = PlaySnd
trigger1 = !Time
value = 240, 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, Width]
type = Width
trigger1 = 1
edge = -10,-10
player = 0,0


[State 0: VelSet]
type = VelSet
trigger1 = AnimELem = 2,>1
x = ifelse(P2BodyDist X < 0,12, 12+abs(P2BodyDist x*.1))
y = target, Vel Y


[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A       ;S,A,C,L
physics = A         ;A,C,S,N
;ignorehitpause =
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 = P2BodyDist x < -30-Vel X
value = 305
ctrl = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 60
value = 101
ctrl = 1


;--------------------------------------------------------------------------
;Meteo Attack 3
[StateDef 305]
type = A
movetype= A
physics = A
juggle  = 0
;velset = 3,0
ctrl = 0
anim = 305
poweradd = 0;20
sprpriority = -1

[State 0, VelMul]
type = VelMul
trigger1 = AnimElem = 3,>1
x = .85
y = 1

[State 0, VelSet]
type = VelSet
trigger1 = time =0
y = 0
;ignorehitpause = 
;persistent = 


[State 0, Turn]
type = Turn
trigger1 = !time

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 50,1
volume = 255
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 400
value = ifelse(random > 500,210,-1),ifelse(random > 500,0,ifelse(random > 500,1,2))
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
damage = 48
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 25, 15
sparkno = S8010+(random%10)
guard.sparkno = S8022+(random%2)
sparkxy = -10, -47
hitsound = S203, 1
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type = Low
ground.slidetime = 35
ground.hittime  = 35
ground.velocity = -2,14
p2stateno = 6000
Fall = 1
air.type = Low
air.hittime = 35
air.velocity = -9,14
airguard.velocity = -2,0
getpower = 0;30
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6

[State 0, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 50
ctrl = 1
;anim =
;ignorehitpause = 
;persistent = 


;--------------------------------------------------------------------------
;Crouch light attack 1
[StateDef 400]
type = C
movetype= A
physics = C
juggle = 2
velset = 0,0
ctrl = 0
anim = 400
poweradd = 20
sprpriority = 2

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 200,0
volume = 255
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 400
value = ifelse(random > 500,210,-1),ifelse(random > 500,0,ifelse(random > 500,1,2))
volume = 255
channel = 2

[State 0, ]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage = 11
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 12
sparkno = S8000+(random%10)
guard.sparkno = S8020+(random%2)
sparkxy = -10, -45
hitsound = S301, 1
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -1
air.type = Low
air.hittime = 12
air.velocity = -1,1
airguard.velocity = -2,0
getpower = 20
givepower = 10

[State 0, ]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;--------------------------------------------------------------------------
;Crouch light attack 1
[StateDef 401]
type = C
movetype= A
physics = C
juggle = 2
velset = 0,0
ctrl = 0
anim = 403
poweradd = 20
sprpriority = 2

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 200,0
volume = 255
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 400
value = ifelse(random > 500,210,-1),ifelse(random > 500,0,ifelse(random > 500,1,2))
volume = 255
channel = 2

[State 0, ]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage = 12
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 12
sparkno = S8000+(random%10)
guard.sparkno = S8020+(random%2)
sparkxy = -10, -45
hitsound = S301, 1
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -1
air.type = Low
air.hittime = 12
air.velocity = -1,1
airguard.velocity = -2,0
getpower = 20
givepower = 10

[State 0, ]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;--------------------------------------------------------------------------
;Crouch light attack 1
[StateDef 405]
type = C
movetype= A
physics = C
juggle = 2
velset = 0,0
ctrl = 0
anim = 401
poweradd = 20
sprpriority = 2

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 200,0
volume = 255
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 400
value = ifelse(random > 500,210,-1),ifelse(random > 500,0,ifelse(random > 500,1,2))
volume = 255
channel = 2

[State 0, ]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage = 20
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9, 9
sparkno = S8000+(random%10)
guard.sparkno = S8020+(random%2)
sparkxy = -10, -25
hitsound = S301, 1
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -2
air.type = Low
air.hittime = 12
air.velocity = -1,1
airguard.velocity = -2,0
getpower = 20
givepower = 10

[State 0, ]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;-------------------------------------------------------------------------
;Crouch hard attack 1
[StateDef 410]
type = C
movetype= A
physics = C
juggle  = 4
velset = 4,0
ctrl = 0
anim = 410
poweradd =  20
sprpriority = 2

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 50,0
volume = 255
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 400
value = ifelse(random > 500,210,-1),ifelse(random > 500,0,ifelse(random > 500,1,2))
volume = 255
channel = 2

[State 0, ]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage = 30
animtype = Diagup
guardflag = MA
hitflag = MAFD
priority = 4, Hit
pausetime = 13, 13
sparkno = S8010+(random%10)
guard.sparkno = S8020+(random%2)
sparkxy = -10, -8
hitsound = S300, 4
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 0, 1))
ground.type = Trip
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -.5,-4
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -14
down.cornerpush.veloff = -14
guard.cornerpush.veloff = 0
air.type = Trip
Fall = 1
air.hittime = 12
air.velocity = -5,-2
airguard.velocity = -2,0
getpower = 25
givepower = 10
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6

[State 0, ]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;--------------------------------------------------------------------------
;Launching kick attack
[StateDef 420]
type = C
movetype= A
physics = C
juggle  = 6
velset = 3,0
ctrl = 0
anim = 402
poweradd = 25
sprpriority = 2


[State 0, ]
type = PlaySnd
trigger1 = !time
value = 50,1
volume = 255
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 400
value = ifelse(random > 500,210,-1),ifelse(random > 500,0,ifelse(random > 500,1,2))
volume = 255
channel = 2

[State 0, ]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
ID                  = 425
nochainID           = 425
damage = 40
animtype = up
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 15, 15
sparkno =S8010+(random%10)
guard.sparkno = S8020+(random%2)
sparkxy = 0, -55
hitsound = S300, 4
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 0, 1))
ground.type = Low
ground.slidetime = 10
ground.hittime  = 17
ground.velocity = -4,-10
fall = 1
air.type = Low
air.hittime = 17
air.velocity = -4,-10
airguard.velocity = -2,0
getpower = 25
givepower = 10
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6

[State 0, ]
type = ChangeState
trigger1 = movehit && command = "holdup"
value = 40
ctrl = 1

[State 0, ]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1
;--------------------------------------------------------------------------
;Uppercut
[StateDef 425]
type = C
movetype= A
physics = C
juggle  = 5
velset = 3,0
ctrl = 0
anim = 405
poweradd = 25
sprpriority = 2


[State 0, ]
type = PlaySnd
trigger1 = !time
value = 50,1
volume = 255
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 400
value = ifelse(random > 500,210,-1),ifelse(random > 500,0,ifelse(random > 500,1,2))
volume = 255
channel = 2

[State 0, ]
type = HitDef
trigger1 = AnimElem = 4
attr = C, NA
damage = 45
animtype = back
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 15, 15
sparkno =S8010+(random%10)
guard.sparkno = S8020+(random%2)
sparkxy = 0, -55
hitsound = S300, 4
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 0, 1))
ground.type = Low
ground.slidetime = 10
ground.hittime  = 17
ground.velocity = 0,-8
fall = 1
air.type = Low
air.hittime = 17
air.velocity = 0,-10
airguard.velocity = -2,0
getpower = 25
givepower = 10
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6

[State 0, ]
type = ChangeState
trigger1 = movehit && command = "holdup"
value = 40
ctrl = 1

[State 0, ]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1
;--------------------------------------------------------------------------
;Jumping light attack 1
[StateDef 600]
type = A
movetype= A
physics = A
juggle = 0
;velset = 0,0
ctrl = 0
anim = 600
poweradd = 20
sprpriority = 2

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 200,1
volume = 255
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 400
value = ifelse(random > 500,210,-1),ifelse(random > 500,0,ifelse(random > 500,1,2))
volume = 255
channel = 2

[State 0, ]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
damage = 25
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9, 9
sparkno =S8010+(random%10)
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 0, 1))
guard.sparkno = S8020+(random%2)
sparkxy = -10, -32
hitsound = S300, 1
guardsound = S2,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
air.type = High
air.hittime = 12
air.velocity = -1,Vel Y
airguard.velocity = -2,0
getpower = 20
givepower = 10

[State 0, ]
type = ChangeState
trigger1 = !AnimTime
value = 50
ctrl = 1
;--------------------------------------------------------------------------
;Jumping light attack 1
[StateDef 601]
type = A
movetype= A
physics = A
juggle = 0
;velset = 0,0
ctrl = 0
anim = 601
poweradd = 20
sprpriority = 2

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 200,1
volume = 255
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 400
value = ifelse(random > 500,210,-1),ifelse(random > 500,0,ifelse(random > 500,1,2))
volume = 255
channel = 2

[State 0, ]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
damage = 25
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9, 9
sparkno =S8010+(random%10)
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 0, 1))
guard.sparkno = S8020+(random%2)
sparkxy = -10, -32
hitsound = S300, 1
guardsound = S2,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
air.type = High
air.hittime = 12
air.velocity = -1,Vel Y
airguard.velocity = -2,0
getpower = 20
givepower = 10

[State 0, ]
type = ChangeState
trigger1 = !AnimTime
value = 50
ctrl = 1
;--------------------------------------------------------------------------
;Jumping hard attack 1
[StateDef 610]
type = A
movetype= A
physics = A
juggle = 0
;velset = 0,0
ctrl = 0
anim = 610
poweradd = 25
sprpriority = 2

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 200,3
volume = 255
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 600
value = ifelse(random > 500,210,210),ifelse(random > 500,4,2)
volume = 255
channel = 2

[State 0, ]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
damage = 25
animtype = Hard
guardflag      = HA
hitflag = MAF
priority = 4, Hit
pausetime = 13, 13
sparkno = S8010+(random%10)
guard.sparkno = S8020+(random%2)
sparkxy = -10, -5
hitsound = S300, 4
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 0, 1))
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -7
air.type = High
air.hittime = 20
air.velocity = -1,Vel Y+2
airguard.velocity = -2,0
getpower = 20
givepower = 10

[State 0, ]
type = ChangeState
trigger1 = !AnimTime
value = 50
ctrl = 1

;--------------------------------------------------------------------------
;Air Launcher: Smash Down
[StateDef 620]
type = A
movetype= A
physics = A
juggle = 0
;velset = 0,0
ctrl = 0
anim = 620
poweradd = 20
sprpriority = 2

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 200,3
volume = 255
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 600
value = ifelse(random > 500,210,210),ifelse(random > 500,4,2)
volume = 255
channel = 2

[State 0, ]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
damage = 45
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 17, 17
sparkno = S8010+(random%10)
guard.sparkno = S8020+(random%2)
sparkxy = 0, -15
hitsound = S300, 4
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 0, 1))
ground.type = High
ground.slidetime = 15
ground.hittime  = 16
ground.velocity = -6,0
Fall = 0
Air.Fall = 1
fall.recover = 0
air.type = Low
air.hittime = 16
air.velocity = -3,15
airguard.velocity = -2,0
getpower = 20
givepower = 10
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6


[State 0, ]
type = ChangeState
trigger1 = !AnimTime
value = 50
ctrl = 1

;-------------------------------------------------------------------------------
;Throw - Attempt
[Statedef 800]
type                    = S
movetype                = A
physics                 = S
anim                    = 800 + Var(6)
ctrl                    = 0
poweradd                = 0
juggle                  = 0
facep2                  = 1
hitdefpersist           = 0
movehitpersist          = 0
hitcountpersist         = 0
sprpriority             = 2

[State 0:     VelSet]
type                    = VelSet
trigger1                = (!Time)
x		                = 0
y		                = 0

[State 0:       Voice]
type                    = PlaySnd
trigger1                = (!Time)
value                   = ifelse(random > 500,210,-1),ifelse(random > 500,2,3)
channel                 = -1
volume                  = 255

;---------------

[State 0:     AssertSpecial]
type 			        = AssertSpecial
trigger1 		        = (1)
flag 			        = unguardable

[State 800: Command Var]
Type                    = VarSet
Trigger1                = !Time
var(17)                 = IfElse(Command = "holdfwd", 1, 0)

[State 0:     HitDef]
type                    = HitDef
trigger1                = !Time
attr                    = S, NT
priority                = 1, miss
sparkno                 = -1
hitsound                = S800,0
p1stateno               = 805
p2stateno               = 810
p1facing                = IfElse(Var(17), 1, -1)
p2facing                = 1

;---------------

[State 0:     ChangeState]
type                    = ChangeState
trigger1                = (!AnimTime)
value                   = 0
ctrl		            = 1

;---------------------------------------------------------------------------
; Throw - Success - P1 State
[Statedef 805]
type                    = S
movetype                = A
physics                 = S
anim                    = 805 + Var(6)
ctrl                    = 0
poweradd                = 0
juggle                  = 0
facep2                  = 1
hitdefpersist           = 0
movehitpersist          = 0
hitcountpersist         = 0
sprpriority             = 1

[State 0:     VelSet]
type                    = VelSet
trigger1                = !Time
x		                = 0
y		                = 0

[State 0:     NothitBy]
type 			        = NotHitBy
trigger1 		        = 1
value 		            = SCA
time 			        =  1

;---------------

[State 0:     Bind]
type                    = TargetBind
trigger1                = (AnimElem = 1)
pos                     = 45, 0

[State 0:     Bind]
type                    = TargetBind
trigger1                = (AnimElem = 2)
pos                     = 45, 0

[State 0: TargetLifeAdd]
type                    = TargetLifeAdd
trigger1 		        = AnimElem = 4
trigger2 		        = AnimElem = 8
trigger3 		        = AnimElem = 12
trigger4 		        = AnimElem = 16
value                   = -15

[State 0:       Hit Sound]
type                    = PlaySnd
trigger1 		        = AnimElem = 4
trigger2 		        = AnimElem = 8
trigger3 		        = AnimElem = 12
value                   = 301,2
channel                 = -1

[State 0:       Hit Sound]
type                    = PlaySnd
trigger1 		        = AnimElem = 16
value                   = 301,3
channel                 = -1

[State 0:       Voice]
type                    = PlaySnd
trigger1                = (!Time)
value                   = ifelse(random > 500,210,-1),ifelse(random > 500,4,5)
channel                 = 0
volume                  = 255


;Spark
[State 0:		Helper]
type 			        = Helper
trigger1 		        = AnimElem = 4, 1
trigger2 		        = AnimElem = 8, 1
trigger3 		        = AnimElem = 12, 1
helpertype 		        = Normal
name 			        = "Spark"
id 			            = 8200
pos 			        = -0, -55
postype 		        = p2
stateno 		        = 8200
keyctrl		            = 0
ownpal		            = 1
persistent		        = 1
ignorehitpause	        = 1

;Spark
[State 0:		Helper]
type 			        = Helper
trigger1 		        = AnimElem = 16, 1
helpertype 		        = Normal
name 			        = "Spark"
id 			            = 8200
pos 			        = -0, -55
postype 		        = p2
stateno 		        = 8200
keyctrl		            = 0
ownpal		            = 1
persistent		        = 0
ignorehitpause	        = 1
facing = 1

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

[State 0, Width]
type = Width
trigger1 = time
edge = 10,10
player = 0,0
;value = 0,0
;ignorehitpause = 
;persistent = 



[State 0: EnvShake]
type                    = EnvShake
trigger1 		        = AnimElem = 4
trigger2 		        = AnimElem = 8
trigger3 		        = AnimElem = 12
time                    = 10
freq                    = 60
ampl                    = -4

[State 0: EnvShake]
type                    = EnvShake
trigger1 		        = AnimElem = 16
time                    = 20
freq                    = 100
ampl                    = -4

;---------------
[State 0:     ChangeState]
type                    = ChangeState
trigger1                = (!AnimTime)
value                   = 0
ctrl		            = 1

;---------------------------------------------------------------------------
; P2 Get Hit State
[Statedef 810]
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

[State 0:     VelSet]
type                    = VelSet
trigger1                = 1
x		                = 0
y		                = 0

[State 0:     ChangeAnim]
type 			        = ChangeAnim2
trigger1 		        = (!Time)
value 		            = 810 + Var(6)

[State 0:     HitBy]
type                    = HitBy
trigger1                = (1)
value                   = SCA
time                    = 1

[State 0:     VelSet]
type                    = VelSet
trigger1                = AnimElem = 3
x		                = 6

[State :o ]
type                    = Selfstate
triggerall              = numenemy > 0
trigger1                = enemynear,movetype = H
trigger2                = enemynear,stateno!= [800,805]
value                   = 5050

[State 0: ChangeState]
type                    = ChangeState
trigger1                = !Animtime
value                   = 812

;-------------------------------------------------------------------------
; P2 Gets Thrown
[Statedef 812]
type                    = L
movetype                = H
physics                 = N
velset                  = -15,0.0
ctrl                    = 0
poweradd                = 0
juggle                  = 0
facep2                  = 0
hitdefpersist           = 0
movehitpersist          = 0
hitcountpersist         = 0
sprpriority             = -1
;---------------

[State 0: ScreenBound]
type                    = ScreenBound
trigger1                = 1
value                   = 0

[State 0:       SelfState]
type                    = Selfstate
trigger1                = command = "recovery"
value                   = 5200

[State 0:     ChangeAnim2]
type                    = ChangeAnim2
Trigger1                = (!Time)
value                   = 812 + Var(6)

[State 0:     ComeDown]
type                    = VelAdd
Trigger1                = 1
x                       = .05

[State 0: ChangeState]
type                    = ChangeState
trigger1                = BackEdgedist <= 0
value                   = 815

;---------------------------------------------------------------------------
; Throw - Hit wall
[Statedef 815]
type                    = A
movetype                = H
physics                 = N

[State 0: VelSet]
type                    = VelSet
trigger1                = !Time
x                       = 0

[State 0:      Hit]
type                    = PlaySnd
trigger1                = (!Time)
value                   = 815
channel                 = -1

[State 0: LifeAdd]
type                    = LifeAdd
trigger1                = !Time
value                   = -20

[State 0, Anim]
type                    = ChangeAnim2
trigger1                = !Time
value                   = 815 + Var(6)

[State 0, Turn]
type                    = Turn
trigger1                = (!Time) && (FrontEdgeBodyDist <= 30)

[State 0, Pos]
type                    = PosAdd
trigger1                = !Time
x                       = BackEdgeBodyDist

[State 0: PosSet]
type                    = PosSet
trigger1                = !Time
y                       = -70

[State 0: ChangeState]
type                    = ChangeState
trigger1                = !AnimTime
value                   = 820

;---------------------------------------------------------------------------
; Throw - bounce off wall fall
[Statedef 820]
type                    = A
movetype                = H
physics                 = N

[State 0, Break Fall Air]
Type                    = SelfState
TriggerAll              = Alive && CanRecover
Trigger1                = Command = "recovery"
Value                   = 5210

[State 0: PosSet]
type                    = PosSet
trigger1                = !Time
y                       = 0

[State 0, Vel Y]
type                    = VelSet
trigger1                = !Time
y                       = -8

[State 0, Vel X]
type                    = VelSet
trigger1                = !Time
x                       = 2

[State 0, Turn]
type                    = Turn
trigger1                = (BackEdgeDist < 30)

[State 0, Gravity]
type                    = VelAdd
trigger1                = 1
y                       = .35

[State 0, Anim 5050] ;Self falling animation
type                    = ChangeAnim
trigger1                = !Time
trigger1                = !SelfAnimExist(5052 + Var(6))
value                   = 5050 + Var(6)

[State 0, Anim 5052] ;Self falling animation (diagup type)
type                    = ChangeAnim
trigger1                = !Time
trigger1                = SelfAnimExist(5052 + Var(6))
value                   = 5052 + Var(6)

[State 0, Anim 5060] ;Coming down - normal
type                    = ChangeAnim
trigger1                = Vel Y > -2
trigger1                = Anim = 5050
trigger1                = SelfAnimExist(5060 + Var(6))
persistent              = 0
value                   = 5060 + Var(6)

[State 0, Anim 5062] ;Coming down - diagup type
type                    = ChangeAnim
trigger1                = Vel Y > -2
trigger1                = Anim = 5052 + Var(6)
trigger1                = SelfAnimExist(5062 + Var(6))
persistent              = 0
value                   = 5062 + Var(6)

[State 0, Hit ground]
type                    = SelfState
trigger1                = (Vel y > 0) && (Pos y >= 0)
value                   = 5100

;-------------------------------------------------------------------------

;------------------
; Hit by Fast Kung Fu Palm - shaking from the hit
; (a custom gethit state)
; See State 1020 for details
[Statedef 6000]
type    = A
movetype= H
physics = N
velset = 0,0

[State 6000, Anim] ;Custom animation
type = ChangeAnim2
trigger1 = 1
value = 6000

[State 6000, State]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 6001

;------------------
; Hit by Fast Kung Fu Palm - flying through the air
; (a custom gethit state)
[Statedef 6001]
type    = A
movetype= H
physics = N

[State 6001, Velocity]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 6001, Gravity]
type = VelAdd
trigger1 = 1
y = gethitvar(yaccel)

[State 6001, No scroll]
type = ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 1,1

[State 6001, Hit wall]
type = ChangeState
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 6002

[State 6001, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;------------------
; Hit by Fast Kung Fu Palm - hit wall
; (a custom gethit state)
[Statedef 6002]
type    = A
movetype= H
physics = N

[State 6002, Turn]
type = Turn
trigger1 = (Time = 0) && (FrontEdgeBodyDist <= 30)

[State 6002, Pos]
type = PosAdd
trigger1 = Time = 0
x = 15 - BackEdgeBodyDist

[State 6002, Stop moving]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 6002, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 6002, Spark]
type = Explod
trigger1 = Time = 0
anim = F72
pos = 0, floor (screenpos y) - 50
postype = back
sprpriority = 3

[State 6002, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 6001

[State 1312, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F7,0

[State 0, ]
type = EnvShake
trigger1 = !Time
time = 16
freq = 100
ampl = -6

[State 6002, State]
type = ChangeState
trigger1 = AnimTime = 0
value = 6003

;------------------
; Hit by Fast Kung Fu Palm - bounce off wall
; (a custom gethit state)
[Statedef 6003]
type    = A
movetype= H
physics = N

[State 6003, Vel Y]
type = VelSet
trigger1 = Time = 0
y = -7

[State 6003, Vel X]
type = VelSet
trigger1 = Time = 0
x = 2.5

[State 6003, Turn]
type = Turn
trigger1 = (Time = 0) && (BackEdgeDist < 30)

[State 6003, Gravity]
type = VelAdd
trigger1 = 1
y = .35

[State 60033, Anim 5050] ;Self falling animation
type = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 6003, Anim 5052] ;Self falling animation (diagup type)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 6003, Anim 5060] ;Coming down - normal
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 6003, Anim 5062] ;Coming down - diagup type
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 6003, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;---------------------------------------------------------------------------
;statedef - 2
[statedef -2]
[State -2, ]
type = DisplayToClipboard
trigger1 = numhelper(1315) > 0
text = "Var13 = %d, numtarget = %d"
params = var(13), helper(1315), numtarget
ignorehitpause = 1

;-------------------------------------------------------------------------
[State -2, Display to Clipboard]
type = DisplaytoClipboard
trigger1 = (GameTime%100) = 0
ignorehitpause = 1
text = "Dragonball Allstars Vegeta By Neocide"

;-----------------------------------------------------------------------

[State 0, ResetZanzouken]
type = VarSet
triggerall = Var(3) != 0 && stateno != [2100,2114]
trigger1 = !NumTarget
trigger2 = NumTarget
trigger2 = Target, movetype != H
v = 3
value = 0

;---------------------------------------------------------------------------
[State 0, Resetkiblast]
type = VarSet
triggerall = Var(13) != 0 && stateno != [1300,1305]
trigger1 = cond(numhelper(1310),(helper(1310),numtarget=0),1)
trigger1 = cond(numhelper(1315),(helper(1315),numtarget=0),1)
trigger1 = !NumTarget
v = 13
value = 0

;--------------------------------------------------------------------
[State 0, Reset Galick Ho]
type = VarSet
triggerall = Var(14) != 0 && stateno !=3001 && time = 50
trigger1 = cond(numhelper(8516),(helper(8516),numtarget=0),1)
trigger1 = !NumTarget
v = 14
value = 0

;--------------------------------------------------------------------

[State -2, AssertSpecial]
type = AssertSpecial
trigger1 = var(25) = 1
trigger2 = enemy,var(25) = 1
flag = invisible

;-------------------------------------------------------------------------
[State -2, VarSet]
type = VarSet
trigger1 = movetype = H
v = 25    ;fv = 10
value = 0
;ignorehitpause = 
;persistent = 
;-----------------------------------------------------------------------


[State 0, VarSet]
type = VarSet
trigger1 = palno = 6
v = 27    ;fv = 10
value = 1
;ignorehitpause = 
;persistent = 


[State 0, VarSet]
type = null; VarSet
trigger1 = power >= 5000
v = 26    ;fv = 10
value = 1
;ignorehitpause = 
;persistent = 

[State 0, VarSet]
type =null; VarSet
trigger1 = power <= 4000
v = 26    ;fv = 10
value = 0
;ignorehitpause = 
;persistent = 


[State 0, Helper]
type = Helper
trigger1   = var(26) = 1
helpertype = normal ;player
name = "flamesup"
ID = 8305
stateno = 8306
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = 1
size.yscale = 1

;=============================DAMAGE DAMPENER===============================
;---------------------------------------------------------------------------
[State -2, DamageDampener-Reset]
type = VarSet
triggerall = FVar(10) != 1
trigger1 = !NumTarget
trigger2 = NumTarget && Target, StateNo >= 5100
fvar(10) = 1
ignorehitpause = 1
;---------------------------------------------------------------------------
[State -2, DamageDampener-Increase]
type = VarAdd
trigger1 = MoveType = A
trigger1 = MoveHit = 1
trigger1 = FVar(10) < 31
trigger1 = NumTarget
fv = 10
value = 1
persistent = 0
;---------------------------------------------------------------------------
[State -2, DamageDampener-Calculus]
type = VarSet
trigger1 = 1
fvar(11) = (31-FVar(10))/28
ignorehitpause = 1
;---------------------------------------------------------------------------
[State -2, CvS2DamageScaling-Power&Life]
type = VarSet
trigger1 = 1
fvar(12) = (.85+.05*(power>=1000)+.05*(power>=2000)+.05*(power>=3000)+.05*(life<=250))
ignorehitpause = 1
;---------------------------------------------------------------------------
[State -2, DamageScaling-FinalFormula-Common]
type = VarSet
trigger1 = 1
fvar(13) = FVar(12) * IfElse(FVar(10) < 3, 1, FVar(11))
ignorehitpause = 1

[State 0, AttackMulSet]
type = AttackMulSet
trigger1 = 1
value = fvar(13)
ignorehitpause = 1

;==============================COMBO DAMPENER===============================
[State 0, Stopchargesnd]
type = StopSnd
trigger1 = stateno != 2001
channel = 7

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = (stateno != 212)
trigger2 = (stateno = 212 && AnimElem = 3)
id  = 8450
ignorehitpause = 1
;persistent =


;------------------Invisible super stuff-----------------------------------




;--------------------------------------------------------------------
;statedef - 3
[Statedef -3]

[State -3, back to camera!]
type = ChangeState
trigger1 = (BackEdgeDist <0) && (StateNo != 100) && (ctrl) && (statetype = S)
value =  100
ctrl = 0

[State 0, StopSnd]
type = StopSnd
triggerall = anim = 3102 && animelemtime(4)>=0 || stateno != 3101
trigger1   = enemy, Pos y > -160 
channel = 10
;ignorehitpause = 
persistent = 0


[State 0, StopSnd]
type = StopSnd
trigger1 = stateno = 0 
channel = 1

[State 0, StopSnd]
type = StopSnd
trigger1 = stateno = 0 
channel = 2

[State 0, StopSnd]
type = StopSnd
trigger1 = stateno = 0 
channel = 3



[State 0, StopSnd]
type = StopSnd
trigger1 = stateno = 0 || movetype = h
channel = 5


[State 0, StopSnd]
type = StopSnd
trigger1 = stateno != [3400,3403] 
channel = 12
;ignorehitpause = 
;persistent = 

