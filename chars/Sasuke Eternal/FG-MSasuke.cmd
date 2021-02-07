; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
; 
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10
; 

;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;-| AI Motions |--------------------------------------------------------
[Command]
name = "AI1"
command = D,D,D,F,F,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI2"
command = D,D,D,F,F,U,a+b+c+x+y+z
time = 1

[Command]
name = "AI3"
command = D,D,D,F,F,UF,a+b+c+x+y+z
time = 1

[Command]
name = "AI4"
command = D,D,D,F,F,D,a+b+c+x+y+z
time = 1

[Command]
name = "AI5"
command = D,D,D,F,F,DF,a+b+c+x+y+z
time = 1

[Command]
name = "AI6"
command = D,D,D,F,F,B,a+b+c+x+y+z
time = 1

[Command]
name = "AI7"
command = D,D,D,F,F,DB,a+b+c+x+y+z
time = 1

[Command]
name = "AI8"
command = D,D,D,F,F,UB,a+b+c+x+y+z
time = 1

[Command]
name = "AI9"
command = D,D,D,F,U,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI10"
command = D,D,D,F,UF,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI11"
command = D,D,D,F,DF,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI12"
command = D,D,D,F,D,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI13"
command = D,D,D,F,DB,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI14"
command = D,D,D,F,B,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI15"
command = D,D,D,F,UB,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI16"
command = D,D,D,F,F,F,a+b+c+x+y,z
time = 1

[Command]
name = "AI17"
command = D,D,D,F,F,F,a+b+c+x,y,z
time = 1

[Command]
name = "AI18"
command = D,D,D,F,F,F,a+b+c,x,y,z
time = 1

[Command]
name = "AI19"
command = D,D,D,F,F,F,a+b,c,x,y,z
time = 1

[Command]
name = "AI20"
command = D,D,D,F,F,F,a,b,c,x,y,z
time = 1

[Command]
name = "AI21"
command = D,D,D,F,F,F,a+b+c,x+y+z
time = 1

[Command]
name = "AI22"
command = D,D,D,F,F,U,a+b,c+x+y+z
time = 1

[Command]
name = "AI23"
command = D,D,D,F,F,UF,a,b+c+x+y+z
time = 1

[Command]
name = "AI24"
command = D,D,D,F,F,U,a+b,c+x+y+z
time = 1

[Command]
name = "AI25"
command = D,D,B,F,a
time = 140

[Command]
name = "AI26"
command = D,D,D,F,F,B,a+b,c+x,y+z
time = 1

[Command]
name = "AI27"
command = D,D,D,F,F,DB,a,b+c+x,y+z
time = 1

[Command]
name = "AI28"
command = D,D,D,F,F,UB,a,b+c+x+y,z
time = 1

[Command]
name = "AI29"
command = DF,D,D,F,U,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI30"
command = B,D,D,F,UF,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI31"
command = B,B,BD,F,DF,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI32"
command = D,F,F,F,D,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI33"
command = DF,D,DF,UF,DB,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI34"
command = D,D,D,F,DB,DF,a+b+c+x+y+z
time = 1

[Command]
name = "AI35"
command = D,D,UF,DF,UB,UF,a+b+c+x+y+z
time = 1

[Command]
name = "AI36"
command = D,DF,DF,DF,DF,F,a+b+c+x+y,z
time = 1

[Command]
name = "AI37"
command = D,D,DB,UF,DF,UF,a+b+c+x,y,z
time = 1

[Command]
name = "AI38"
command = F,U,F,F,F,F,a,b+c,x,y,z
time = 1

[Command]
name = "AI39"
command = DF,UF,D,DF,U,F,a+b,c+x,y,z
time = 1

[Command]
name = "AI40"
command = D,D,D,D,F,D,a+b,c,x,y+z
time = 1

[Command]
name = "AI41"
command = D,D,D,F,F,F,a+b+c+x+y+z,a
time = 1

[Command]
name = "AI42"
command = D,D,D,F,F,U,a+b+c+x+y+z,b
time = 1

[Command]
name = "AI43"
command = D,D,D,F,F,UF,a+b+c+x+y+z,c
time = 1

[Command]
name = "AI44"
command = D,D,D,F,F,D,a+b+c+x+y+z,x
time = 1

