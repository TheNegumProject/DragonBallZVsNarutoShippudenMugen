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
[command]
name = "fly1"
command = ~U,x
time = 15

[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
[command]
name = "fly"
command = ~U,s
time = 15

command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.

;-| Super Motions |--------------------------------------------------------

;-| Special Motions |------------------------------------------------------
[Command]
name = "QCB_A"
command = D,DB,B,a
time = 15
[Command]
name = "QCB_B"
command = D,DB,B,b
time = 15
[Command]
name = "QCB_C"
command = D,DB,B,c
time = 15
[Command]
name = "QCB_X"
command = D,DB,B,x
time = 15
[Command]
name = "QCB_Y"
command = D,DB,B,y
time = 15
[Command]
name = "QCF_A"
command = D,DF,F,a
time = 15
[Command]
name = "QCF_B"
command = D,DF,F,b
time = 15
[Command]
name = "QCF_C"
command = D,DF,F,c
time = 15
[Command]
name = "QCF_X"
command = D,DF,F,x
time = 15
[Command]
name = "QCF_Y"
command = D,DF,F,y
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



;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
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

[Command]
name = "SPIN"
command = y
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

;futon
[State -1, futon]
type = ChangeState
value = 165
triggerall = command = "z"
triggerall = var(10) = 0
triggerall = var(20) = 0
triggerall = power>= 100
trigger1 = (statetype = c) && ctrl

[State -1, futon2]
type = ChangeState
value = 1655
triggerall = command = "c"
triggerall = var(10) = 0
triggerall = var(20) = 0
triggerall = power>= 500
trigger1 = (statetype = c) && ctrl

[State -1, dragon]
type = ChangeState
value = 1656
triggerall = command = "x"
triggerall = var(10) = 0
triggerall = var(20) = 0
triggerall = power>= 1500
trigger1 = (statetype = c) && ctrl

[State -1,earth dragon]
type = ChangeState
value = 2757
triggerall = command = "y"
triggerall = var(10) = 0
triggerall = var(20) = 0
triggerall = power>= 700
trigger1 = (statetype = s) && ctrl

[State -1, earth dragon big]
Type = ChangeState
Value = 2759
Triggerall = Command = "y"
Triggerall = Command != "holddown"
triggerall = var(10) = 0
triggerall = var(20) = 0
triggerall = power>= 1500
Trigger1 = StateNo = 2757
Trigger1 = AnimElemTime(11) > 1



[State -1, doton]
type = ChangeState
value = 1654
triggerall = command = "a"
triggerall = var(10) = 0
triggerall = var(20) = 0
triggerall = power>= 1000
trigger1 = (statetype = c) && ctrl

[state -1, rinenngan sword]
type = Changestate
value = 880
triggerall = command = "y"
triggerall = var(10) = 2
Trigger1 = StateType = S
Trigger1 = ctrl


[State -1, Air katon]
type = ChangeState
value = 602
triggerall = power >= 100
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl

;katon
[State -1, katon]
type = ChangeState
value = 555
triggerall = command = "b"
triggerall = var(20) = 0
triggerall = var(10) = 0
triggerall = power>= 2000
trigger1 = (statetype = C) && ctrl

;bansho tenin
[State -1, bansho tenin]
type = ChangeState
value = 443
Triggerall = Command = "b"
triggerall = var(10) = 2
trigger1 = (statetype = s) && ctrl

[State -1, bansho teninup]
type = ChangeState
value = 7955
Triggerall = Command = "a"
triggerall = var(10) = 2
trigger1 = (statetype = s) && ctrl

[State -1, bansho tenindown]
type = ChangeState
value = 7656
Triggerall = Command = "b"
Triggerall = Command != "holddown"
triggerall = var(10) = 2
Trigger1 = StateNo = 7955
Trigger1 = AnimElemTime(3) > 0
trigger1 = (statetype = s) && ctrl

[state -1, air throw]
type = changestate
value = 10301
triggerall = command = "z"
Trigger1 = StateType = A
Trigger1 = ctrl


[State -1, throw]
type = ChangeState
value = 300
triggerall = command = "z"
Triggerall = Command != "holddown"
Trigger1 = StateType = S
Trigger1 = ctrl

[State -1, throw2]
Type = ChangeState
Value = 432
Triggerall = Command = "z"
Triggerall = Command != "holddown"
Trigger1 = StateNo = 300
Trigger1 = AnimElemTime(2) > 1

[State -1, throw3]
Type = ChangeState
Value = 433
Triggerall = Command = "z"
Triggerall = Command != "holddown"
Trigger1 = StateNo = 432
Trigger1 = AnimElemTime(2) > 1

[state -1, flip kick]
Type = changestate
Value = 240
Triggerall = Command = "b"
Triggerall = Command != "holddown"
Trigger1 = StateType = S
Trigger1 = ctrl

[State -1, fan hit 2 ]
Type = ChangeState
Value = 144
Triggerall = Command = "b"
Triggerall = Command != "holddown"
Trigger1 = StateNo = 860
trigger1 = movehit = 1
Trigger1 = AnimElemTime(4) > 0

[State -1, fan hit ]
Type = ChangeState
Value = 860
Triggerall = Command = "b"
Triggerall = Command != "holddown"
Trigger1 = StateNo = 240
Trigger1 = AnimElemTime(3) > 0

[State -1, combo kick]
Type = ChangeState
Value = 440
Triggerall = Command = "b"
Triggerall = Command != "holddown"
Trigger1 = StateNo = 144
Trigger1 = AnimElemTime(6) > 0


[State -1, punch]
Type = ChangeState
Value = 145
Triggerall = Command = "a"
Triggerall = Command != "holddown"
triggerall = var(10) = 0
Trigger1 = StateType = S
Trigger1 = ctrl

[State -1, kick]
Type = ChangeState
Value = 840
Triggerall = Command = "a"
Triggerall = Command != "holddown"
Trigger1 = StateNo = 145
trigger1 = movecontact = 1
Trigger1 = AnimElemTime(2) > 0

[State -1, scratch]
Type = ChangeState
Value = 144
Triggerall = Command = "a"
Triggerall = Command != "holddown"
Trigger1 = StateNo = 840
trigger1 = movehit = 1
Trigger1 = AnimElemTime(3) > 0

[State -1, scratch up]
Type = ChangeState
Value = 1146
Triggerall = Command = "a"
Triggerall = Command != "holddown"
Trigger1 = StateNo = 144
Trigger1 = AnimElemTime(7) > 0

[State -1,fan hit down]
Type = ChangeState
Value = 1147
Triggerall = Command = "a"
Triggerall = Command != "holddown"
Trigger1 = StateNo = 1146
Trigger1 = AnimElemTime(6) > 0

;charge
[State -1, charge]
type = ChangeState
value = 850
triggerall = command = "hold_s"
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
; Wall Jump
[State -1, Wall Jump]
type = ChangeState
value = 56
triggerall = var(10) = 0
triggerall = backedgebodydist <= 1 && backedgebodydist > -1
triggerall = command = "holdfwd"
triggerall = var(0) = 0
triggerall = Pos Y < -60
trigger1 = StateType = A
trigger1 = Ctrl
trigger1 = Vel X <= 0

;-------------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;-------------------------------------------------------------------------------
[State -1, Amaterasu]
type = ChangeState
value = 4123
trigger1 = command = "c"
triggerall = power>= 1500
triggerall = var(20) = 3
trigger1 = statetype = C
trigger1 = ctrl

[State -1, double Amaterasu]
type = ChangeState
value = 4143
trigger1 = command = "b"
triggerall = power>= 3000
triggerall = var(20) = 3
trigger1 = statetype = C
trigger1 = ctrl

[State -1, bird]
type = ChangeState
value = 194
triggerall = command = "a"
triggerall = power>= 1500
triggerall = var(20) = 3
trigger1 = statetype = C
trigger1 = ctrl

[state -1, air hit]
type = changestate
value = 760
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

[state -1, air hit 2]
type = changestate
value = 720
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

[state -1, 3combo move 1 ]
type = changestate
value = 330
trigger1 = command = "c"
triggerall = var(10) = 0
Triggerall = Command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, 3combo move 2]
Type = ChangeState
Value = 360
Triggerall = Command = "c"
Triggerall = Command != "holddown"
Trigger1 = StateNo = 330
Trigger1 = AnimElemTime(3) > 0

