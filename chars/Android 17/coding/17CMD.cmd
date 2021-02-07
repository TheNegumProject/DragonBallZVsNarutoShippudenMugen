;17's CMD
;-[ Super Motions ]--------------------------------------------------------

[Command]
name = "EnergyShield1"
command = ~D, DB, B, a+b
time = 30

[Command]
name = "EnergyShield2"
command = ~D, DB, B, b+c
time = 30

[Command]
name = "EnergyShield3"
command = ~D, DB, B, a+c
time = 30

[Command]
name = "FingerBeam1"
command = ~F, DF, D, DB, B, x+y
time = 30

[Command]
name = "FingerBeam2"
command = ~F, DF, D, DB, B, y+z
time = 30

[Command]
name = "FingerBeam3"
command = ~F, DF, D, DB, B, x+z
time = 30

[Command]
name = "FingerBeam1a"
command = ~F, D, B, x+y
time = 30

[Command]
name = "FingerBeam2a"
command = ~F, D, B, y+z
time = 30

[Command]
name = "FingerBeam3a"
command = ~F, D, B, x+z
time = 30

[Command]
name = "SCombo1"
command = ~D, DF, F, x+y
time = 30

[Command]
name = "SCombo2"
command = ~D, DF, F, y+z
time = 30

[Command]
name = "SCombo3"
command = ~D, DF, F, x+z
time = 30

;-[ Special Motions ]------------------------------------------------------
[Command]
name = "FBD_a"
command = ~F, B, D, a
time = 15

[Command]
name = "FBD_b"
command = ~F, B, D, b
time = 15

[Command]
name = "FBD_c"
command = ~F, B, D, c
time = 15
;-[ Half Circle Commands ]-------------------------------------------------
[Command]
name = "HCF_x"
command = ~B, DB, D, DF, F, x
time = 21

[Command]
name = "HCF_y"
command = ~B, DB, D, DF, F, y
time = 21

[Command]
name = "HCF_z"
command = ~B, DB, D, DF, F, z
time = 21

[Command]
name = "HCF_a"
command = ~B, DB, D, DF, F, a
time = 21

[Command]
name = "HCF_b"
command = ~B, DB, D, DF, F, b
time = 21

[Command]
name = "HCF_c"
command = ~B, DB, D, DF, F, c
time = 21

[Command]
name = "HCF_x2"
command = ~B, D, F, x
time = 21

[Command]
name = "HCF_y2"
command = ~B, D, F, y
time = 21

[Command]
name = "HCF_z2"
command = ~B, D, F, z
time = 21

[Command]
name = "HCF_a2"
command = ~B, D, F, a
time = 21

[Command]
name = "HCF_b2"
command = ~B, D, F, b
time = 21

[Command]
name = "HCF_c2"
command = ~B, D, F, c
time = 21