[Command]
name = "AI44 "
command = ~D,D,F,B,y
time = 60

[Command]
name = "AI45"
command = D,D,D,F,F,DF,a+b+c+x+y+z,y
time = 1

[Command]
name = "AI46"
command = D,D,D,F,F,B,a+b+c+x+y+z,z
time = 1

[Command]
name = "AI47"
command = D,D,D,F,F,DB,a+b+c+x+y+z,a+b
time = 1

[Command]
name = "AI48"
command = D,D,D,F,F,UB,a+b+c+x+y+z,a+c
time = 1

[Command]
name = "AI49"
command = D,D,D,F,U,F,a+b+c+x+y+z,b+c
time = 1

[Command]
name = "AI50"
command = D,D,D,F,UF,F,a+b+c+x+y+z,x+z
time = 1



;-| Super Motions |--------------------------------------------------------

;-| Special Motions |------------------------------------------------------

[Command]
name = "BF_A"
command = B, F, a
time = 15
[Command]
name = "BF_B"
command = B, F, b
time = 15
[Command]
name = "BF_C"
command = B, F, c
time = 15
[Command]
name = "BF_X"
command = B, F, x
time = 15
[Command]
name = "BF_Y"
command = B, F, y
time = 15
[Command]
name = "BF_Z"
command = B, F, z
time = 15

[Command]
name = "QCF_A"
command = D, DF, F, a
time = 15
[Command]
name = "QCF_B"
command = D, DF, F, b
time = 15
[Command]
name = "QCF_C"
command = D, DF, F, c
time = 15
[Command]
name = "QCF_X"
command = D, DF, F, x
time = 15
[Command]
name = "QCF_Y"
command = D, DF, F, y
time = 15
[Command]
name = "QCF_Z"
command = D, DF, F, z
time = 15

[Command]
name = "QCB_A"
command = D, DB, B, a
time = 15
[Command]
name = "QCB_B"
command = D, DB, B, b
time = 15
[Command]
name = "QCB_C"
command = D, DB, B, c
time = 15
[Command]
name = "QCB_X"
command = D, DB, B, x
time = 15
[Command]
name = "QCB_Y"
command = D, DB, B, y
time = 15
[Command]
name = "QCB_Z"
command = D, DB, B, z
time = 15

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
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

;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;-| Hold Button |--------------------------------------------------------------
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
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
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
;---------------------------------------------------------------------------
[State -1, Activate AI]
type = VarSet
triggerall = var(44) = 1
trigger1 = command = "AI1"
trigger2 = command = "AI2"
trigger3 = command = "AI3"
trigger4 = command = "AI4"
trigger5 = command = "AI5"
trigger6 = command = "AI6"
trigger7 = command = "AI7"
trigger8 = command = "AI8"
trigger9 = command = "AI9"
trigger10 = command = "AI10"
trigger11 = command = "AI11"
trigger12 = command = "AI12"
trigger13 = command = "AI13"
trigger14 = command = "AI14"
trigger15 = command = "AI15"
trigger16 = command = "AI16"
trigger17 = command = "AI17"
trigger18 = command = "AI18"
trigger19 = command = "AI19"
trigger20 = command = "AI20"
trigger21 = command = "AI21"
trigger22 = command = "AI22"
trigger23 = command = "AI23"
trigger24 = command = "AI24"
trigger25 = command = "AI24"
trigger26 = command = "AI26"
trigger27 = command = "AI27"
trigger28 = command = "AI28"
trigger29 = command = "AI29"
trigger30 = command = "AI30"
trigger31 = command = "AI31"
trigger32 = command = "AI32"
trigger33 = command = "AI33"
trigger34 = command = "AI34"
trigger35 = command = "AI35"
trigger36 = command = "AI36"
trigger37 = command = "AI37"
trigger38 = command = "AI38"
trigger39 = command = "AI39"
trigger40 = command = "AI40"
trigger41 = command = "AI41"
trigger42 = command = "AI42"
trigger43 = command = "AI43"
trigger44 = command = "AI44"
trigger45 = command = "AI45"
trigger46 = command = "AI46"
trigger47 = command = "AI47"
trigger48 = command = "AI48"
trigger49 = command = "AI49"
trigger50 = command = "AI50"
v = 44
value = 2
;===========================================================================
;---------------------------------------------------------------------------
[State -1, Dash]
type = ChangeState
value = 100
triggerall = statetype = S || statetype = A
triggerall = p2dist x > 50
triggerall = ctrl
trigger1 = command = "FF"
trigger2 = var(44) = 2
trigger2 = p2dist x = [80,250]
trigger2 = random = [0,600]

