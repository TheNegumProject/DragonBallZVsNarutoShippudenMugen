
;-| Hyper Motions |--------------------------------------------------------

[Command]
name = "Kienzan"
command= D,F ,y
time=30

[Command]
name = "Death Ball"
command= D,B,F ,x
time=30

[Command]
name = "Frezaa KI blast"
command= D,B,F ,a
time=30

[Command]
name = "Ki Beam"
command = D,F ,b
time = 25

;-| Special Motions |------------------------------------------------------

[Command]
name = "Multi"
command = ~U,z
time = 20

[Command]
name = "Ground Attack"
command = ~D, B, F ,x
time = 30

[Command]
name = "Teleport"
command = c
time = 30

[Command]
name = "Ground Attack1"
command = /$D, y
time = 10

[Command]
name = "Air Attack"
command = D, DF, y
time = 30


[Command]
name = "GROUND KI"
command = ~D, D, b
time = 20

[Command]
name = "finger ki"
command = z
time = 20

;-| Misc Motions |---------------------------------------------------------

;-| Double Tap |-----------------------------------------------------------

[Command]
name="Super Jump"
command=~D,U

[Command]
name = "FF"     
command = F, F
time = 10

[Command]
name = "uu"
command = U, U
time = 15

[Command]
name = "dd"
command = D, D
time = 15

[Command]
name = "BB"     
command = B, B
time = 10


[Command]
name = "Long Jump"
command = ~D, UF
time = 12

[Command]
name = "Long Jump"
command = ~D, UB
time = 12

;-| 2/3 Button Combination |-----------------------------------------------

[Command]
name = "recovery"
command = x+y
time = 5

[Command]
name = "recovery"
command = y+z
time = 5

[Command]
name = "recovery"
command = x+z
time = 5

[Command]
name = "recovery"
command = x+y+z
time = 5

[Command]
name = "xy"
command = x+y
time = 5

[Command]
name = "yz"
command = y+z
time = 5

[Command]
name = "xz"
command = x+z
time = 5

[Command]
name = "xyz"
command = x+y+z
time = 5

[Command]
name = "ab"
command = a+b
time = 5

[Command]
name = "bc"
command = b+c
time = 5

[Command]
name = "ac"
command = a+c
time = 5

[Command]
name = "abc"
command = a+b+c
time = 5

[Command]
name = "xa"
command = a
time = 5

[Command]
name = "by"
command = b+y
time = 5

[Command]
name = "cz"
command = c+z
time = 5

;-| Dir + Button |---------------------------------------------------------

;-| Single Button |---------------------------------------------------------

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------

