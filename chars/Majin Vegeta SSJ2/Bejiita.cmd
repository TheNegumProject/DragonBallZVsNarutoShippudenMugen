;==============
;Majin Vegeta Super-Sayajin 2
;==============

;------------------------------------------------------
;Base:	Cyanide
;Progging:	Sabre,Kratos,Neocide
;Sprites:	Neocide
;------------------------------------------------------

;==========================COMMANDS========================================
;-| Super Motions |--------------------------------------------------------
;Big Bang Attack--------------------
[Command]
name = "QCFQCF_a"
command = D, DF, F, D, DF, F, a
time = 30

[Command]
name = "QCFQCF_b"
command = ~D, DF, F, D, DF, F, b
time = 30
;-----------------------------------

;Final Flash-------------------------
[Command]
name = "QCFQCB_x"
command = D, DF, F, D, DF, F, x
time = 50

[Command]
name = "QCFQCB_y"
command = D, DF, F, D, DF, F, x
time = 50
;-----------------------------------

;Barikuhama-------------------------
[Command]
name = "QCBQCB_a"
command = D, DF, F, D, DF, F, c
time = 30

[Command]
name = "QCBQCB_b"
command = D, DF, F, D, DF, F, c
time = 30
;-----------------------------------

;Punt Kick Energy Blast-------------
[Command]
name = "QCFQCF_x"
command = D, DF, F, D, DF, F, y
time = 30

[Command]
name = "QCFQCF_y"
command = D, DF, F, D, DF, F, z
time = 30
;-----------------------------------


;-| Special Motions |------------------------------------------------------

;energy field--------------------------
[Command]
name = "invisiki"
command = ~B,D,F, x
time = 15

[Command]
name = "invisiki"
command = ~B,D,F, y
time = 15

;energy field--------------------------
[Command]
name = "kishield"
command = ~D,D,D, x
time = 15

[Command]
name = "kishield"
command = ~D,D,D, y
time = 15



;fireball--------------------------
[Command]
name = "fireball"
command = ~D,F,y
time = 15

;[Command]
name = "fireball"
command = ~z
time = 15

;Punt Kick--------------------------
[Command]
name = "QCFQCB_a"
command = ~D,B,DB, a
time = 30

[Command]
name = "QCFQCB_b"
command = ~D,B,DB, b
time = 30
;-----------------------------------

;Sayajin Beat Down------------------
[Command]
name = "HCB_x"
command = ~F, $D, B, x
time = 12

[Command]
name = "HCB_y"
command = ~F, $D, B, y
time = 12

[Command]
name = "HCB_a"
command = ~F, $D, B, a
time = 12

[Command]
name = "HCB_b"
command = ~F, $D, B, b
time = 12
;-----------------------------------

;Air Raid---------------------------
[Command]
name = "DU_x"
command = ~5$D, $U+x
time = 20

[Command]
name = "DU_y"
command = ~5$D, $U+y
time = 20

[Command]
name = "CD"
command = ~30$D
;-----------------------------------

;Hard kick 2------------------------
[Command]
name = "Stand Hard kick 2"
command = B, b
buffer.time = 1

;Rising Knee------------------------

[Command]
name = "FDF_a"
command = ~F, D, DF, a
time = 15

[Command]
name = "FDF_b"
command = ~F, D, DF, b
time = 15

;-----------------------------------

;Gut Check/Rib Crush/Dirt Eater-----
[Command]
name = "QCB_x"
command = ~D, DB, B, x
time = 15

[Command]
name = "QCB_y"
command = ~D, DB, B, y
time = 15
;-----------------------------------

;-| Misc Motions |---------------------------------------------------------


;-| Double Tap |-----------------------------------------------------------

[Command]
name = "superj"
command = $D, $U
time = 10
buffer.time = 10

[Command]
name = "FF"
command = F, F
time = 12

[Command]
name = "BB"
command = B, B
time = 12

[Command]
name = "ff"
command = F, F
time = 12
buffer.time = 7

[Command]
name = "bb"
command = B, B
time = 12
buffer.time = 7

[Command]
name = "DD"
command = D, D
time = 12
buffer.time = 7

[Command]
name = "UU"
command = U, U
time = 12
buffer.time = 7