;---------------------------------------------------------------------------
[State -1, Backflip]
type = ChangeState
value = 105
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "BB"
trigger2 = var(44) = 2
trigger2 = p2dist x = [0,40]
trigger2 = p2movetype = A


[State -1, Retreat]
type = ChangeState
triggerall = command = "AI44 "
triggerall = !IsHelper
triggerall = numhelper(1041) = 0
trigger1 = statetype != A
trigger1 = ctrl
value = 1170

;---------------------------------------------------------------------------
[State -1, Super Jump]
type = ChangeState
value = 39
trigger1 = command = "up"
trigger1 = stateno = 11 && time > 10 || stateno = 0 && prevstateno = 12 && time < 10
trigger2 = var(44) = 2
trigger2 = statetype = S && ctrl
trigger2 = p2dist y < -300

;---------------------------------------------------------------------------
[State -1, Wall Walk]
type = ChangeState
value = 520
trigger1 = command = "back"
trigger1 = backedgedist < 20
trigger1 = stateno = 50
trigger1 = prevstateno != [520,525]
trigger1 = numhelper(1041) = 0
trigger1 = var(44) != 2
trigger1 = ctrl

[State -1, Teleport]
type = ChangeState
value = 500
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "s"
trigger2 = var(44) = 2
trigger2 = p2dist x > 250

;---------------------------------------------------------------------------
[State -1, Chakra Charge]
type = ChangeState
value = 570
triggerall = statetype = S
triggerall = ctrl
triggerall = var(42) = 1
trigger1 = command = "hold_a" && command = "hold_b"

[State -1, Kirin]
type = ChangeState
value = 980
trigger1 = command = "a"
trigger1 = command = "holddown"
triggerall = var(8) = 0
triggerall = var(18) = 1
triggerall = !IsHelper
triggerall = numhelper(1041) = 0
triggerall = statetype = C
triggerall = ctrl
trigger2 = var(44) = 2
trigger2 = p2dist x > 70
trigger2 = p2life <= 500
trigger2 = random < 555

[State -1, Kirin V2]
type = ChangeState
value = 990
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = var(8) = 0
triggerall = var(18) = 1
triggerall = !IsHelper
triggerall = numhelper(1041) = 0
triggerall = teammode = Single || teammode = Turns
triggerall = enemy,teammode = Single || enemy,teammode = Turns
triggerall = var(44) != 2
trigger1 = statetype = C
trigger1 = ctrl

[State -1, Fuuma Shuriken]
type = ChangeState
value = 380
trigger1 = command = "BF_Z"
trigger1 = var(44) != 2
triggerall = var(8) = 0
triggerall = !IsHelper
triggerall = var(10) < 3
triggerall = numhelper(1041) = 0
triggerall= statetype = S
triggerall = ctrl

[State -1, Double Chidori]
type = ChangeState
value = 369
trigger1 = command = "BF_C"
trigger1 = var(44) != 2
triggerall = var(8) = 0
triggerall = !IsHelper
triggerall = numhelper(1041) = 0
triggerall = power >= 7000
triggerall= statetype = S
triggerall = ctrl

[State -1, Chidori Nagashi]
type = ChangeState
value = 390
trigger1 = command = "BF_X"
trigger1 = var(44) != 2
triggerall = var(8) = 0
triggerall = !IsHelper
triggerall = numhelper(1041) = 0
triggerall = power >= 5000
triggerall= statetype = S
triggerall = ctrl

[State -1, Katon: Ryuka no Jutsu]
type = ChangeState
value = 360
trigger1 = command = "BF_Y"
trigger1 = var(44) != 2
triggerall = var(8) = 0
triggerall = !IsHelper
triggerall = numhelper(1041) = 0
triggerall = power >= 1000
triggerall= statetype = S
triggerall = ctrl