[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup" 
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "holdx" 
command = /x
time = 1

[Command]
name = "holdy" 
command = s
time = 1

[Command]
name = "holdz" 
command = /z
time = 1

[Command]
name = "holda" 
command = /a
time = 1

[Command]
name = "holdb" 
command = s
time = 1

[Command]
name = "holdc" 
command = /c
time = 1

[Command]
name = "holdstart"
command = /s
time = 1

;---------------------------------------------------------------------------
;CPU

[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "start2"
command = s
time = 1

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2"
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

[Command]
name = "holda2"
command = /a
time = 1

[Command]
name = "holdb2"
command = /b
time = 1

[Command]
name = "holdc2"
command = /c
time = 1

[Command]
name = "holdx2"
command = /x
time = 1

[Command]
name = "holdy2"
command = /y
time = 1

[Command]
name = "holdz2"
command = /z
time = 1

[Command]
name = "holdstart2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+y
time = 1

[Statedef -1]

;===========================================================================
;Ki Beam
[State -1,]
type = ChangeState
value = 816
triggerall = command = "Ki Beam"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 200 && movecontact
trigger7 = stateno = 204 && movecontact
trigger8 = stateno = 250 && movecontact
trigger9 = stateno = 260 && movecontact
trigger10 = stateno = 270 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 450 && movecontact
trigger15 = stateno = 500 && movecontact
;-| Misc |------------------------------------------------------------------
[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742

;----------------------------------------------------------------------------
;Death Ball
[State -1]
type = ChangeState
value = 950
triggerall=var(59)=0&&command="Death Ball"
triggerall = (power >= 2000)
trigger1 = statetype = S
trigger1 = ctrl = 1
;----------------------------------------------------------------------------
;Kienzan
[State -1]
type = ChangeState
value = 16000
triggerall=var(59)=0&&command="Kienzan"
triggerall = (power >= 1000)
trigger1 = statetype = S
trigger1 = ctrl = 1
;----------------------------------------------------------------------------
;Frezaa KI blast
[State -1]
type = ChangeState
value = 960
triggerall=var(59)=0&&command="Frezaa KI blast"
triggerall = (power >= 1000)
trigger1 = statetype = S
trigger1 = ctrl = 1

;Start
[State -1, Start]
type = ChangeState
value = 7602
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------

;---------------------------------------------------
;Throw001
[State -1: 		Throw]
type 			= ChangeState
value 		= 260
triggerall 		= (Command = "xa") && ((Command = "holdback") || (Command = "holdfwd")) && (Var(2) <= 0)
trigger1		= (StateType = S) && (Ctrl) && (StateNo != [100,105])
;-----------------------------------------------------------------------------


;Stand_a
[State -1]
type = ChangeState
value = 2100
triggerall = var(6) = 0 || var(6) = 1
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2100
trigger2 = time >= 20
trigger3 = stateno = 211
trigger3 = MoveContact
trigger4 = stateno = 212
trigger4 = movecontact =1
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 201
trigger6 = MoveContact
trigger7 = stateno = 202
trigger7 = MoveContact
trigger8 = stateno = 1510
;---------------------------------------------------------------------------
;GROUND KI
[State -1]
type = ChangeState
value = 825
triggerall=var(59)=0&&command="GROUND KI"
triggerall = (power >= 200)
trigger1 = statetype = S
trigger1 = ctrl = 1
;----------------------------------------------------------------------------
;Ki from finger
[State -1]
type = ChangeState
value = 900
triggerall=var(59)=0&&command="finger ki"
triggerall = (power >= 200)
trigger1 = statetype = S
trigger1 = ctrl = 1
;-----------------------
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;-----------------------
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;Air Attack
[State -1]
type = ChangeState
value = 500
triggerall=var(59)=0&&command="Air Attack"
trigger1 = statetype = S
trigger1 = ctrl = 1
;-----------------------

;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;--------------------------------
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;Ground Attack
[State -1]
type = ChangeState
value = 250
triggerall=var(59)=0&&command="Ground Attack"
trigger1 = statetype = S
trigger1 = ctrl = 1
;-----------------------
;Ground Attack1
[State -1]
type = ChangeState
value = 440
triggerall=var(59)=0&&command="Ground Attack1"
trigger1 = statetype = A
trigger1 = ctrl = 1
;-----------------------

;Super Jump
[State -1,SJ]
type=ChangeState
value=707
triggerall=var(59)=0
triggerall=command="Super Jump"
triggerall=alive
triggerall=pos y>=0
triggerall=!win
trigger1=(statetype!=A&&ctrl)
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Run Forward
[State -1: 		Run Fwd]
type 			= ChangeState
value 		= 100
triggerall 		= (Command = "FF") && (StateNo != [100,106])
trigger1		= (StateType = S) && (Ctrl)
;---------------------------------------------------------------------------
;Run Back
[State -1: 		Run Back]
type 			= ChangeState
value 		= 105
triggerall 		= (Command = "BB") && (StateNo != [100,106])
trigger1		= (StateType = S) && (Ctrl)
;---------------------------------------------------------------------------

;Air Run Forward
[State -1: 		Run Fwd]
type 			= ChangeState
value 		= 110
triggerall 		= (Command = "FF") && (StateNo != [100,106])
trigger1		= (StateType = A) && (Ctrl)
;---------------------------------------------------------------------------
;Air Run Back
[State -1: 		Run Back]
type 			= ChangeState
value 		= 115
triggerall 		= (Command = "BB") && (StateNo != [100,106])
trigger1		= (StateType = A) && (Ctrl)
;---------------------------------------------------------------------------
;-| Hyper |-----------------------------------------------------------------

;---------------------------------------------------------------------------

;===========================================================================
;-| Special |---------------------------------------------------------------


;===========================================================================
;-| Basic |-----------------------------------------------------------------
;---------------------------------------------------------------------------
;Punch
[State -1, SWP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(ctrl)&&(command="x")
value = 200
;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, SMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(ctrl)&&(command="y")
value = 210
; chain punch 1
[State -1, AMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(stateno=200)&&movecontact&&(command="y")
value = 210
; chain kick2
[State -1, AMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(stateno=210)&&movecontact&&(command="b")
value = 230
;----------------------------------------------------------------------------
;Medium Kick
[State -1, SWP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(ctrl)&&(command="a")
value = 220
; chain kick
[State -1, AMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(stateno=200)&&movecontact&&(command="a")
value = 220
; chain punch 1
[State -1, AMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(stateno=220)&&movecontact&&(command="y")
value = 210
;----------------------------------------------------------------------------
;Hard Kick
[State -1, SWP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(ctrl)&&(command="b")
value = 230
; chain kick 1
[State -1, AMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(stateno=220)&&movecontact&&(command="b")
value = 230
;--------------------crouching------------------------------------------------------
;Crouch Punch
[State -1, SWP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=C))
trigger1=(ctrl)&&(command="x")
value = 301
;----------------------------------------------------------------------------
;Crouch Punch2
[State -1, SWP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=C))
trigger1=(ctrl)&&(command="y")
value = 300
;----------------------------------------------------------------------------
; chain puinch
[State -1, AMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=C))
trigger1=(stateno=301)&&movecontact&&(command="y")
value = 300

;Crouch Kick
[State -1, SWP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=C))
trigger1=(ctrl)&&(command="a")
value = 320
;----------------------------------------------------------------------------
;Crouch Kick1
[State -1, SWP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=C))
trigger1=(ctrl)&&(command="b")
value = 330
;----------------------------------------------------------------------------
; chain kick 1
[State -1, AMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=C))
trigger1=(stateno=320)&&movecontact&&(command="b")
value = 330
;----------------------------------------------------------------------------
;-------------------------air---------------------------------------------
;Air light Punch
[State -1, SWP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=A))
trigger1=(ctrl)&&(command="x")
value = 400
;----------------------------------------------------------------------------
;Air light Punch 2
[State -1, SWP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=A))
trigger1=(ctrl)&&(command="y")
value = 410
; chain punch 1
[State -1, AMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=A))
trigger1=(stateno=400)&&movecontact&&(command="y")
value = 410
;-------------------------------------------------------------------------------
;Air light kick
[State -1, SWP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=A))
trigger1=(ctrl)&&(command="a")
value = 420
;----------------------------------------------------------------------------
;Air hard kick
[State -1, SWP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=A))
trigger1=(ctrl)&&(command="b")
value = 430
; chain kick 1
[State -1, AMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=A))
trigger1=(stateno=420)&&movecontact&&(command="b")
value = 430
;____________________________________________________________________________