[Command]
name = "Long Jump"
command = ~D, UF
time = 12

[Command]
name = "Long Jump"
command = ~D, UB
time = 12

[command]
name = "zancount"
command = ~D, DB, B, z
time = 15


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
command = x+a
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
[command]
name = "launch light"
command = /DF, x

[command]
name = "launch hard"
command = /DF, y

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
name = "s"
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
name = "holddown"
command = /$D
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
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
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holds"
command = /s
time = 1

;---------------------------------------------------------------------------

[Statedef -1]

;===========================================================================
;-| Misc |------------------------------------------------------------------
;---------------------------------------------------------------------------


;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Run Fwd AIR
[State -1: 		Run Fwd]
type 			= ChangeState
value 		= 60
triggerall 		= (Command = "FF") && (StateNo != [60,61])
trigger1		= (StateType = A) && (Ctrl)

;---------------------------------------------------------------------------
;Run BACK AIR
[State -1: 		Run Fwd]
type 			= ChangeState
value 		= 65
triggerall 		= (Command = "BB") && (StateNo != [65,66])
trigger1		= (StateType = A) && (Ctrl)
;---------------------------------------------------------------------------
;Run Fwd
[State -1: 		Run Fwd]
type 			= ChangeState
value 		= 100
triggerall 		= (Command = "FF") && (StateNo != [100,106])
trigger1		= (StateType = S) && (Ctrl)

;---------------------------------------------------------------------------
; Run Back
[State -1:      Run Back]
type            = ChangeState
value      = 105
triggerall      = (command = "BB")
trigger1        = (statetype = S) && (ctrl)
;---------------------------------------------------------------------------
;flight
[state -1]
type = null;changestate
triggerall = command = "cz"
trigger1 = ctrl
value = ifelse(pos Y!= 0, 1900, 1899)

;flight recover
[state -1]
type = null;changestate
triggerall = command = "by" && var(2) >= 10
trigger1 = movetype = H && pos Y< -40
value = 5211

;zanzoken counter
[state -1]
type = changestate
triggerall = command = "zancount" && var(33)=0 && power >= 500
trigger1 = ctrl && enemy,movetype = A && (inguarddist)
value = 1002

;zanzoken
[state -1]
type = null;changestate
triggerall = command = "z" && var(33)=0
trigger1 = ctrl
trigger2 = stateno = 1900 && var(33)=0
value = 1000

;counter
[state -1]
type = changestate
triggerall = command = "by"
trigger1 = stateno = [130,155]
value = 930

;===========================================================================
;-| Super|------------------------------------------------------------------
;---------Big Bang Attack---------------------------------------------------
;BBA-------
[State -1]
type		=  Changestate
value		= 3700
triggerall	= (command = "QCFQCF_a" || Command = "QCFQCF_b") && (power >= 1000)
trigger1	= ctrl && statetype = S
trigger2	= stateno = 200 && movecontact
trigger3	= stateno = 210 && movecontact
trigger4	= stateno = 211 && movecontact
trigger5	= stateno = 220 && movecontact
trigger6	= stateno = 230 && movecontact
trigger7	= stateno = 240 && movecontact
trigger8	= stateno = 241 && movecontact
trigger9	= stateno = 310 && movecontact
trigger10	= stateno = 1600 && movecontact
trigger11	= stateno = 700 && movecontact
trigger12	= stateno = 701 && movecontact

;Hit-------
;[State -1]
;type		= Changestate
;value		= 3701
;---------Final Flash------------------------------------------------------

;Final Flash-------
[state -1]
type =   changestate
value		=  ifelse(pos Y!= 0, 3600,3599)
triggerall = power >= 1000
triggerall = command = "QCFQCB_x" || command = "QCFQCB_y"
trigger1 = stateno = 3100 && time > 5
trigger2 = statetype != c