[State -1, Katon: Goryuka no Jutsu]
type = ChangeState
value = 970
triggerall = numhelper(975) = 0
trigger1 = var(21) = 0
trigger1 = command = "y" && command = "holddown"
triggerall = var(8) = 0
triggerall = !IsHelper
triggerall = numhelper(1041) = 0
triggerall = power >= 7000
triggerall = IfElse(stateno=100,pos y = 0,statetype != A && ctrl)
trigger2 = var(44) = 2
trigger2 = p2dist y < -75
trigger2 = random = [0,333]
trigger3 = var(21) = 1
trigger3 = command = "QCB_Y"
trigger3 = var(44) != 2

[State -1, Chidori Koken]
type = ChangeState
value = 350
triggerall = !IsHelper
triggerall = numhelper(1041) = 0
triggerall = power >= 4000
triggerall = IfElse(stateno=100,pos y = 0,statetype != A && ctrl)
trigger1 = var(21) = 0
trigger1 = command = "z" && command = "holddown"
trigger1 = var(44) != 2
trigger2 = var(44) = 2
trigger2 = p2dist x = [0,50]
trigger2 = random = [0,25]
trigger2 = p2stateno != [5110,5120]
trigger3 = var(21) = 1
trigger3 = command = "QCB_Z"
trigger3 = var(44) != 2

[State -1, Kogeki Modotte]
type = ChangeState
value = 900
triggerall = var(8) = 0
triggerall = !IsHelper
triggerall = numhelper(1041) = 0
triggerall = power >= 4000
triggerall = statetype = S
triggerall = numhelper(1041) = 0
triggerall = ctrl
trigger1 = var(21) = 0
trigger1 = command = "x"
trigger1 = var(44) != 2
trigger2 = var(44) = 2
trigger2 = p2dist x >= 175
trigger2 = random = [600,700]
trigger3 = var(21) = 1
trigger3 = command = "QCF_X"
trigger3 = var(44) != 2

[State -1, Chidori Eiso]
type = ChangeState
value = 910
triggerall = !IsHelper
triggerall = numhelper(1041) = 0
triggerall = power >= 4000
triggerall = IfElse(stateno=100,pos y = 0,statetype != A && ctrl)
triggerall = numhelper(1041) = 0
trigger1 = var(21) = 0
trigger1 = command = "x" && command = "holddown"
trigger1 = var(44) != 2
trigger2 = var(44) = 2
trigger2 = p2dist x = [0,50]
trigger2 = random = [25,50]
trigger2 = p2stateno != [5110,5120]
trigger3 = var(21) = 1
trigger3 = command = "QCB_X"
trigger3 = var(44) != 2

[State -1, Chidori Senbon]
type = ChangeState
value = 950
trigger1 = var(21) = 0
trigger1 = command = "c"
trigger1 = var(44) != 2
triggerall = var(8) = 0
triggerall = !IsHelper
triggerall = numhelper(1041) = 0
triggerall = power >= 3000
triggerall = statetype = C
triggerall = ctrl
trigger2 = var(44) = 2
trigger2 = p2dist x = [0,50]
trigger2 = random = [50,65]
trigger2 = p2stateno != [5110,5120]
trigger3 = var(21) = 1
trigger3 = command = "QCB_C"
trigger3 = var(44) != 2

[State -1, Chidori]
type = ChangeState
value = 920
trigger1 = var(21) = 0
trigger1 = command = "c"
trigger1 = var(44) != 2
triggerall = var(8) = 0
triggerall = !IsHelper
triggerall = numhelper(1041) = 0
triggerall = power >= 2000
triggerall = statetype = S
triggerall = ctrl
trigger2 = var(44) = 2
trigger2 = p2dist x >= 175
trigger2 = random = [701,800]
trigger3 = var(21) = 1
trigger3 = command = "QCF_C"
trigger3 = var(44) != 2

[State -1, Katon: Gokakyu no Jutsu]
type = ChangeState
value = 940
trigger1 = var(21) = 0
trigger1 = command = "y"
trigger1 = var(44) != 2
triggerall = var(8) = 0
triggerall = !IsHelper
triggerall = numhelper(1041) = 0
triggerall = power >= 5000
triggerall= statetype = S
triggerall = ctrl
trigger2 = var(44) = 2
trigger2 = p2dist x >= 175
trigger2 = var(19) = 0
trigger2 = random = [801,900]
trigger3 = var(21) = 1
trigger3 = command = "QCF_Y"
trigger3 = var(44) != 2