;Air chain smck 1
[State -1, AMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=A))
trigger1=(stateno=400)&&movecontact&&(command="Ground Attack1")
value = 440

;Air chain smck 2
[State -1, AMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=A))
trigger1=(stateno=410)&&movecontact&&(command="Ground Attack1")
value = 440


;Air chain smck 3
[State -1, AMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=A))
trigger1=(stateno=400)&&movecontact&&(command="Ground Attack1")
value = 440

;Air chain smck 4
[State -1, AMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=A))
trigger1=(stateno=410)&&movecontact&&(command="Ground Attack1")
value = 440


;=====================================Others======================================
;Fireball
[State -1, AMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
triggerall = (command="x")
trigger1=(stateno=900)&&(time >= 14)
triggerall = (power >= 200)
value = 900


;Charge Up/Power Up
[State -1, ChargePower]
type = ChangeState
value = 800
triggerall = power < 3000 && time > 1
trigger1 = command = "holda" && command = "holdx" && statetype = S && ctrl = 1 && command != "holdfwd"
;trigger2 = command = "holda" && command = "holdx" && stateno = 3100 && command != "holdfwd"


;------------------------------------------------------------------------------------------------------------------
;Air Fireball
;[State -1, SWP]
;type = ChangeState
;triggerall=(var(59)=0&&(statetype=A))
;triggerall = (power >= 200)
;trigger1=(ctrl)&&(command="z")
;trigger2=(stateno=820)&&(command="z")
;value = 820

;moves during air dashing
; chain punch 1
[State -1, AMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=A))
trigger1=(stateno=110)&&(command="x")
value = 400

; chain punsh 2
[State -1, AMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=A))
trigger1=(stateno=110)&&(command="y")
value = 410

; chain kick 1
[State -1, AMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=A))
trigger1=(stateno=110)&&(command="a")
value = 420

; chain kick 1
[State -1, AMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=A))
trigger1=(stateno=110)&&(command="b")
value = 430

; chain punch 1
[State -1, AMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=A))
trigger1=(stateno=115)&&(command="x")
value = 400

; chain punsh 2
[State -1, AMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=A))
trigger1=(stateno=115)&&(command="y")
value = 410

; chain kick 1
[State -1, AMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=A))
trigger1=(stateno=115)&&(command="a")
value = 420

