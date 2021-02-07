;18's CMD
;-| Super Motions |--------------------------------------------------------
;--------------------------------------------

[Command]
name = "Searcher-ki-Bomb1"
command = ~D, DB, B, a+b
time = 30

[Command]
name = "Searcher-ki-Bomb2"
command = ~D, DB, B, b+c
time = 30

[Command]
name = "Searcher-ki-Bomb3"
command = ~D, DB, B, a+c
time = 30

;--------------------------------------------
[Command]
name = "DeathBeam1"
command = ~D, DF, F, x+y
time = 30

[Command]
name = "DeathBeam2"
command = ~D, DF, F, y+z
time = 30

[Command]
name = "DeathBeam3"
command = ~D, DF, F, x+z
time = 30

;------------------------------------------
[Command]
name = "KiBeam1"
command = ~D, DB, B, x+y
time = 30

[Command]
name = "KiBeam2"
command = ~D, DB, B, y+z
time = 30

[Command]
name = "KiBeam3"
command = ~D, DB, B, x+z
time = 30

;-| Special Motions |------------------------------------------------------

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
command =  s
time = 60

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
name = "UU"     ;Required (do not remove)
command = U, U
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "fly"
command = b+y
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

;Searcher-ki-Bomb
[State -1, Searcher-ki-Bomb]
type = ChangeState
value = 1850
triggerall = (command = "Searcher-ki-Bomb1" || command = "Searcher-ki-Bomb2" || command = "Searcher-ki-Bomb3") && command != "holddown" && power >= 3000
trigger1 = statetype = S && ctrl
trigger2 = stateno = 3100

;Energy Wave
[State -1, Energy Wave]
type = ChangeState
value = 1800
triggerall = (command = "KiBeam1" || command = "KiBeam2" || command = "KiBeam3") && command != "holddown" && power >= 2000
trigger1 = statetype = S && ctrl
trigger2 = stateno = 3100

;DeathBeam1
[State -1, DeathBeam]
type = ChangeState
value = 1810
triggerall = (command = "DeathBeam1" || command = "DeathBeam2" || command = "DeathBeam3") && command != "holddown" && power >= 1000
trigger1 = statetype = S && ctrl
trigger2 = stateno = 3100



;---------------------------------------------------------------------------
;Chain Mouth Beam
[State -1, Chain Mouth Beam]
type = null; ChangeState
value = 1905
triggerall = (command = "KiBeam1" || command = "KiBeam2" || command = "KiBeam3") && command != "holddown" && power >= 1000
trigger1 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220) && (movecontact)
trigger2 = (stateno = 230 || stateno = 235 || stateno = 240) && (movecontact)
trigger3 = (stateno = [1000, 1003]) && (NumProjID(12110) = 0)
trigger4 = (stateno = 300 || stateno = 310) && (movecontact)





;===========================================================================
;-=Special Attacks/Special Abilities/Throws/Combinations=-
;---------------------------------------------------------------------------
; Fly-Lift Off/Buku Jyutsu(Start)
;[State -1, FlyStart]
;type = ChangeState
;value = 3000
;trigger1 = statetype = S && ctrl = 1 && stateno != 3100 && command != "holdfwd"
;triggerall = command = "fly" && Var(4) = 0
;---------------------------------------------------------------------------
; Fly in action/Buku Jyutsu
;[State -1, Flying]
;type = ChangeState
;value = 3100
;trigger1 = statetype = A && ctrl = 1
;triggerall = command = "fly" && var(4) = 0
;---------------------------------------------------------------------------
; Fall from Flight
;[State -1, Fall]
;type = ChangeState
;value = 3105
;trigger1 = statetype = A && ctrl = 1 && stateno = 3100
;triggerall = command = "fly"
;---------------------------------------------------------------------------
; Fall from Flight2
;[State -1, Fall]
;type = ChangeState
;value = 3105
;triggerall = Var(4) = 1
;trigger1 = stateno = 3100
;---------------------------------------------------------------------------
;Super Jump
[State -1, SuperJump]
type = ChangeState
value = 41
triggerall = (command = "holdup" || (command="a"&&command="b"&&command="c"))
trigger1 = statetype = C && ctrl = 1 && stateno != 3100
trigger2 = (stateno = 250 && movecontact)
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
; Firey Angel Missle
[State -1, FAMissle]
type = ChangeState
value = 1300
triggerall = (command = "FBF_x"||command = "FBF_y"||command = "FBF_z")
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220)&& movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240 || stateno = 250 || stateno = 260)&& movecontact
trigger4 = (stateno = 300 || stateno = 310) && movecontact
trigger5 = (stateno = [400,450]) && movecontact