;-[ Quarter Circle Commands ]----------------------------------------------
[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_c"
command = ~D, DF, F, c

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_c"
command = ~D, DB, B, c

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
command = ~D, DB, B, z

;-[ Other Special Commands ]-----------------------------------------------
[Command]
name = "BQCF_x"
command = ~U, D, DF, F, x
time = 20

[Command]
name = "BQCF_y"
command = ~U, D, DF, F, y
time = 20

[Command]
name = "BQCF_z"
command = ~U, D, DF, F, z
time = 20

[Command]
name = "QCFB_x"
command = ~D, DF, F, B, x

[Command]
name = "QCFB_y"
command = ~D, DF, F, B, y

[Command]
name = "QCFB_z"
command = ~D, DF, F, B, z

[Command]
name = "FBF_x"
command = ~F, B, F, x

[Command]
name = "FBF_y"
command = ~F, B, F, y

[Command]
name = "FBF_z"
command = ~F, B, F, z

[Command]
name = "FBF_a"
command = ~F, B, F, a

[Command]
name = "FBF_b"
command = ~F, B, F, b

[Command]
name = "FBF_c"
command = ~F, B, F, c

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

[Command]
name = "DD_a"
command = D,D, a

[Command]
name = "DD_b"
command = D,D, b

[Command]
name = "DD_c"
command = D,D, c

[Command]
name = "FBF_x"
command = F, B, F, x

[Command]
name = "FBF_y"
command = F, B, F, y

[Command]
name = "FBF_z"
command = F, B, F, z

[Command]
name = "HCFHCB_s"
command = B, D, F, F, D, B, s
time = 60

;-[ Double Tap ]-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "UU"
command = U, U
time = 10

;-[ 2/3 Button Combination ]-----------------------------------------------
[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "fly"
command = b+y
time = 1

;-[ Dir + Button ]---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-[ Single Button ]---------------------------------------------------------
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
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1
;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_yb"
command = /y+b
time = 1

[Command]
name = "hold_xa"
command = /x+a
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_s"
command = /s
time = 1
;-| AI Activate |--------------------------------------------------------------
; Artificial Intelligence
[Command]
name = "AI_01"
command = ~D, DF, F, F, DF, D, DB, B, a
time = 1

[Command]
name = "AI_02"
command = ~D, DF, F, F, DF, D, DB, B, b
time = 1

[Command]
name = "AI_03"
command = ~D, DF, F, F, DF, D, DB, B, c
time = 1

[Command]
name = "AI_04"
command = ~D, DF, F, F, DF, D, DB, B, x
time = 1

[Command]
name = "AI_05"
command = ~D, DF, F, F, DF, D, DB, B, y
time = 1

[Command]
name = "AI_06"
command = ~D, DF, F, F, DF, D, DB, B, z
time = 1

[Command]
name = "AI_07"
command = ~D, DB, B, B, DB, D, DF, F, a
time = 1

[Command]
name = "AI_08"
command = ~D, DB, B, B, DB, D, DF, F, b
time = 1

[Command]
name = "AI_09"
command = ~D, DB, B, B, DB, D, DF, F, c
time = 1

[Command]
name = "AI_10"
command = ~D, DB, B, B, DB, D, DF, F, x
time = 1

[Command]
name = "AI_11"
command = ~D, DB, B, B, DB, D, DF, F, y
time = 1

[Command]
name = "AI_12"
command = ~D, DB, B, B, DB, D, DF, F, z
time = 1
;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.  
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;AI Activation
;---------------------------------------------------------------------------
[State -1, ArtificialIntelligence]
type = VarSet	
triggerall = Var(39) != 1
trigger1 = command = "AI_01" 
trigger2 = command = "AI_02"
trigger3 = command = "AI_03"
trigger4 = command = "AI_04"
trigger5 = command = "AI_05"
trigger6 = command = "AI_06"
trigger7 = command = "AI_07"
trigger8 = command = "AI_08"
trigger9 = command = "AI_09"
trigger10 = command = "AI_10"
trigger11 = command = "AI_11"
trigger12 = command = "AI_12"
v = 39
value = 1
;===========================================================================
;Hyper Attacks
;---------------------------------------------------------------------------
;Energy Shield/Energy Field
[State -1, Energy Shield]
type = ChangeState
value = 1800
triggerall = (command = "EnergyShield1" || command = "EnergyShield2" || command = "EnergyShield3") && power >= 1000
trigger1 = (statetype = S || statetype = A) && ctrl

;Energy Shield/Energy Field
[State -1, Energy Shield]
type = ChangeState
value = 1805
triggerall = (command = "EnergyShield1" || command = "EnergyShield2" || command = "EnergyShield3") && power >= 1000
trigger1 = (stateno = [200,299]) && movecontact
trigger2 = (stateno = [400,449]) || (stateno = [451,499]) && movecontact
trigger3 = (stateno = [600,699]) && movecontact
trigger4 = (stateno = [1200,1225]) && movecontact
trigger5 = (stateno = [1300,1322]) && movecontact
trigger6 = (stateno = [1350,1355]) && movecontact
;---------------------------------------------------------------------------
;Super Auto Combo
[State -1, Super Combo]
type = ChangeState
value = 2100
triggerall = (command = "SCombo1" || command = "SCombo2" || command = "SCombo3") && power >= 1000
trigger1 = statetype = S && ctrl
trigger2 = (stateno = [200,299]) && movecontact
trigger3 = (stateno = [400,449]) || (stateno = [451,499]) && movecontact
trigger4 = (stateno = [1350,1355]) && movecontact
;---------------------------------------------------------------------------
;Finger Beam
[State -1, Finger Beam]
type = ChangeState
value = 1900
triggerall = (command = "FingerBeam1" || command = "FingerBeam2" || command = "FingerBeam3" || command = "FingerBeam1a" || command = "FingerBeam2a" || command = "FingerBeam3a") && power >= 1000
trigger1 = (statetype = S) && ctrl
trigger2 = (stateno = [200,299]) && movecontact
trigger3 = (stateno = [400,449]) || (stateno = [451,499]) && movecontact
;===========================================================================
;-=Special Attacks/Special Abilities/Throws/Combinations=-
;---------------------------------------------------------------------------
;Super Jump
[State -1, SuperJump]
type = ChangeState
value = 41
triggerall = (command = "holdup" || (command="a"&&command="b"&&command="c"))
trigger1 = statetype = C && ctrl = 1 && stateno != 3100
trigger2 = (stateno = 450 && movecontact)
trigger3 = (stateno = 265 && movecontact)
;---------------------------------------------------------------------------
; Run_Fwd
[State -1, RunFwd]
type = ChangeState
value = 100
triggerall = var(4) = 0
trigger1 = command = "FF" && statetype = S && ctrl && (stateno != 100 || stateno != 102)

; Air Run_Fwd
[State -1, AirRunFwd]
type = ChangeState
value = 102
triggerall = var(4) = 0
trigger1 = command = "FF" && statetype = A && ctrl && (stateno != 100 || stateno != 102)
trigger2 = command = "FF" && (stateno = [600,650]) && time > 25
;---------------------------------------------------------------------------
; Run_Back
[State -1, RunBack]
type = ChangeState
value = 105
triggerall = var(4) = 0
trigger1 = command = "BB" && statetype = S && ctrl

; Air Run_Back
[State -1, AirRunBack]
type = ChangeState
value = 107
triggerall = var(4) = 0
trigger1 = command = "BB" && statetype = A && ctrl && stateno != 105
trigger2 = command = "BB" && (stateno = [600,650]) && time > 25
;---------------------------------------------------------------------------
; Air Run_Up
[State -1, AirUp]
type = ChangeState
value = 109
triggerall = var(4) = 0
trigger1 = command = "UU" && statetype = A && ctrl
trigger2 = command = "UU" && (stateno = [600,650]) && time > 25
;---------------------------------------------------------------------------
; Zanzoken Forward
[State -1, Zanzoken.F]
type = ChangeState
value = 2900
triggerall = (command = "a"  && command = "x") && (prevstateno != 2900 || prevstateno != 2901) && (stateno = 100 || stateno = 102)
trigger1 = (statetype = S || statetype = A) && ctrl = 1 
;---------------------------------------------------------------------------
; Zanzoken Backward
[State -1, Zanzoken.B]
type = ChangeState
value = 2901
triggerall = (command = "a"  && command = "x") && (prevstateno != 2905 || prevstateno != 2906) && (stateno = 105 || stateno = 107)
trigger1 = (statetype = S || statetype = A) && ctrl = 1 
;---------------------------------------------------------------------------
; Fireball Forward
[State -1, Fireball.F]
type = ChangeState
value = 1002
triggerall = (command = "QCB_x" || command = "QCB_y" || command = "QCB_z")
trigger1 = statetype = S && ctrl && pos y >= 0
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240 ||  stateno = 260) && movecontact
trigger4 = (stateno = 300 || stateno = 310)
trigger5 = (stateno = [400,450]) && movecontact
;---------------------------------------------------------------------------
; Air Fireball
[State -1, Fireball.A]
type = ChangeState
value = 1022
triggerall = (command = "QCB_x" || command = "QCB_y" || command = "QCB_z")
trigger1 = statetype = A && ctrl
trigger2 = (stateno = [600,650]) && movecontact
;---------------------------------------------------------------------------
; Explosive Wave Close
[State -1, ExplosiveWave.C]
type = ChangeState
value = 1100
triggerall = (command = "FBD_a")
trigger1 = (statetype = S || statetype = C) && ctrl && pos y >= 0
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240 ||  stateno = 260) && movecontact
trigger4 = (stateno = 300 || stateno = 310)
trigger5 = (stateno = [400,450]) && movecontact