; chain kick 1
[State -1, AMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=A))
trigger1=(stateno=115)&&(command="b")
value = 430

;Teleport
[State -1, AMP]
type = ChangeState
triggerall=var(59)=0&&command="Teleport"
trigger1 = statetype = S
trigger1 = ctrl = 1
value = 171
;______________________________________

[StateDef -2]


[State -2, StopAI]
type = VarSet
triggerall = var(58) > 0 && !IsHelper
trigger1 = RoundState != 2
trigger2 = !Alive
var(58) = -2
IgnoreHitPause = 1

[State -2, Simplifier]
type = VarSet
triggerall = !IsHelper
trigger1 = var(58) = 1
trigger2 = var(0):=0
var(0) = 1	; Another option is to replace 1 with something like MatchNo, if
		; you want to design your AI to have varying levels of difficulty.
IgnoreHitPause = 1




[StateDef -3]


[State -3, SetAI]
type = VarSet
triggerall = Alive && !IsHelper
triggerall = IsHomeTeam
trigger1 = TeamSide = 2
trigger2 = MatchNo > 1
var(58) = 1

[State -3, AI Helper - Compatibly Partnered Version]
type = Helper
trigger1 = !var(58) && !IsHelper
trigger1 = !NumHelper(9742)
trigger1 = Alive && RoundState = 2
trigger1 = NumPartner
trigger1 = Partner,SelfAnimExist(9741)
HelperType = normal
name = "AI Helper (Simul Version)"
ID = 9742
pos = 9999999,99999
StateNo = 9742
KeyCtrl = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State -3, AI Helper]
type = Helper
triggerall = !var(58) && !IsHelper
triggerall = !NumHelper(9741)
triggerall = Alive && RoundState = 2
trigger1 = !NumPartner
trigger2 = !(Partner,SelfAnimExist(9741))
HelperType = normal
name = "AI Helper"
ID = 9741
pos = 9999999,99999
StateNo = 9741
KeyCtrl = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State -3, TurnBackOnAI]
type = VarSet
trigger1 = var(58) = -2 && !IsHelper
trigger1 = Alive && RoundState = 2
var(58) = 1

[State -3, RCSC Helper]
type = Helper
triggerall = var(58)!=1 && !IsHelper
triggerall = !NumHelper(9743)
triggerall = Alive && RoundState = 2
trigger1 = MatchNo = 1
trigger2 = NumPartner
trigger2 = ID > Partner,ID
HelperType = normal
name = "Recent Custom State Check"
ID = 9743
pos = 9999999,99999
StateNo = 9743
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

;[State -3, XOR]
;type = VarSet
;triggerall = var(58)!=1 && !IsHelper
;triggerall = var(57) = GameTime-1
;triggerall = NumHelper(9743)
;triggerall = !(Helper(9743),var(1))
;trigger1 = command = "a" ^^ command = "a2"
;trigger2 = command = "b" ^^ command = "b2"
;trigger3 = command = "c" ^^ command = "c2"
;trigger4 = command = "x" ^^ command = "x2"
;trigger5 = command = "y" ^^ command = "y2"
;trigger6 = command = "z" ^^ command = "z2"
;trigger7 = command = "start" ^^ command = "start2"
;trigger8 = command = "holda" ^^ command = "holda2"
;trigger9 = command = "holdb" ^^ command = "holdb2"
;trigger10 = command = "holdc" ^^ command = "holdc2"
;trigger11 = command = "holdx" ^^ command = "holdx2"
;trigger12 = command = "holdy" ^^ command = "holdy2"
;trigger13 = command = "holdz" ^^ command = "holdz2"
;trigger14 = command = "holdstart" ^^ command = "holdstart2"
;trigger15 = command = "holdfwd" ^^ command = "holdfwd2"
;trigger16 = command = "holdback" ^^ command = "holdback2"
;trigger17 = command = "holdup" ^^ command = "holdup2"
;trigger18 = command = "holddown" ^^ command = "holddown2"
;trigger19 = command = "recovery" ^^ command = "recovery2"
;Add more as desired. (See my notes in the CMD.)
;var(58) = 1

;Charg settings
[State -3, AI.WP]
type = ChangeState
triggerall = (var(58) = 1) && alive = 1 && statetype = S && ctrl = 1 && p2life > 0  && p2bodydist x <= 150 && (p2stateno != [5100,5120])
trigger1 = (stateno = 800 || stateno = 3100)
value = IfElse(Power >= 1000, 0, 800)

