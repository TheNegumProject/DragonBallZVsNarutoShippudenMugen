;Trunkz's CMD
;-| Super Motions |--------------------------------------------------------
[Command]
name = "FinishBuster1"
command = ~D, DB, B, x+y
time = 20

[Command]
name = "FinishBuster2"
command = ~D, DB, B, y+z
time = 20

[Command]
name = "FinishBuster3"
command = ~D, DB, B, x+z
time = 20

[Command]
name = "BusterCannon1"
command = ~D, DB, B, a+b
time = 20

[Command]
name = "BusterCannon2"
command = ~D, DB, B, b+c
time = 20

[Command]
name = "BusterCannon3"
command = ~D, DB, B, a+c
time = 20

[Command]
name = "BurningAttack"
command = x+y+z
time = 20

;-| Special Motions |------------------------------------------------------

[Command]
name = "dyna_a"
command = /D,U+a
time = 20

[Command]
name = "dyna_b"
command = /D,U+b
time = 20

[Command]
name = "dyna_c"
command = /D,U+c
time = 20

[Command]
name = "QCF_a"
command = ~D, DF, F, a
time = 20

[Command]
name = "QCF_b"
command = ~D, DF, F, b
time = 20

[Command]
name = "QCF_c"
command = ~D, DF, F, c
time = 20

[Command]
name = "QCF_x"
command = ~D, DF, F, x
time = 20

[Command]
name = "QCF_y"
command = ~D, DF, F, y
time = 20

[Command]
name = "QCF_z"
command = ~D, DF, F, z
time = 20

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y
time = 20

[Command]
name = "QCB_a"
command = ~D, DB, B, a
time = 20

[Command]
name = "QCB_b"
command = ~D, DB, B, b
time = 20

[Command]
name = "QCB_c"
command = ~D, DB, B, c
time = 20

[Command]
name = "QCB_x"
command = ~D, DB, B, x
time = 20

[Command]
name = "QCB_y"
command = ~D, DB, B, y
time = 20

[Command]
name = "QCB_z"
command = ~D, DB, B, z
time = 20

[Command]
name = "FBF_a"
command = F, B, F, a
time = 20

[Command]
name = "FBF_b"
command = F, B, F, b
time = 20

[Command]
name = "FBF_c"
command = F, B, F, c
time = 20

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "UU" 
command = U, U
time = 10

[Command]
name = "DD" 
command = D, D
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "fly"
command = y+b
time = 1

[Command]
name = "PPP"
command = x+y+z
time = 1