[State -1]
type		= Changestate
value		= 3599 && ifelse(pos Y!= 0, 3600,0)
triggerall = power >= 1000
triggerall	= (command = "QCFQCB_x" || Command = "QCFQCB_y")
trigger1	= ctrl && statetype = S
trigger2	= ((stateno=[200,241])||stateno=310||(stateno=[700,701])||stateno=1600)&&movecontact
trigger3	= stateno = 3100
trigger4	= stateno = 983 && movecontact
trigger5 = (stateno = 900 && time > 7)
trigger6 = statetype != c
;---------Barikuhama--------------------------------------------------------
;Barikuhama-------
[State -1]
type		= Changestate
value		= 3100
triggerall	= (command = "QCBQCB_a" || Command = "QCBQCB_b") && (power >= 1000)
trigger1	= ctrl && statetype = S
trigger3	= stateno = 3600 && time > 5
trigger2	= ((stateno=[200,241])||stateno=310||(stateno=[700,701])||stateno=1600)&&movecontact
trigger4 = (stateno = 900 && time > 7)

;---------Punt Kick Energy Blast--------------------------------------------
;Bang-------------
[State -1]
type		= null; Changestate
value		= 1610
triggerall	= command = "QCFQCF_x" || Command = "QCFQCF_y"  && (power >= 1000)
trigger1	= stateno = 1600 && movecontact && !moveguarded

;===========================================================================
;-| Special |---------------------------------------------------------------

[State -1,MP]
type = ChangeState
triggerall = (command = "holdback") && (command != "holddown") && (command = "b")
trigger1 = (ctrl) && (statetype = S)
trigger2 = (stateno = 200) && (movecontact)
value = 235

[State -1,HP]
type = ChangeState
triggerall = (command = "holdback") && (command != "holddown") && (command = "y")
trigger1 = (ctrl) && (statetype = S)
trigger2 = (stateno = 200) && (movecontact)
value = 215



;---------Punt Kick---------------------------------------------------------
;Kick-------------
[State -1]
type		= Changestate
value		= 1600
triggerall	= command = "QCFQCB_a" || Command = "QCFQCB_b"
trigger1	= ctrl && statetype = S
trigger2	= stateno = 200 && movecontact
trigger3	= stateno = 210 && movecontact
trigger4	= stateno = 211 && movecontact
trigger5	= stateno = 220 && movecontact
trigger6	= stateno = 230 && movecontact
trigger7	= stateno = 700 && movecontact
trigger8	= stateno = 701 && movecontact
trigger9 = (stateno = 900 && time > 7)

;--------Sayajin Beat Down---------------------------------------------------
;Air Kick--------
[State -1]
type		= Changestate
value		= 980
triggerall	= Command = "HCB_y"
trigger1	= Ctrl && statetype = S
trigger2	= stateno = 200 && movecontact
trigger3	= stateno = 210 && movecontact
trigger4	= stateno = 211 && movecontact
trigger5	= stateno = 220 && movecontact
trigger6	= stateno = 230 && movecontact
trigger7	= stateno = 700 && movecontact
trigger8	= stateno = 701 && movecontact
trigger9	= stateno = 310 && movecontact
trigger10 = (stateno = 900 && time > 7)

;Slide Kick--------
[State -1]
type		= Changestate
value		= 982
triggerall	= Command = "HCB_x"
trigger1	= Ctrl && statetype = S
trigger2	= stateno = 200 && movecontact
trigger3	= stateno = 210 && movecontact
trigger4	= stateno = 211 && movecontact
trigger5	= stateno = 220 && movecontact
trigger6	= stateno = 230 && movecontact
trigger7	= stateno = 700 && movecontact
trigger8	= stateno = 701 && movecontact
trigger9	= stateno = 310 && movecontact
trigger10 = (stateno = 900 && time > 7)

;Ki Blast Standing--------
[State -1]
type		= Changestate
value		= 984
triggerall	= Command = "HCB_a"
trigger1	= Ctrl && statetype = S
trigger2	= stateno = 200 && movecontact
trigger3	= stateno = 210 && movecontact
trigger4	= stateno = 211 && movecontact
trigger5	= stateno = 220 && movecontact
trigger6	= stateno = 230 && movecontact
trigger7	= stateno = 700 && movecontact
trigger8	= stateno = 701 && movecontact
trigger9	= stateno = 310 && movecontact
trigger10 = (stateno = 900 && time > 7)