; Explosive Wave Medium
[State -1, ExplosiveWave.M]
type = ChangeState
value = 1101
triggerall = (command = "FBD_b")
trigger1 = (statetype = S || statetype = C) && ctrl && pos y >= 0
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240 ||  stateno = 260) && movecontact
trigger4 = (stateno = 300 || stateno = 310)
trigger5 = (stateno = [400,450]) && movecontact

; Explosive Wave Far
[State -1, ExplosiveWave.F]
type = ChangeState
value = 1102
triggerall = (command = "FBD_c")
trigger1 = (statetype = S || statetype = C) && ctrl && pos y >= 0
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240 ||  stateno = 260) && movecontact
trigger4 = (stateno = 300 || stateno = 310)
trigger5 = (stateno = [400,450]) && movecontact
;---------------------------------------------------------------------------
; Double Kick
[State -1, DKick.W]
type = ChangeState
value = 1200
triggerall = (command = "QCF_a")
trigger1 = (statetype = S) && ctrl
trigger2 = (stateno = [200,299]) && movecontact
trigger3 = (stateno = [400,449]) || (stateno = [451,499]) && movecontact
trigger4 = (stateno = [600,699]) && movecontact

[State -1, DKick.M]
type = ChangeState
value = 1203
triggerall = (command = "QCF_b")
trigger1 = (statetype = S) && ctrl
trigger2 = (stateno = [200,299]) && movecontact
trigger3 = (stateno = [400,449]) || (stateno = [451,499]) && movecontact
trigger4 = (stateno = [600,699]) && movecontact