[State -1, Shuriken Rendan]
type = ChangeState
value = 960
trigger1 = var(21) = 0
trigger1 = command = "z"
trigger1 = var(44) != 2
triggerall = var(21) = 0
triggerall = var(8) = 0
triggerall = !IsHelper
triggerall = numhelper(1041) = 0
triggerall = statetype = S
triggerall = var(29) = 0
triggerall = ctrl
trigger2 = var(44) = 2
trigger2 = p2dist x >= 175
trigger2 = random = [901,999]
trigger3 = var(21) = 1
trigger3 = command = "QCF_Z"
trigger3 = var(44) != 2

[State -1, Mangekyou Sharingan]
type = ChangeState
value = 1000
trigger1 = command = "a"
trigger1 = var(44) != 2
triggerall = var(8) = 0
triggerall = var(18) = 0
triggerall = var(21) = 0
triggerall = power > 10
triggerall = !IsHelper
triggerall = statetype = C
triggerall = ctrl

[State -1, Mangekyou Sharingan - Menu(?)]
type = Null
value = 1009
triggerall = command = "a"
triggerall = var(8) = 0
triggerall = var(18) = 0
triggerall = var(21) = 1
triggerall = !IsHelper
triggerall = power >= 2000
trigger1 = statetype = C
trigger1 = ctrl

[State -1, Mangekyou Sharingan - Disactivate]
type = ChangeState
value = 1003
triggerall = command = "b"
triggerall = var(8) = 0
triggerall = var(21) = 1
triggerall = numhelper(1041) = 0
triggerall = !IsHelper
trigger1 = statetype = C
trigger1 = ctrl

[State -1, Tsukuyomi Feathers]
type = ChangeState
value = 1070
triggerall = command = "x"
triggerall = var(8) = 0
triggerall = var(21) = 1
triggerall = power >= 4000
triggerall = !IsHelper
trigger1 = statetype = C
trigger1 = ctrl

[State -1, Tsukuyomi]
type = ChangeState
value = 1030
triggerall = command = "x"
triggerall = var(8) = 0
triggerall = var(21) = 1
triggerall = teammode = Single || teammode = Turns
triggerall = enemy,teammode = Single || enemy,teammode = Turns
triggerall = power >= 6000
triggerall = numhelper(1041) = 0
triggerall = !IsHelper
triggerall = numhelper(975) = 0
triggerall = numhelper(1016) = 0
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Amaterasu]
type = ChangeState
value = 1010
triggerall = command = "y"
triggerall = var(8) = 0
triggerall = var(21) = 1
triggerall = !IsHelper
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Don't speak about Itachi]
type = ChangeState
value = 1020
triggerall = command = "y"
triggerall = var(8) = 0
triggerall = var(21) = 1
triggerall = !IsHelper
triggerall = power >= 6000
triggerall = numhelper(1041) = 0
trigger1 = statetype = C
trigger1 = ctrl

[State -1, Susanoo Kokkaku AI]
type = ChangeState
triggerall = command = "AI25"
triggerall = !IsHelper
triggerall = numhelper(1041) = 0
triggerall = teammode = Single && enemy,teammode = Single
trigger1 = statetype != A
trigger1 = ctrl
value = 1190

[State -1, Susanoo Kokkaku]
type = ChangeState
value = 1040
triggerall = command = "c"
triggerall = var(8) = 0
triggerall = var(21) = 1
triggerall = power >= 5000
triggerall = numhelper(1041) = 0
triggerall = !IsHelper
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Semi-Susanoo]
type = ChangeState
value = 1046
triggerall = command = "c"
triggerall = var(8) = 0
triggerall = var(21) = 1
triggerall = power >= 5000
triggerall = numhelper(1041) = 1
triggerall = !IsHelper
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Susanoo Lv.1]
type = ChangeState
value = 1080
triggerall = var(43) = 0
triggerall = command = "c" && command = "holddown"
triggerall = var(8) = 0
triggerall = var(21) = 1
triggerall = power >= 7000
triggerall = numhelper(1041) = 0
triggerall = !IsHelper
trigger1 = statetype = C
trigger1 = ctrl