;Ki Blast Air--------
[State -1]
type		= Changestate
value		= 986
triggerall	= Command = "HCB_b"
trigger1	= Ctrl && statetype = S
trigger2	= stateno = 200 && movecontact
trigger3	= stateno = 210 && movecontact
trigger4	= stateno = 211 && movecontact
trigger5	= stateno = 220 && movecontact
trigger6	= stateno = 230 && movecontact
trigger7	= stateno = 700 && movecontact
trigger8	= stateno = 701 && movecontact
trigger9	= stateno = 310 && movecontact
trigger10 = (stateno = 900 && time > 7)
;-------Air Raid------------------------------------------------------------
;Air Raid---------
[State -1]
type		= Changestate
value		= 1050
triggerall	= Command = "DU_x" || Command = "DU_y"
trigger1	= ctrl && statetype !=A
trigger2	= stateno = 200 && movecontact
trigger3	= stateno = 210 && movecontact
trigger4	= stateno = 211 && movecontact
trigger5	= stateno = 220 && movecontact
trigger6	= stateno = 230 && movecontact
trigger7	= stateno = 700 && movecontact
trigger8	= stateno = 701 && movecontact
trigger9	= stateno = 310 && movecontact


;Alternate Command Cause Neo Cant Do It For Shit :p---------
[State -1]
type		= Changestate
value		= 1050
triggerall	= (Command = "x" || Command = "y") && var(18)=1
trigger1	= (stateno = 40 && animtime < 5) || (stateno = 54 && animtime < 5)
trigger2	= stateno = 200 && movecontact
trigger3	= stateno = 210 && movecontact
trigger4	= stateno = 211 && movecontact
trigger5	= stateno = 220 && movecontact
trigger6	= stateno = 230 && movecontact
trigger7	= stateno = 700 && movecontact
trigger8	= stateno = 701 && movecontact
trigger9	= stateno = 310 && movecontact

;Alternate Command Cause Neo Cant Do It For Shit :p---------
[State -1]
type		= Changestate
value		= 1051
triggerall	= (Command = "fireball")
trigger1	= (stateno = 53) && ctrl


;-------Rising Knee/Sayajin Spike-------------------------------------------
;Sayajin Spike------
[State -1]
type		= Changestate
value		= 1100
triggerall	= Command = "FDF_a"
trigger1	= ctrl && statetype = S
trigger2	= stateno = 200 && movecontact
trigger3	= stateno = 210 && movecontact
trigger4	= stateno = 211 && movecontact
trigger5	= stateno = 220 && movecontact
trigger6	= stateno = 230 && movecontact
trigger7	= stateno = 700 && movecontact
trigger8	= stateno = 701 && movecontact
trigger9 = (stateno = 900 && time > 7)

;Rising Knee + Spike------
[State -1]
type		= Changestate
value		= 1100
triggerall	= Command = "FDF_b"
trigger1	= ctrl && statetype = S
trigger2	= stateno = 200 && movecontact
trigger3	= stateno = 210 && movecontact
trigger4	= stateno = 211 && movecontact
trigger5	= stateno = 220 && movecontact
trigger6	= stateno = 230 && movecontact
trigger7	= stateno = 700 && movecontact
trigger8	= stateno = 701 && movecontact
trigger9 = (stateno = 900 && time > 7)

;-------Gut Check/Rib Crush/Dirt Eater----------------------------------------------
;Gut Check--------
[State -1]
type		= Changestate
value		= 700
triggerall	= Command = "QCB_x" || Command = "QCB_y"
trigger1	= ctrl && statetype = S
trigger2	= stateno = 200 && movecontact
trigger3	= stateno = 230 && movecontact
trigger4	= stateno = 220 && movecontact
trigger5	= stateno = 211 && movecontact
trigger6	= stateno = 210 && movecontact
trigger7 = (stateno = 900 && time > 7)

;Rib Crush--------
[State -1]
type		= Changestate
value		= 701
triggerall	= Command = "QCB_x" || Command = "QCB_y"
trigger1	= stateno = 700 && movecontact && animelem = 2, <29
trigger2	= stateno = 700 && animelem = 2, >14

;Dirt Eater--------
[State -1]
type		= Changestate
value		= 702
triggerall	= Command = "QCB_x" || Command = "QCB_y"
trigger1	= stateno = 701 && movecontact && animelem = 2, <29
trigger2	= stateno = 701 && animelem = 2, >14