[State -1, DKick.S]
type = ChangeState
value = 1205
triggerall = (command = "QCF_c")
trigger1 = (statetype = S) && ctrl
trigger2 = (stateno = [200,299]) && movecontact
trigger3 = (stateno = [400,449]) || (stateno = [451,499]) && movecontact
trigger4 = (stateno = [600,699]) && movecontact
;---------------------------------------------------------------------------
; Elbow Dash W
[State -1, Elbow Dash.W]
type = ChangeState
value = 1300
triggerall = (command = "HCF_x" || command = "HCF_x2")
trigger1 = (statetype = S) && ctrl
trigger2 = (stateno = [200,299]) && movecontact
trigger3 = (stateno = [400,449]) || (stateno = [451,499]) && movecontact

; Elbow Dash M
[State -1, Elbow Dash.M]
type = ChangeState
value = 1310
triggerall = (command = "HCF_y" || command = "HCF_y2")
trigger1 = (statetype = S) && ctrl
trigger2 = (stateno = [200,299]) && movecontact
trigger3 = (stateno = [400,449]) || (stateno = [451,499]) && movecontact

; Elbow Dash S
[State -1, Elbow Dash.S]
type = ChangeState
value = 1320
triggerall = (command = "HCF_z" || command = "HCF_z2")
trigger1 = (statetype = S) && ctrl
trigger2 = (stateno = [200,299]) && movecontact
trigger3 = (stateno = [400,449]) || (stateno = [451,499]) && movecontact
;---------------------------------------------------------------------------
; Running Combo W
[State -1, RCombo.W]
type = ChangeState
value = 1350
triggerall = (command = "QCF_x")
trigger1 = (statetype = S) && ctrl && pos y >= 0
trigger2 = (stateno = [200,299]) && movecontact
trigger3 = (stateno = [400,449]) || (stateno = [451,499]) && movecontact