[Command]
name = "KKK"
command = a+b+c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

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
;Finish Buster
[State -1, FinishBuster]
type = ChangeState
value = 1900
triggerall = (command = "FinishBuster1" ||command = "FinishBuster2"||command = "FinishBuster3") && command != "holddown" && power >= 1000
trigger1 = statetype = S && ctrl
trigger2 = stateno = 3100
;---------------------------------------------------------------------------
;Chain Finish Buster
[State -1, Chain Finish Buster]
type = ChangeState
value = 1905
triggerall = (command = "FinishBuster1" ||command = "FinishBuster2"||command = "FinishBuster3") && command != "holddown" && power >= 1000 && Var(39) != 1
trigger1 = (stateno = [200, 260]) && (movecontact)
trigger2 = (stateno = [1100, 1399]) && (movecontact)
;---------------------------------------------------------------------------
;Buster Cannon
[State -1, BusterCannon]
type = ChangeState
value = 1800
triggerall = (command = "BusterCannon1"||command = "BusterCannon2"||command = "BusterCannon3") && command != "holddown" && power >= 1000
trigger1 = statetype = S && ctrl
trigger2 = stateno = 3100
;---------------------------------------------------------------------------
;Chain Buster Cannon
[State -1, Chain BUster Cannon]
type = ChangeState
value = 1805
triggerall = (command = "BusterCannon1"||command = "BusterCannon2"||command = "BusterCannon3") && command != "holddown" && power >= 1000 && Var(39) != 1
trigger1 = (stateno = [200, 260]) && (movecontact)
trigger2 = (stateno = [1100, 1399]) && (movecontact)
;---------------------------------------------------------------------------
;Burning Attack
[State -1, BurningAttack]
type = ChangeState
value = 2200
triggerall = command = "BurningAttack" && command != "holddown" && power >= 2750 && var(1) != 0
trigger1 = statetype = S && ctrl
trigger2 = stateno = 3100
;===========================================================================
;-=Special Attacks/Special Abilities/Throws/Combinations=-
;---------------------------------------------------------------------------
; Fly-Lift Off/Buku Jyutsu(Start)
[State -1, FlyStart]
type = ChangeState
value = 3000
trigger1 = statetype = S && ctrl = 1 && stateno != 3100 && command != "holdfwd"
triggerall = command = "fly"
;---------------------------------------------------------------------------
; Fly in action/Buku Jyutsu
[State -1, Flying]
type = ChangeState
value = 3100
trigger1 = statetype = A && ctrl = 1
triggerall = command = "fly"
;---------------------------------------------------------------------------
; Fall from Flight
[State -1, Fall]
type = ChangeState
value = 3105
trigger1 = statetype = A && ctrl = 1 && stateno = 3100
triggerall = command = "fly"
;---------------------------------------------------------------------------
;Super Jump
[State -1, SuperJump]
type = ChangeState
value = 41
triggerall = (command = "holdup" || command = "KKK") && pos y = 0
trigger1 = statetype = C && ctrl = 1 && stateno != 3100
trigger2 = stateno = 260 && movehit
;---------------------------------------------------------------------------
;Super Jump2
[State -1, SuperJump2]
type = ChangeState
value = 41
triggerall = command = "KKK" && pos y = 0
trigger1 = statetype = S && ctrl = 1 && stateno != 3100
trigger2 = stateno = 260 && movehit
;---------------------------------------------------------------------------
; Run_Fwd
[State -1, RunFwd]
type = ChangeState
value = 100
trigger1 = (command = "FF") && statetype = S && ctrl && (stateno != 100 || stateno != 102)

; Air Run_Fwd
[State -1, AirRunFwd]
type = ChangeState
value = 102
trigger1 = (command = "FF") && statetype = A && ctrl && (stateno != 100 || stateno != 102)
;---------------------------------------------------------------------------
; Run_Back
[State -1, RunBack]
type = ChangeState
value = 105
trigger1 = command = "BB" && statetype = S && ctrl

; Air Run_Back
[State -1, AirRunBack]
type = ChangeState
value = 107
trigger1 = command = "BB" && statetype = A && ctrl && stateno != 105
;---------------------------------------------------------------------------
; Air Run_Up
[State -1, AirUp]
type = ChangeState
value = 109
triggerall = var(4) = 0
trigger1 = command = "UU" && statetype = A && ctrl
trigger2 = command = "UU" && (stateno = [600,650]) && time > 25
;---------------------------------------------------------------------------
;Flight Guard
;[State -1, FlyGuard]
;type = ChangeState
;value = 120
;triggerall = p2movetype = A && ctrl = 1 && stateno = 3100
;trigger1 = command = "holdback"
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
value = 2905
triggerall = (command = "a"  && command = "x") && (prevstateno != 2905 || prevstateno != 2906) && (stateno = 105)
trigger1 = (statetype = S || statetype = A) && ctrl = 1 
;---------------------------------------------------------------------------
; Zanzoken Air Backward
[State -1, Zanzoken.B]
type = ChangeState
value = 2907
triggerall = (command = "a"  && command = "x") && (prevstateno != 2905 || prevstateno != 2906) && (stateno = 107)
trigger1 = (statetype = S || statetype = A) && ctrl = 1 
;---------------------------------------------------------------------------
;Super Saiyan Transformation - Long ver.
[State -1, SSjTrans]
type = ChangeState
value = 4000
triggerall = Var(1) = 0 && var(34) = 0
triggerall = (command = "a" && command = "x") && command != "holddown" && power >= 3000
trigger1 = statetype = S && ctrl
trigger2 = stateno = 3100