; Firey Angel Missle aIR
[State -1, FAMissleA]
type = ChangeState
value = 1300
triggerall = (command = "FBF_x"||command = "FBF_y"||command = "FBF_z")
trigger1 = statetype = A && ctrl && stateno != 1303
trigger2 = (stateno = [600,650]) && movecontact
trigger3 = (stateno = [1400,1430]) && movecontact

; Flip Fireball
[State -1, FlipFireball]
type = ChangeState
value = 1350
triggerall = (command = "QCB_x" || command = "QCB_y" || command = "QCB_z")
trigger1 = (stateno = 1303)
;---------------------------------------------------------------------------
; Sliding Fire Sweep
[State -1,SlideKick]
type = ChangeState
value = 1500
triggerall = (command = "DD_a"||command = "DD_b"||command = "DD_c")
trigger1 = (statetype = S || statetype = c) && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220)
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240 || stateno = 250 || stateno = 260)
trigger4 = (stateno = 300 || stateno = 310)
trigger5 = (stateno = [400,450])
;---------------------------------------------------------------------------
; Flame Kick Weak
[State -1, FKickW]
type = ChangeState
value = 1400
triggerall = (command = "QCF_a")&& command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220)
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240 || stateno = 250 || stateno = 260)
trigger4 = (stateno = 300 || stateno = 310)
trigger5 = (stateno = [400,450]) && movecontact

; Flame Kick Medium
[State -1, FKickM]
type = ChangeState
value = 1410
triggerall = (command = "QCF_b")&& command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240 || stateno = 250 || stateno = 260) && movecontact
trigger4 = (stateno = 300 || stateno = 310)
trigger5 = (stateno = [400,450]) && movecontact

; Flame Kick Strong
[State -1, FKickS]
type = ChangeState
value = 1420
triggerall = (command = "QCF_c")&& command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240 || stateno = 250 || stateno = 260) && movecontact
trigger4 = (stateno = 300 || stateno = 310)
trigger5 = (stateno = [400,450]) && movecontact

; Flame Kick Knee Smash Chain
[State -1, FKickChain1]
type = ChangeState
value = 1430
triggerall = (command = "QCF_a" || command = "QCF_b" || command = "QCF_c")&& command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 270) && movecontact
;---------------------------------------------------------------------------
; Flaming Angel Sword Kick
[State -1, Flaming Angel Sword Kick]
type = ChangeState
value = 1450
triggerall = (command = "FBF_a" || command = "FBF_b" || command = "FBF_c")
trigger1 = statetype = A && ctrl
trigger2 = (stateno = [600,650]) && movecontact
trigger3 = (stateno = [1400,1430]) && movecontact
trigger4 = stateno = 3100
;---------------------------------------------------------------------------
; Fireball Forward
[State -1, Fireball.F]
type = ChangeState
value = 1000
triggerall = (command = "QCB_x" || command = "QCB_y" || command = "QCB_z")&& command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240 ||  stateno = 260) && movecontact
trigger4 = (stateno = 300 || stateno = 310)
trigger5 = (stateno = [400,450]) && movecontact


; Fireball Downwards
[State -1, Fireball.D]
type = ChangeState
value = 1020
triggerall = (command = "QCB_x" || command = "QCB_y" || command = "QCB_z") && command != "holddown" ;&& statetype = A && ctrl
trigger1 = statetype = A && ctrl