; Running Combo M
[State -1, RCombo.M]
type = ChangeState
value = 1354
triggerall = (command = "QCF_y")
trigger1 = (statetype = S) && ctrl  && pos y >= 0
trigger2 = (stateno = [200,299]) && movecontact
trigger3 = (stateno = [400,449]) || (stateno = [451,499]) && movecontact

; Running Combo S
[State -1, RCombo.S]
type = ChangeState
value = 1355
triggerall = (command = "QCF_z")
trigger1 = (statetype = S) && ctrl   && pos y >= 0
trigger2 = (stateno = [200,299]) && movecontact
trigger3 = (stateno = [400,449]) || (stateno = [451,499]) && movecontact

;---------------------------------------------------------------------------
; Running Combo Knee Chain
[State -1, DKick.W]
type = ChangeState
value = 1360
triggerall = (command = "QCF_a" || command = "QCF_b" || command = "QCF_c")
trigger1 = stateno = 1353 && movehit
;---------------------------------------------------------------------------
; Whip Dash
[State -1, WhipDash]
type = ChangeState
value = 1400
triggerall = (command = "BQCF_x" || command = "BQCF_y" || command = "BQCF_z")
trigger1 = (statetype = S || statetype = A) && ctrl
trigger2 = (stateno = [200,299]) && movecontact
trigger3 = (stateno = [400,449]) || (stateno = [451,499]) && movecontact
trigger4 = (stateno = [600,699]) && movecontact
trigger5 = (stateno=[1200,1206]) && movecontact
trigger6 = stateno=1202
trigger7 = stateno=1450 && movecontact
trigger8 = stateno=1360 && movecontact
;---------------------------------------------------------------------------
; Flip Kick W
[State -1, FKick.W]
type = ChangeState
value = 1450
triggerall = (command = "QCB_a")
trigger1 = (statetype = S || statetype = A) && ctrl && stateno != [1450,1452]
trigger2 = (stateno = [200,299]) && movecontact
trigger3 = (stateno = [400,449]) || (stateno = [451,499]) && movecontact
trigger4 = (stateno = [600,699]) && movecontact
trigger5 = (stateno=[1200,1206]) && movecontact
trigger6 = stateno=1202
trigger7 = (stateno = [1450,1452]) && time > 26
trigger8 = stateno=1360 && movecontact

; Flip Kick M
[State -1, FKick.M]
type = ChangeState
value = 1451
triggerall = (command = "QCB_b")
trigger1 = (statetype = S || statetype = A) && ctrl && stateno != [1450,1452]
trigger2 = (stateno = [200,299]) && movecontact
trigger3 = (stateno = [400,449]) || (stateno = [451,499]) && movecontact
trigger4 = (stateno = [600,699]) && movecontact
trigger5 = (stateno=[1200,1206]) && movecontact
trigger6 = stateno=1202
trigger7 = (stateno = [1450,1452]) && time > 26
trigger8 = stateno=1360 && movecontact