;-----------------------------------------------------------------------------------
;-| Ki |---------------------------------------------------------------------
;ki shield
[State -1, SWP]
type = null; ChangeState
triggerall = command = "kishield" && power >= 300
trigger1 = ctrl && statetype != A
trigger2 = stateno = 1900
trigger3 = stateno = 900 && animelemtime(1) > 0
trigger4 = stateno = 920 && numhelper >= 1
trigger5 =(Stateno = [200,399]) && movecontact
value = 910

;invisible ki shot
[State -1, SWP]
type = null; ChangeState
triggerall = command = "invisiki" && power >= 200
trigger1 = ctrl && statetype = S
trigger2 = stateno = 1900
trigger3 = stateno = 900 && animelemtime(1) > 0
trigger4 =(Stateno = [200,399]) && movecontact
value = 920

;Fireball
[State -1, SWP]
type = null; ChangeState
triggerall = command = "fireball" && power >= 100
trigger1 = ctrl && statetype = S
trigger2 = stateno = 1900
trigger3 = stateno = 920 && numhelper >= 1
trigger4 =(Stateno = [200,399]) && movecontact
value = 900



;===========================================================================
;-| Basic |-----------------------------------------------------------------
;--------------------Launchers------------------------------------------------------
[state -1]
type = null;changestate
triggerall = command = "launch light"
trigger1 = ctrl && statetype != A
trigger2 = stateno = 300 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 320 && movecontact
value = 240

[state -1]
type =  null;changestate
triggerall = command = "launch hard"
trigger1 = ctrl && statetype != A
trigger2 = stateno = 300 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 320 && movecontact
trigger6 = stateno = 210 && movecontact && (prevstateno != 230 && prevstateno != 210)
trigger7 = stateno = 230 && movecontact && (prevstateno != 230 && prevstateno != 210)
value = 241

;--------------------crouching------------------------------------------------------
;Crouch Weak punch
[State -1, SWP]
type = ChangeState
triggerall = command = "x" && command = "holddown"
trigger1 = ctrl && statetype = C
trigger2 = stateno = 300 && movecontact && var(50) = 0
trigger3 = stateno = 200 && movecontact
value = 300

;----------------------------------------------------------------------------
;Crouch uppercut
[State -1, SWP]
type = ChangeState
triggerall = command = "y" && command = "holddown"
trigger1 = ctrl && statetype = C
trigger2 = stateno = 320 && movecontact && var(50) = 0
trigger3 = stateno = 300 && movecontact && var(50) = 0
trigger4 = stateno = 200 && movecontact && var(50) = 0
trigger5 = stateno = 220 && movecontact && var(50) = 0
value = 310

;-----------------------------------------------------------------------------
;Crouch Kick
[State -1, SWP]
type = ChangeState
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 300 && movecontact && var(50) = 0
trigger3 = stateno = 200 && movecontact && var(50) = 0
value = 320

;----------------------------------------------------------------------------
;Crouch SLIDE Kick
[State -1, SWP]
type = ChangeState
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 320 && movecontact
trigger3 = stateno = 300 && movecontact
trigger4 = stateno = 200 && movecontact
trigger5 = stateno = 220 && movecontact
value = 330

;------------------------------------STANDING-------------------------------------
;Stand Weak Punch (elbow)
[State -1, SWP]
type = ChangeState
triggerall = (p2bodydist X < 2) && command != "holddown" &&(command = "x")
trigger1 = ctrl && statetype = S
trigger2 = stateno = 1900
trigger3 = stateno = 211 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 300 && movecontact
value = 200

;---------------------------------------------------------------------------
;Stand Weak Punch
[State -1, SWP]
type = ChangeState
triggerall = command = "x" && command != "holddown"
trigger1 = ctrl && statetype = S
trigger2 =  (StateNo = 211) && (AnimElem = 1, > 6 || MoveContact && AnimElem = 5)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 1900
trigger5 = stateno = 300 && movecontact
value = 211
;-----------------------------------------------------



;Stand Medium doubletap
[State -1, SMP]
type = null; ChangeState
triggerall = command = "y" && command != "holddown"
trigger1 = stateno = 210 && movecontact
value = 211