[State -1, Susanoo Lv.2]
type = ChangeState
value = 1060
triggerall = var(43) = 0
triggerall = command = "z" && command != "holddown"
triggerall = var(8) = 0
triggerall = var(21) = 1
triggerall = power >= 8000
triggerall = numhelper(1041) = 0
triggerall = !IsHelper
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Susanoo Lv.3]
type = ChangeState
value = 1090
triggerall = var(43) = 0
triggerall = command = "z" && command = "holddown"
triggerall = var(8) = 0
triggerall = var(21) = 1
triggerall = power >= 10000
triggerall = numhelper(1041) = 0
triggerall = !IsHelper
trigger1 = statetype = C
trigger1 = ctrl

[State -1, Susanoo Classic]
type = ChangeState
value = 1100
triggerall = var(43) = 1
triggerall = command = "z"
triggerall = var(8) = 0
triggerall = var(21) = 1
triggerall = power >= 7000
triggerall = numhelper(1041) = 0
triggerall = !IsHelper
trigger1 = statetype = S
trigger1 = ctrl

[State -1, 1st Combo]
type = ChangeState
value = 200
triggerall = statetype = S && ctrl || stateno = 100 && pos y = 0
trigger1 = command = "a"
trigger1 = var(44) != 2
trigger2 = var(44) = 2
trigger2 = p2dist x = [0,30]
trigger2 = var(30) = 1
trigger2 = p2stateno != [5110,5120]

[State -1, 2nd Combo]
type = ChangeState
value = 240
triggerall = statetype = S && ctrl || stateno = 100 && pos y = 0
trigger1 = command = "b"
trigger1 = var(44) != 2
trigger2 = var(44) = 2
trigger2 = p2dist x = [0,30]
trigger2 = var(30) = 0
trigger2 = p2stateno != [5110,5120]

[State -1, Taka Kawarimi]
type = ChangeState
value = 550
triggerall = command = "z"
trigger1 = stateno = [5000,5050]
trigger1 = random = [0,200]
trigger1 = var(17) = 0


;--------------------------------------------------------------
;**************************************************************
;--------------------------------------------------------------

[State -1, Combo System: Upwards A 1]
type = ChangeState
value = 300
trigger1 = command = "a"
trigger1 = command = "holdup"
triggerall = var(4) = 1
triggerall = statetype = S
triggerall = var(5) = [1,6]
trigger2 = var(44) = 2
trigger2 = var(30) = 1
trigger2 = var(31) = 3
trigger2 = var(5)>=3 && random = [200,400]

[State -1, Combo System: Upwards B 1]
type = ChangeState
value = 310
trigger1 = command = "b"
trigger1 = command = "holdup"
triggerall = var(4) = 1
triggerall = statetype = S
triggerall = var(5) = [1,6]
trigger2 = var(44) = 2
trigger2 = var(30) = 0
trigger2 = var(31) = 3
trigger2 = var(5)>=3 && random = [200,400]

[State -1, Combo System: Backwards AB 1]
type = ChangeState
value = 340
trigger1 = command = "a" || command = "b"
trigger1 = command = "holdback"
triggerall = var(4) = 1
triggerall = statetype = S
triggerall = var(5) = [1,6]
trigger2 = var(44) = 2
trigger2 = var(31) = 2
trigger2 = var(5)>=3 && random = [200,400]

[State -1, Combo System: Forwards AB 1]
type = ChangeState
value = 320
trigger1 = command = "a" || command = "b"
trigger1 = command = "holdfwd"
triggerall = var(4) = 1
triggerall = statetype = S
triggerall = var(5) = [1,6]
trigger2 = var(44) = 2
trigger2 = var(31) = 1
trigger2 = var(5)>=3 && random = [200,400]

[State -1, Combo System: Downwards AB 1]
type = ChangeState
value = 330
trigger1 = command = "a" || command = "b"
trigger1 = command = "holddown"
triggerall = var(4) = 1
triggerall = statetype = S
triggerall = var(5) = [1,6]
trigger2 = var(44) = 2
trigger2 = var(5)>=3 && random = [200,400]
trigger2 = var(31) = 0