;-----------------------------
;Weak punch
[State -3, AI.WP]
type = ChangeState
triggerall = (var(58) = 1) && alive = 1 && statetype = S && ctrl = 1 && p2life > 0  && p2bodydist x < 20 && (p2stateno != [5100,5120])
trigger1 = (stateno = 0 || stateno = 3100)
value = IfElse(Random <= 699, 200, 0)

;Weak punch Chain 2
[State -3, AI.WPC]
type = ChangeState
triggerall = (var(58) = 1) && alive = 1 && statetype = S && (p2stateno != [5100,5120])
trigger1 = stateno = 200 && (movecontact)
value = IfElse(Random <= 999, 210, 0)


;-----------------------------
;crouch kick
[State -3, AI.WP]
type = ChangeState
triggerall = (var(58) = 1) && alive = 1 && statetype = S && ctrl = 1 && p2life > 0  && p2bodydist x < 50 && (p2stateno != [5100,5120])
trigger1 = (stateno = 0 || stateno = 3100)
value = IfElse(Random <= 300, 330, 0)


;uppercut
[State -3, AI.WPC]
type = ChangeState
triggerall = (var(58) = 1) && alive = 1 && statetype = S && (p2stateno != [5100,5120])
trigger1 = stateno = 330 && (movecontact)
value = IfElse(Random <= 999, 310, 0)


;saut
[State -3, AI.WPC]
type = ChangeState
triggerall = (var(58) = 1) && alive = 1 && statetype = S && (p2stateno != [5100,5120])
trigger1 = stateno = 310 && (movecontact)
value = IfElse(Random <= 999, 40, 0)

;PUNCH1
[State -3, AI.WPC]
type = ChangeState
triggerall = (var(58) = 1) && alive = 1 && statetype = A && (p2stateno != [5100,5120])
trigger1 = stateno = 40 && (movecontact)
value = IfElse(Random <= 599, 400, 0)

;PUNCH2
[State -3, AI.WPC]
type = ChangeState
triggerall = (var(58) = 1) && alive = 1 && statetype = A && (p2stateno != [5100,5120])
trigger1 = stateno = 400 && (movecontact)
value = IfElse(Random <= 999, 410, 0)

;----------------------------------------

;Frezaa Ki Blast
[State -3, AI.BA]
type = ChangeState
triggerall = (var(58) = 1) && !IsHelper && alive = 1 && statetype = S && ctrl = 1 && p2life > 0 && (p2stateno != [5100,5110])
trigger1 = stateno = 0 && power >= 1000 && power <= 1999 && p2bodydist x > 80 && random <= 599
value = 960

;Death Ball
[State -3, AI.BF]
type = ChangeState
triggerall = (var(58) = 1) && !IsHelper && alive = 1 && statetype = S && ctrl = 1 && p2life > 0 && (p2stateno != [5100,5110])
trigger1 = stateno = 0 && power >= 2000 && p2bodydist x > 120 && random <= 799
value = 950

;Kienzan
[State -3, AI.BD]
type = ChangeState
triggerall = (var(58) = 1) && !IsHelper && alive = 1 && statetype = S && ctrl = 1 && p2life > 0 && (p2stateno != [5100,5110])
trigger1 = stateno = 0 && power >= 2000 && p2bodydist x > 120 && random <= 799
value = 16000


[State -3, GameTimeVar]
type = VarSet
trigger1 = !IsHelper
var(57) = GameTime
IgnoreHitPause = 1

[State -3: ChangeState]
type = ChangeState
triggerall = (Var(58) > 0) && (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing)
trigger1 = (P2StateType != C) && (P2MoveType = A) && ((InGuardDist) || (EnemyNear, NumProj > 0))
value = 130

[State -3: ChangeState]
type = ChangeState
triggerall = (Var(58) > 0) && (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing)
trigger1 = (P2StateType = C) && (P2MoveType = A) && ((InGuardDist) || (EnemyNear, NumProj > 0))
value = 131

[State -3: ChangeState]
type = ChangeState
triggerall = (Var(58) > 0) && (StateType = A) && (Ctrl) && (EnemyNear, Facing != Facing)
trigger1 = (P2MoveType = A) && ((InGuardDist) || (EnemyNear, NumProj > 0))
value = 132

[State -3: VarSet]
type = VarSet
trigger1 = (Var(58) = 0) && ((!Time) * (TicksPerSecond)) && (IsHomeTeam) && (NumEnemy = 1) && (!NumPartner) && (TeamSide = 2) && (Alive)
var(0) = 1