;Super Saiyan Transformation - Short ver.
[State -1, SSjTrans]
type = ChangeState
value = 4005
triggerall = Var(1) = 0 && var(34) = 1
triggerall = (command = "a" && command = "x") && command != "holddown" && power >= 3000
trigger1 = statetype = S && ctrl
trigger2 = stateno = 3100
;---------------------------------------------------------------------------
;Charge Up/Power Up Human
[State -1, ChargePowerH]
type = ChangeState
value = 1700
triggerall = ((var(1) = 0 && power < 3000 && time > 2) || (var(1) != 0 && power < 2750 && time > 2)) && var(39) = 0
trigger1 = command = "hold_a" && command = "hold_x" && statetype = S && ctrl = 1 && command != "holdfwd"
trigger2 = command = "hold_a" && command = "hold_x" && stateno = 3100 && command != "holdfwd"
;---------------------------------------------------------------------------
;Charge Up/Power Up AI
[State -1, ChargePowerAI]
type = ChangeState
value = 1700
triggerall = (var(1) = 0 && power < 3000 && time > 2) && var(39) = 1 && p2bodydist x > 100
trigger1 = command = "hold_a" && command = "hold_x" && statetype = S && ctrl = 1 && command != "holdfwd"
trigger2 = command = "hold_a" && command = "hold_x" && stateno = 3100 && command != "holdfwd"
;---------------------------------------------------------------------------
; Shoulder Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = (command = "x" && command = "y") && statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 3 && (p2statetype = S || p2statetype = C) && p2movetype != H
trigger2 = command = "holdback" && p2bodydist X < 5 && (p2statetype = S || p2statetype = C) && p2movetype != H
;trigger3 = stateno = 3100
;---------------------------------------------------------------------------
; Knee Basher
[State -1, KneeBash]
type = ChangeState
value = 900
triggerall = (command = "a" && command = "b") && statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 3 && (p2statetype = S || p2statetype = C) && p2movetype != H
trigger2 = command = "holdback" && p2bodydist X < 5 && (p2statetype = S || p2statetype = C) && p2movetype != H
;trigger3 = stateno = 3100
;---------------------------------------------------------------------------
; Advance Guard
[State -1, Advance Guard]
type = ChangeState
value = 330
triggerall = ((command = "x" && command = "y") || (command = "x" && command = "z") || (command = "z" && command = "y")) && command != "holddown" && power >= 200
trigger1 = stateno = [150, 156]
;---------------------------------------------------------------------------
; Dashing Strong Kick
[State -1, Dashing Strong Kick]
type = ChangeState
value = 250
triggerall = (command = "a" || command = "b" || command = "c") && command != "holddown"
trigger1 = stateno = 100 || stateno = 101
;---------------------------------------------------------------------------
; Ki Launcher
[State -1, KiLaunch]
type = ChangeState
value = 1000
triggerall = command = "QCB_x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = [200, 260]) && (movecontact)
trigger3 = (stateno = [1100, 1399]) && (movecontact)
trigger4 = stateno = 3100
;---------------------------------------------------------------------------
; 2x Ki Launch 
[State -1, 2xKiLaunch]
type = ChangeState
value = 1010
triggerall = command = "QCB_y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = [200, 260]) && (movecontact)
trigger3 = (stateno = [1100, 1399]) && (movecontact)
trigger4 = stateno = 3100
;---------------------------------------------------------------------------
; 3x Ki Launch
[State -1, 3xKiLaunch]
type = ChangeState
value = 1020
triggerall = command = "QCB_z" && command != "holddown"
trigger1 = statetype = S && ctrl = 1 
trigger2 = (stateno = [200, 260]) && (movecontact)
trigger3 = (stateno = [1100, 1399]) && (movecontact)
trigger4 = stateno = 3100
;---------------------------------------------------------------------------
; Ground Spark Weak
[State -1, GSpark.W]
type = ChangeState
value = 1050
triggerall = command = "QCB_a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = [200, 260]) && (movecontact)
trigger3 = (stateno = [1100, 1399]) && (movecontact)
trigger4 = stateno = 3100
;---------------------------------------------------------------------------
; Ground Spark Medium
[State -1, GSpark.M]
type = ChangeState
value = 1060
triggerall = command = "QCB_b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = [200, 260]) && (movecontact)
trigger3 = (stateno = [1100, 1399]) && (movecontact)
trigger4 = stateno = 3100
;---------------------------------------------------------------------------
; Ground Spark Strong
[State -1, GSpark.S]
type = ChangeState
value = 1070
triggerall = command = "QCB_c" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = [200, 260]) && (movecontact)
trigger3 = (stateno = [1100, 1399]) && (movecontact)
trigger4 = stateno = 3100
;---------------------------------------------------------------------------
; Shououken Weak
[State -1, Shououken.W]
type = ChangeState
value = 1100
triggerall = (command = "QCF_x")
trigger1 = statetype = S && ctrl
trigger2 = (stateno = [200,260]) && movecontact
trigger3 = stateno = 3100
;---------------------------------------------------------------------------
; Shououken Medium
[State -1, Shououken.M]
type = ChangeState
value = 1110
triggerall = (command = "QCF_y")
trigger1 = statetype = S && ctrl
trigger2 = (stateno = [200,260]) && movecontact
trigger3 = stateno = 3100
;---------------------------------------------------------------------------
; Shououken Strong
[State -1, Shououken.S]
type = ChangeState
value = 1120
triggerall = (command = "QCF_z")
trigger1 = statetype = S && ctrl
trigger2 = (stateno = [200,260]) && movecontact
trigger3 = stateno = 3100
;---------------------------------------------------------------------------
; Air Shououken Weak
[State -1, Shououken.W]
type = ChangeState
value = 1150
triggerall = (command = "QCF_x") && !(Var(1) = 1 && power = 0)
trigger1 = statetype = A && ctrl
trigger2 = (stateno = [600,660]) && movecontact
;---------------------------------------------------------------------------
; Air Shououken Medium
[State -1, Shououken.M]
type = ChangeState
value = 1160
triggerall = (command = "QCF_y") && !(Var(1) = 1 && power = 0)
trigger1 = statetype = A && ctrl
trigger2 = (stateno = [600,660]) && movecontact
;---------------------------------------------------------------------------
; Air Shououken Strong
[State -1, Shououken.S]
type = ChangeState
value = 1170
triggerall = (command = "QCF_z") && !(Var(1) = 1 && power = 0)
trigger1 = statetype = A && ctrl
trigger2 = (stateno = [600,660]) && movecontact
;---------------------------------------------------------------------------
; Slide Kick Weak
[State -1, SlideKick.W]
type = ChangeState
value = 1200
triggerall = (command = "FBF_a") && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = [200,260]) && movecontact
;---------------------------------------------------------------------------
; Slide Kick Medium
[State -1, SlideKick.M]
type = ChangeState
value = 1210
triggerall = (command = "FBF_b") && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = [200,260]) && movecontact
;---------------------------------------------------------------------------
; Slide Kick Strong
[State -1, SlideKick.S]
type = ChangeState
value = 1220
triggerall = (command = "FBF_c") && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = [200,260]) && movecontact
;---------------------------------------------------------------------------
; Briefs Dynamite
[State -1, Dynamite]
type = ChangeState
value = 1250
triggerall = (command = "QCF_a"||command = "QCF_b"||command = "QCF_c")
trigger1 = statetype = S && ctrl
trigger2 = (stateno = [200,260]) && movecontact
trigger3 = (stateno = [1100,1121]) && movecontact
trigger4 = (stateno = [1200,1220]) && movecontact
trigger5 = stateno = 3100
;---------------------------------------------------------------------------
; Sonic Kick
[State -1, Sonickick]
type = ChangeState
value = 1300
triggerall = (command = "FBF_a" || command = "FBF_b" || command = "FBF_c") && command != "holddown" && !(Var(1) = 1 && power = 0)
trigger1 = statetype = A && ctrl
trigger2 = (stateno = [600,660]) && movecontact
trigger3 = stateno = 3100
;---------------------------------------------------------------------------
; Uppercut
[State -1, Uppercut]
type = ChangeState
value = 260
triggerall = ((command = "x" && command = "y") || (command = "y" && command = "z")) && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 210 && movecontact
trigger3 = stateno = 240 && movecontact
trigger4 = stateno = 3100
;---------------------------------------------------------------------------
; Kick Downwards Teleport Chain
[State -1, EBTChain]
type = ChangeState
value = 1550
triggerall = (command = "a" || command = "b" || command = "c" || command = "x" || command = "y" || command = "z") && command = "holddown"
trigger1 = (stateno = 250 || stateno = 260 || stateno = 1250) && movehit && time = [14,28]
;---------------------------------------------------------------------------
; Kick Upwards Teleport Chain
[State -1, KUChain]
type = null;ChangeState
value = 1560
triggerall = (command = "a" || command = "b" || command = "c" || command = "x" || command = "y" || command = "z") && command = "holdup"
trigger1 = (stateno = 1500 || stateno = 1510 || stateno = 1520) && movehit && time < 28
;===========================================================================
;-=Basic Attacks=-
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Elbow
[State -1, Elbow]
type = ChangeState
value = 205
triggerall = command = "x" && p2bodydist X <= 5 && command != "holddown" && Var(39) != 1
trigger1 = statetype = S && ctrl
trigger2 = stateno = 3100
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x" && command != "holddown" && Var(39) != 1
trigger1 = statetype = S && ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 400 && movecontact
trigger4 = stateno = 200 && animelem = 3
trigger5 = stateno = 3100
;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y" && command != "holddown" && Var(39) != 1
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 205 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 3100
;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z" && command != "holddown" && Var(39) != 1
trigger1 = statetype = S && ctrl
trigger2 = stateno = 210 && movecontact
trigger3 = stateno = 240 && movecontact
trigger4 = stateno = 3100
;---------------------------------------------------------------------------
; Knee
[State -1, Knee]
type = ChangeState
value = 235
triggerall = command = "a" && p2bodydist X <= 5 && command != "holddown" && Var(39) != 1
trigger1 = statetype = S && ctrl
trigger2 = stateno = 3100
;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a" && command != "holddown" && Var(39) != 1
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 200 && animelem = 3
trigger7 = stateno = 3100
;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b" && command != "holddown" && Var(39) != 1
trigger1 = statetype = S && ctrl
trigger2 = stateno = 210 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 410 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 3100
;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c" && command != "holddown" && Var(39) != 1
trigger1 = statetype = S && ctrl
trigger2 = stateno = 220 && movecontact
trigger3 = stateno = 240 && movecontact
trigger4 = stateno = 3100
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 3100
;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = (command = "x" || command = "y" || command = "z") && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 430 && movecontact
;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = (command = "a" || command = "b" || command = "c") && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 400 && movecontact
;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = (command = "x" || command = "y" || command = "z")&& !(Var(1) = 1 && power = 0)
trigger1 = statetype = A && ctrl
trigger2 = stateno = 630 && movecontact
;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = (command = "a" || command = "b" || command = "c") && !(Var(1) = 1 && power = 0)
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
;---------------------------------------------------------------------------
; Reverse-Transformation 
[State -1, Revert1]
type = ChangeState
value = 4001
triggerall = Var(1) = 1 && stateno != [190,192]
trigger1 = stateno = 5110 && alive = 1 && power <= 0
trigger2 = power <= 0 && (stateno != [1800,2299]) && (stateno != [42,59]) && movetype != H
trigger3 = stateno = 5150 && alive != 1