[State -1, Combo System: Neutral A 2]
type = ChangeState
value = 210
triggerall = stateno != 210 && stateno != 220
triggerall = var(4) = 1
triggerall = statetype = S
triggerall = var(5) = [1,3]
trigger1 = command = "a"
trigger2 = var(44) = 2
trigger2 = random < 200 || IfElse(var(5)<3,random > 400,0)
trigger2 = var(30) = 0

[State -1, Combo System: Neutral A 3]
type = ChangeState
value = 220
triggerall = stateno != 220 && stateno != 210
trigger1 = command = "a"
triggerall = var(4) = 1
triggerall = statetype = S
triggerall = var(5) = [4,6]
trigger2 = var(44) = 2
trigger2 = random < 200 || IfElse(var(5)<3,random > 400,0)
trigger2 = var(30) = 0

[State -1, Combo System: Neutral A Finisher]
type = ChangeState
value = 230
trigger1 = command = "a"
triggerall = var(4) = 1
triggerall = statetype = S
triggerall = var(5) >= 7
trigger2 = var(44) = 2
trigger2 = random < 200
trigger2 = var(30) = 0

[State -1, Combo System: Neutral B 2]
type = ChangeState
value = 250
triggerall = stateno != 250 && stateno != 260
trigger1 = command = "b"
triggerall = var(4) = 1
triggerall = statetype = S
triggerall = var(5) = [1,3]
trigger2 = var(44) = 2
trigger2 = random < 200 || IfElse(var(5)<3,random > 400,0)
trigger2 = var(30) = 1

[State -1, Combo System: Neutral B 3]
type = ChangeState
value = 260
triggerall = stateno != 260 && stateno != 250
trigger1 = command = "b"
triggerall = var(4) = 1
triggerall = statetype = S
triggerall = var(5) = [4,6]
trigger2 = var(44) = 2
trigger2 = random < 200 || IfElse(var(5)<3,random > 400,0)
trigger2 = var(30) = 1

[State -1, Combo System: Neutral B Finisher]
type = ChangeState
value = 270
trigger1 = command = "b"
triggerall = var(4) = 1
triggerall = statetype = S
triggerall = var(5) >= 7
trigger2 = var(44) = 2
trigger2 = random < 200
trigger2 = var(30) = 1

[State -1, Combo System: Upwards C Finisher]
type = ChangeState
value = 430
trigger1 = command = "c" && command = "holdup"
triggerall = var(4) = 1
triggerall = statetype = S
triggerall = power >= 1000
triggerall = var(5) = [3,7]
trigger2 = var(44) = 2
trigger2 = random = [400,600)
trigger2 = var(31) = 3

[State -1, Combo System: Forwards C Finisher]
type = ChangeState
value = 420
trigger1 = command = "c" && command = "holdfwd"
triggerall = var(4) = 1
triggerall = statetype = S
triggerall = power >= 1000
triggerall = var(5) = [3,7]
trigger2 = var(44) = 2
trigger2 = random = [400,600)
trigger2 = var(31) = 1

[State -1, Combo System: Backwards C Finisher]
type = ChangeState
value = 410
trigger1 = command = "c" && command = "holdback"
triggerall = var(4) = 1
triggerall = statetype = S
triggerall = power >= 1000
triggerall = var(5) = [3,7]
trigger2 = var(44) = 2
trigger2 = random = [400,600)
trigger2 = var(31) = 2

[State -1, Combo System: Down C Finisher]
type = ChangeState
value = 440
trigger1 = command = "c" && command = "holddown"
triggerall = var(4) = 1
triggerall = statetype = S
triggerall = power >= 1000
triggerall = var(5) = [3,7]

[State -1, Combo System: Neutral C Finisher]
type = ChangeState
value = 400
trigger1 = command = "c"
triggerall = var(4) = 1
triggerall = statetype = S
triggerall = power >= 1000
triggerall = var(5) = [3,7]
trigger2 = var(44) = 2
trigger2 = random = [400,600)
trigger2 = var(31) = 0

[State -1, Combo System: Chidori Eiso]
type = ChangeState
value = 910
triggerall = command = "x"
triggerall = var(8) = 0
triggerall = var(4) = 1
triggerall = !IsHelper
triggerall = statetype = S
triggerall = power >= 5000
triggerall = var(44) != 2
trigger1 = var(5) = [3,7]