; Big Fireball Downwards Chain
[State -1, BFireball.DC]
type = ChangeState
value = 1021
triggerall = (command = "QCB_x" || command = "QCB_y" || command = "QCB_z") && command != "holddown" ;&& statetype = A && ctrl
trigger1 = stateno = 1020 && time > 8
;---------------------------------------------------------------------------
; Destructo Disc Low
[State -1, DDiscL]
type = ChangeState
value = 1050
triggerall = (command = "QCB_a")&& command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240 ||  stateno = 260) && movecontact
trigger4 = (stateno = 300 || stateno = 310)
trigger5 = (stateno = [400,450]) && movecontact

; Destructo Disc Mid
[State -1, DDiscM]
type = ChangeState
value = 1051
triggerall = (command = "QCB_b")&& command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240 ||  stateno = 260) && movecontact
trigger4 = (stateno = 300 || stateno = 310)
trigger5 = (stateno = [400,450]) && movecontact

; Destructo Disc High
[State -1, DDiscH]
type = ChangeState
value = 1052
triggerall = (command = "QCB_c")&& command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220)
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240 ||  stateno = 260)
trigger4 = (stateno = 300 || stateno = 310)
trigger5 = (stateno = [400,450]) && movecontact
;---------------------------------------------------------------------------
; Shoulder Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = (command = "x" && command = "y") && statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 5 && (p2statetype = S || p2statetype = C) && p2movetype != H
trigger2 = command = "holdback" && p2bodydist X < 7 && (p2statetype = S || p2statetype = C) && p2movetype != H
trigger3 = stateno = 3100
;---------------------------------------------------------------------------
; Slam (Bam, thank you ma'am!)
[State -1, Throw]
type = ChangeState
value = 900
triggerall = (command = "a" && command = "b") && statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 5 && (p2statetype = S || p2statetype = C) && p2movetype != H
trigger2 = command = "holdback" && p2bodydist X < 7 && (p2statetype = S || p2statetype = C) && p2movetype != H
trigger3 = stateno = 3100
;---------------------------------------------------------------------------
; Advance Guard
[State -1, Advance Guard]
type = ChangeState
value = 330
triggerall = ((command = "x" && command = "y") || (command = "x" && command = "z") || (command = "z" && command = "y")) && command != "holddown" && power >= 200
trigger1 = stateno = [150, 156]
;---------------------------------------------------------------------------
[State -1, 1]
type = ChangeState
value = 1600
triggerall = (command = "HCFHCB_s")
trigger1 = statetype = S && stateno = 195
;===========================================================================
;-=Basic Attacks=-
;---------------------------------------------------------------------------
; Launcher
[State -1, Launcher]
type = ChangeState
value = 250
triggerall = ((command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "z"))
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 235 || stateno = 240 || stateno = 260) && movecontact
;---------------------------------------------------------------------------
; Knee Smash Up
[State -1, KneeUp]
type = ChangeState
value = 270
triggerall = (command = "a" || command = "b" || command = "c") && (command = "holddown" && command = "holdback") && pos y >= 0
trigger1 = (statetype = C || statetype = S) && ctrl
trigger2 = (stateno = [400,450]) && movecontact
trigger3 = (stateno = [200,249]) && movecontact
trigger4 = (stateno = [251,269]) && movecontact
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
; Light High Kick
[State -1, Light H Kick]
type = ChangeState
value = 235
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 230) && movecontact
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
triggerall = command = "c" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 235 || stateno = 260) && movecontact
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
value = 450
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
; Butt Bash
[State -1, Butt Bash]
type = null;ChangeState
value = 650
triggerall = command = "holddown" && (command = "a" || command = "b" || command = "c")
trigger1 = stateno = 630 && movecontact
;---------------------------------------------------------------------------
;Auto Power Up
[State -1, ChargePower]
type = PowerAdd
value = 1
triggerall = stateno != [1000,1059]
trigger1 = 1 && stateno != 190 && alive = 1 && p2life > 0