; Flip Kick S
[State -1, FKick.S]
type = ChangeState
value = 1452
triggerall = (command = "QCB_c")
trigger1 = (statetype = S || statetype = A) && ctrl && stateno != [1450,1452]
trigger2 = (stateno = [200,299]) && movecontact
trigger3 = (stateno = [400,449]) || (stateno = [451,499]) && movecontact
trigger4 = (stateno = [600,699]) && movecontact
trigger5 = (stateno=[1200,1206]) && movecontact
trigger6 = stateno=1202
trigger7 = (stateno = [1450,1452]) && time > 26
trigger8 = stateno=1360 && movecontact
;---------------------------------------------------------------------------
; Devil Sword Kick
[State -1, Devil Sword Kick]
type = ChangeState
value = 1500
triggerall = (command = "HCF_a"||command = "HCF_a2" || command = "HCF_b"||command = "HCF_b2" || command = "HCF_c"||command = "HCF_c2")
trigger1 = (statetype = A) && ctrl
trigger2 = (stateno = [600,699]) && movecontact
trigger3 = (stateno=[1200,1206]) && movecontact
trigger4 = stateno=1202
trigger5 = stateno=1450 && movecontact
trigger6 = (stateno = [1450,1452]) && movecontact
trigger7 = stateno=1360 && movecontact
;---------------------------------------------------------------------------
; Shoulder Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = (command = "x" && command = "y") && statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 5 && (p2statetype = S || p2statetype = C) && p2movetype != H
trigger2 = command = "holdback" && p2bodydist X < 7 && (p2statetype = S || p2statetype = C) && p2movetype != H
;---------------------------------------------------------------------------
; Advance Guard
[State -1, Advance Guard]
type = ChangeState
value = 330
triggerall = ((command = "x" && command = "y") || (command = "x" && command = "z") || (command = "z" && command = "y")) && command != "holddown" && power >= 200
trigger1 = stateno = [150, 156]
;===========================================================================
; Teleport Attacks
;---------------------------------------------------------------------------
; TeleKickBack Chain
[State -1, TKick.Chain]
type = ChangeState
value = 2700
triggerall = (var(34) != 1 && var(34) != 12 && var(34) != 13 && var(34) != 123 && var(34) != 4)
triggerall = ((command = "a" && command = "b") || (command = "b" && command = "c") || (command = "a" && command = "c")) && command = "holdback"
trigger1 = (stateno = 265 || stateno = 1201 || stateno = 1400 || stateno = 450 || stateno = 1360) && movehit && time = [4,25]
trigger2 = (stateno = [1450,1453]) && movehit && time = [4,25]
trigger3 = (stateno = 2711 || stateno = 2721) && movehit && time = [2,22]

; TelePunch Chain
[State -1, TPunch.Chain]
type = ChangeState
value = 2710
triggerall = (var(34) != 2 && var(34) != 12 && var(34) != 23 && var(34) != 123 && var(34) != 4)
triggerall = ((command = "a" && command = "b") || (command = "b" && command = "c") || (command = "a" && command = "c")) && command = "holdfwd"
trigger1 = (stateno = 265 || stateno = 1201 || stateno = 1400 || stateno = 450 || stateno = 1360) && movehit && time = [4,25]
trigger2 = (stateno = [1450,1453]) && movehit && time = [4,25]
trigger3 = (stateno = 2701 || stateno = 2721) && movehit && time = [2,22]

; TeleKickUp Chain
[State -1, TKickU.Chain]
type = ChangeState
value = 2720
triggerall = (var(34) != 3 && var(34) != 13 && var(34) != 23 && var(34) != 123 && var(34) != 4)
triggerall = ((command = "a" && command = "b") || (command = "b" && command = "c") || (command = "a" && command = "c")) && command = "holdup"
trigger1 = (stateno = 265 || stateno = 1201 || stateno = 1400 || stateno = 450 || stateno = 1360) && movehit && time = [4,25]
trigger2 = (stateno = [1450,1453]) && movehit && time = [4,25]
trigger3 = (stateno = 2701 || stateno = 2711) && movehit && time = [2,22]