[State -1, 3combo move 3]
Type = ChangeState
Value = 1417
Triggerall = Command = "c"
Triggerall = Command != "holddown"
Trigger1 = StateNo = 360
trigger1 = movehit = 1
Trigger1 = AnimElemTime(4) > 0

[State -1, 3combo move 4]
Type = ChangeState
Value = 1416
Triggerall = Command = "c"
Triggerall = Command != "holddown"
Trigger1 = StateNo = 1417
Trigger1 = AnimElemTime(6) > 0



[state -1, shinra tensei ]
Type = Changestate
value = 5998
trigger1 = command = "y"
triggerall = power>= 8000
triggerall = var(10) = 2
trigger1 = statetype = C
trigger1 = ctrl

[state -1, chibaku tensei]
Type = Changestate
value = 7009
trigger1 = command = "x"
triggerall = power>= 9000
triggerall = var(10) = 2
trigger1 = statetype = C
trigger1 = ctrl


[State -1, Amaterasu 2]
type = ChangeState
value = 635
trigger1 = command = "x"
triggerall = power>= 2000
triggerall = var(20) = 3
trigger1 = statetype = C
trigger1 = ctrl

[state -1, shinra tensei 2 ]
type = changestate
value = 765
trigger1 = command = "a"
triggerall = power>= 3000
triggerall = var(10) = 2
trigger1 = statetype = C
trigger1 = ctrl