[State -1, Combo System: Katon: Gokakyu no Jutsu]
type = ChangeState
value = 940
triggerall = command = "y"
triggerall = var(8) = 0
triggerall = var(4) = 1
triggerall = !IsHelper
triggerall = statetype = S
triggerall = power >= 5000
triggerall = var(44) != 2
trigger1 = var(5) = [3,7]

[State -1, Combo System: Chidori Koken]
type = ChangeState
value = 350
triggerall = command = "z"
triggerall = !IsHelper
triggerall = var(8) = 0
triggerall = var(4) = 1
triggerall = statetype = S
triggerall = power >= 4000
triggerall = var(44) != 2
triggerall = var(25) < 7
trigger1 = var(5) = [3,7]

[State -1, Combo System: Aerial Upwards]
type = ChangeState
value = 610
trigger1 = command = "a" || command = "b"
triggerall = command = "holdup"
triggerall = statetype = A
triggerall = stateno = 50 && prevstateno = 301
trigger2 = var(44) = 2
trigger2 = random = [0,800)
trigger2 = var(31) = 0

[State -1, Combo System: Aerial Downwards]
type = ChangeState
value = 620
trigger1 = command = "a" || command = "b"
triggerall = command = "holddown"
triggerall = statetype = A
triggerall = stateno = 50 && prevstateno = 301
trigger2 = var(44) = 2
trigger2 = random = [0,800)
trigger2 = var(31) = 4

[State -1, Combo System: Aerial Teleport]
type = ChangeState
value = 301
trigger1 = command = "a" || command = "b"
triggerall = var(6) = 1
triggerall = statetype = S
trigger2 = var(44) = 2
trigger2 = random = [0,800)
trigger2 = var(31) = [1,3]

[State -1, Combo System: Aerial Finisher Teleport]
type = ChangeState
value = 302
triggerall = var(6) = 1
triggerall = statetype = S
triggerall = power >= 1000
trigger1 = command = "c"
trigger2 = var(44) = 2
trigger2 = random = [800,999)

;--------------------------------------------------------------
;**************************************************************
;--------------------------------------------------------------
[State -1, Air Chidori]
type = ChangeState
value = 800
trigger1 = command = "c"
trigger1 = var(44) != 2
triggerall = !IsHelper
triggerall = numhelper(1041) = 0
triggerall = power >= 4000
triggerall = statetype = A
triggerall = ctrl
triggerall = (statetype = A && ctrl) || (stateno = 100 && pos y != 0)
trigger2 = var(44) = 2
trigger2 = p2dist y = [-70,-10]
trigger2 = random = [0,200)

[State -1, Chidori Token]
type = ChangeState
value = 830
triggerall = command = "x"
triggerall = !IsHelper
triggerall = var(19) = 1
triggerall = numhelper(1041) = 0
triggerall = power >= 500
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 100 && pos y != 0

[State -1, Katon: Hosenka no Jutsu]
type = ChangeState
value = 810
triggerall = !IsHelper
triggerall = power >= 5000
triggerall = numhelper(1041) = 0
triggerall = (statetype = A && ctrl) || (stateno = 100 && pos y != 0)
trigger1 = command = "y"
trigger1 = var(44) != 2
trigger2 = var(44) = 2
trigger2 = p2dist y = [40,100]
trigger2 = p2dist x >= 40
trigger2 = var(19) = 0 && var(18) = 0
trigger2 = random = [333,555)

[State -1, Kuchiyose no Jutsu]
type = ChangeState
value = 820
trigger1 = command = "z"
trigger1 = var(44) != 2
triggerall = !IsHelper
triggerall = power >= 6000
triggerall = (statetype = A && ctrl) || (stateno = 100 && pos y != 0)
triggerall = numhelper(1041) = 0

[State -1, Aerial Combo]
type = ChangeState
value = 600
trigger1 = var(44) != 2
trigger1 = command = "a" || command = "b"
triggerall = (statetype = A && ctrl) || (stateno = 100 && pos y != 0)
trigger2 = var(44) = 2
trigger2 = p2dist x = [0,40]
trigger2 = p2dist y = [-40,10]
trigger2 = random = [200,800)