;Stand Medium Punch Close Range
[State -1, SMP]
type = ChangeState
triggerall = (command = "y") && (command != "holddown") && (p2bodydist x <= 15)
trigger1 = ctrl && statetype = S
trigger2 = stateno = 1900
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 211 && movecontact
trigger5 = stateno = 320 && movecontact
value = 212

;Stand Medium Punch
[State -1, SMP]
type = ChangeState
triggerall = (command = "y") && (command != "holddown")
trigger1 = ctrl && statetype = S && (p2bodydist x > 15)
trigger2 = stateno = 1900 && (p2bodydist x > 15)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 300 && movecontact
trigger6 = stateno = 320 && movecontact
trigger7 = stateno = 212 && movecontact
trigger8 = stateno = 211 && movecontact
value = 210

;Stand hard Punch
[State -1, SHP]
type = ChangeState
triggerall = command = "y" && (command = "holdback")
trigger1 = ctrl && statetype = S
trigger2 = stateno = 210
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 300 && movecontact
trigger5 = stateno = 212 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 230 && movecontact
value = 215
-------------------------------------------------
;Stand light Kick
[State -1, SWP]
type = ChangeState
triggerall = command = "a" && command != "holddown"
trigger1 = ctrl && statetype = S
trigger2 = stateno = 1900
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 220 && movecontact  && Anim = 220
trigger5 = stateno = 300 && movecontact
trigger6 = stateno = 320 && movecontact
value = 220
;----------------------------------------------------------------------------
;Stand Hard Kick
[State -1, SWP]
type = ChangeState
triggerall = command = "b" && command != "holddown"
trigger1 = ctrl && statetype = S
trigger2 = stateno = 1900
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 300 && movecontact
trigger6 = stateno = 320 && movecontact
value = 230

Stand Hard Kick
[State -1, SWP]
type = ChangeState
triggerall = command = "b" && (command = "holdback")
trigger1 = ctrl && statetype = S
trigger2 = stateno = 1900
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 212 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 211 && movecontact
trigger8 = stateno = 230 && movecontact
value = 235

;----------------------------------------------------------------------------
;-------------------------air---------------------------------------------
;Air light Punch
[State -1, SWP]
type = ChangeState
triggerall = command = "x"
trigger1 = ctrl && statetype = A
trigger2 = stateno = 420 && movecontact
trigger3 = stateno = 421 && movecontact
value = 400

;----------------------------------------------------------------------------
;air light doubletap p
[State -1, ALPP]
type = null;changestate
value = 401
triggerall = command = "x"
trigger1 = stateno = 400 && movecontact && statetype = A

;----------------------------------------------------------------------------
;Air hard Punch
[State -1, SWP]
type = ChangeState
triggerall = command = "y"
trigger1 = ctrl && statetype = A
trigger2 = stateno = 420 && movecontact
trigger3 = stateno = 400 && movecontact
trigger4 = stateno = 401 && movecontact
trigger5 = stateno = 421 && movecontact
value = 410

;-------------------------------------------------------------------------------

;Air light kick
[State -1, SWP]
type = ChangeState
triggerall = command = "a"
trigger1 = ctrl && statetype = A
trigger = stateno = 401 && movecontact
trigger = stateno = 320 && movecontact
trigger = stateno = 330 && movecontact
value = 420

;-------------------------------------------------------------------------------
;air light doubletap k
[state -1, alkk]
type = null;changestate
value = 421
triggerall = command = "a"
trigger1 = stateno = 420 && movecontact && statetype = A

;----------------------------------------------------------------------------
;Air hard kick
[State -1, SWP]
type = ChangeState
triggerall = command = "b"
trigger1 = ctrl && statetype = A
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 401 && movecontact
trigger4 = stateno = 410 && movecontact
trigger5 = stateno = 420 && movecontact
value = 430

;____________________________________________________________________________

;=====================================chain smack wall======================================

;---------------------------------------------------------------------------

;Charge Up/Power Up
[State -1, ChargePower]
type = ChangeState
value = 800
triggerall = power < 3000
trigger1 = command = "holda" && command = "holdx" && statetype = S && ctrl = 1