[State -1, tuton jutsu]
type = ChangeState
value = 313
trigger1 = command = "hold_x"
trigger1 = statetype = S
trigger1 = ctrl


; fly when jumping
[State -1, fly when jumping 1]
type = ChangeState
value = 1900
triggerall = command = "fly"
triggerall = var(10) = 2
trigger1 = statetype = A
trigger1 = ctrl = 1
triggerall = var(33) = 0

; fly when jumping
[State -1, fly when jumping 2]
type = ChangeState
value = 1900
triggerall = command = "fly1"
triggerall = var(10) = 2
trigger1 = statetype = A
trigger1 = ctrl = 1
triggerall = var(33) = 0

[State -1, fly stance]
type = ChangeState
value = 50
triggerall = command = "fly"
triggerall = var(10) = 2
trigger1 = stateno = 1900
trigger1 = statetype = S
trigger1 = ctrl = 0
triggerall = var(33) = 0

[State -1, Fly]
type = ChangeState
triggerall = Var(15)= 1 && movetype != H && (p2statetype = A || p2statetype = S)
trigger1 = ctrl = 1 && alive = 1 && p2dist Y< -30 && p2movetype != A && pos Y= 0 && random = 850
trigger1 = P2Life > 0 && p2stateno != 40 && p2stateno != 45 && p2stateno != 50 && p2stateno != 51 && p2stateno != 52
trigger2 = random = 200 && ctrl = 1
value = 1800
triggerall = var(33) = 0

[State -1, Fly]
type = ChangeState
triggerall = Var(15)= 1 && movetype != H && (p2statetype = A || p2statetype = S)
trigger1 = ctrl = 1 && alive = 1 && p2dist Y< -30 && p2movetype != A && pos Y <-50
trigger1 = P2Life > 0 && p2stateno != 40 && p2stateno != 45 && p2stateno != 50 && p2stateno != 51 && p2stateno != 52
trigger2 = random = 200 && ctrl = 1
value = 1900
triggerall = var(33) = 0

[State -1, Fly]
type = ChangeState
triggerall = Var(15)= 1 && movetype != H && stateno = 1900
trigger1 = alive = 1 && p2statetype = S && p2dist Y> 100
trigger1 = P2Life > 0 && p2stateno = 0 || p2stateno = 20 || p2stateno = 11
trigger2 = p2statetype != A && time > 90 && pos Y!= 0
value = 50
triggerall = var(33) = 0

[State -3, AirGuard]
type = ChangeState
triggerall = (Var(0) = 1) && (StateType = A) && (Pos Y < 0) && (P2BodyDist Y >= -120)
triggerall = (StateType = A) && (P2MoveType = A)
trigger1 = ((P2BodyDist X <= 120) && (Ctrl)) || (StateNo = [140, 155])
value = 132
triggerall = var(33) = 0



[state -1, rinenngan mode ]
type = changestate
value = 8000
trigger1 = command = "s"
triggerall = var(10) = 0
triggerall = var(20) = 0
triggerall = power>= 5000
trigger1 = statetype = C
trigger1 = ctrl

[state -1, rinenngan mode off ]
type = changestate
value = 90031
trigger1 = command = "s"
triggerall = var(10) = 2
trigger1 = statetype = C
trigger1 = ctrl


[state -1, rinenngedo]
type = changestate
value = 5462
trigger1 = command = "c"
triggerall = var(10) = 2
triggerall = power>= 4000
trigger1 = statetype = s
trigger1 = ctrl

[state -1, gedo mazo]
type = changestate
value = 6136
trigger1 = command = "z"
triggerall = var(10) = 2
triggerall = power>= 4000
trigger1 = statetype = c
trigger1 = ctrl


[state -1, sharingan mode ]
type = changestate
value = 9900
trigger1 = command = "y"
triggerall = var(20) = 0
triggerall = var(10) = 0
triggerall = power>= 5000
trigger1 = statetype = C
trigger1 = ctrl

[state -1, sharingan mode off ]
type = changestate
value = 90310
trigger1 = command = "y"
triggerall = var(20) = 3
trigger1 = statetype = C
trigger1 = ctrl

[State -1, amaterasu clone]
type = ChangeState
value = 505
triggerall = power >= 450
triggerall = var(20) = 3
triggerall = stateno = [5000,5999]
trigger1 = movetype = H