; TeleElbow Chain
[State -1, TElbow.Chain]
type = ChangeState
value = 2730
triggerall = (var(34) != 4)
triggerall = ((command = "a" && command = "b") || (command = "b" && command = "c") || (command = "a" && command = "c")) && command = "holddown"
trigger1 = (stateno = 265 || stateno = 1201 || stateno = 1400 || stateno = 450 || stateno = 1360) && movehit && time = [4,25]
trigger2 = (stateno = [1450,1453]) && movehit && time = [4,25]
trigger3 = (stateno = 2701 || stateno = 2711 || stateno = 2721) && movehit && time = [2,22]
;===========================================================================
;-=Basic Attacks=-
;---------------------------------------------------------------------------
; Launcher
[State -1, Launcher]
type = ChangeState
value = 450
triggerall = ((command = "a" && command = "b") || (command = "b" && command = "c") || (command = "a" && command = "c"))
trigger1 = statetype = C && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 240 || stateno = 260) && movecontact
trigger3 = (stateno = 400 || stateno = 405 || stateno = 410 || stateno = 420 || stateno = 430 || stateno = 440 || stateno = 460) && movecontact
;---------------------------------------------------------------------------
; Elbow
[State -1, Elbow]
type = ChangeState
value = 200
triggerall = command = "x" && command != "holddown" && p2bodydist x <= 6
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact
;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno=205) && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = (stateno = 400 || stateno = 430) && movecontact
;---------------------------------------------------------------------------
; Stand Force Punch
[State -1, Force Punch]
type = ChangeState
value = 220
triggerall = command = "z" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 230 || stateno = 235 || stateno = 260) && movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440) && movecontact
;---------------------------------------------------------------------------
; Light Kick
[State -1, LKick]
type = ChangeState
value = 230
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205) && movecontact
trigger3 = (stateno = 400) && movecontact
;---------------------------------------------------------------------------
; Medium Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 260
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 230 || stateno = 235) && movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 430) && movecontact
;---------------------------------------------------------------------------
; Standing Stong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "c" && command != "holddown" && command != "holdback"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 235 || stateno = 260) && movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 420 || stateno = 430 || stateno = 440) && movecontact
;---------------------------------------------------------------------------
; Standing Stong Leap Kick
[State -1, Standing Strong Leap Kick]
type = ChangeState
value = 265
triggerall = command = "c" && command = "holdback"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 235 || stateno = 240 || stateno = 260) && movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 420 || stateno = 430 || stateno = 440) && movecontact
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A && ctrl
;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = (command = "x") && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = 200||stateno = 205) && movecontact
;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = (command = "y") && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno=400 || stateno=430) && movecontact
trigger3 = (stateno=200||stateno=205||stateno=210||stateno=230||stateno=235) && movecontact
;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = (command = "z") && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno=400 || stateno=430 || stateno=410 || stateno=440) && movecontact
trigger3 = (stateno=200||stateno=205||stateno=210||stateno=220||stateno=230||stateno=235||stateno=260) && movecontact
;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = (command = "a") && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = 400) && movecontact
trigger3 = (stateno=200||stateno=205||stateno=230||stateno=235) && movecontact
;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = (command = "b") && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno=400 || stateno=410 || stateno=430) && movecontact
trigger3 = (stateno=200||stateno=205||stateno=210||stateno=230||stateno=235||stateno=260) && movecontact
;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 460
triggerall = (command = "c") && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = [400,449]) && movecontact
trigger3 = (stateno=200||stateno=205||stateno=210||stateno=220||stateno=230||stateno=235||stateno=240||stateno=260) && movecontact
;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = (command = "x")
trigger1 = statetype = A && ctrl 
;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = (command = "y")
trigger1 = statetype = A && ctrl
trigger2 = (stateno = 600 || stateno = 650) && movecontact
;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = (command = "z")
trigger1 = statetype = A && ctrl
trigger2 = (stateno = 600 || stateno = 630) && movecontact
trigger3 = (stateno = 610 || stateno = 650) && movecontact
;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 650
triggerall = (command = "a")
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 630
triggerall = (command = "b")
trigger1 = statetype = A && ctrl
trigger2 = (stateno = 600 || stateno = 650) && movecontact
trigger3 = (stateno = 610) && movecontact
;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = (command = "c")
trigger1 = statetype = A && ctrl
trigger2 = (stateno = 600 || stateno = 630) && movecontact
trigger3 = (stateno = 610 || stateno = 650) && movecontact
trigger4 = (stateno = 620) && movecontact
;---------------------------------------------------------------------------
;Auto Power Up
[State -1, ChargePower]
type = PowerAdd
value = 1
triggerall = stateno != [1000,1059]
trigger1 = (time%2) && stateno != 190 && alive = 1 && p2life > 0
