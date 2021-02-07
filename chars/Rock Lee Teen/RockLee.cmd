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
;-| AI |--------------------------------------------------------
[Command]
name = "CPU1"
command = D,D,D,F,F,F,a+b+c+x+y+z
time = 1

[Command]
name = "CPU2"
command = D,D,D,F,F,U,a+b+c+x+y+z
time = 1

[Command]
name = "CPU3"
command = D,D,D,F,F,UF,a+b+c+x+y+z
time = 1

[Command]
name = "CPU4"
command = D,D,D,F,F,D,a+b+c+x+y+z
time = 1

[Command]
name = "CPU5"
command = D,D,D,F,F,DF,a+b+c+x+y+z
time = 1

[Command]
name = "CPU6"
command = D,D,D,F,F,B,a+b+c+x+y+z
time = 1

[Command]
name = "CPU7"
command = D,D,D,F,F,DB,a+b+c+x+y+z
time = 1

[Command]
name = "CPU8"
command = D,D,D,F,F,UB,a+b+c+x+y+z
time = 1

[Command]
name = "CPU9"
command = D,D,D,F,U,F,a+b+c+x+y+z
time = 1

[Command]
name = "CPU10"
command = D,D,D,F,UF,F,a+b+c+x+y+z
time = 1

[Command]
name = "CPU11"
command = D,D,D,F,DF,F,a+b+c+x+y+z
time = 1

[Command]
name = "CPU12"
command = D,D,D,F,D,F,a+b+c+x+y+z
time = 1

[Command]
name = "CPU13"
command = D,D,D,F,DB,F,a+b+c+x+y+z
time = 1

[Command]
name = "CPU14"
command = D,D,D,F,B,F,a+b+c+x+y+z
time = 1

[Command]
name = "CPU15"
command = D,D,D,F,UB,F,a+b+c+x+y+z
time = 1

[Command]
name = "CPU16"
command = D,D,D,F,F,F,a+b+c+x+y,z
time = 1

[Command]
name = "CPU17"
command = D,D,D,F,F,F,a+b+c+x,y,z
time = 1

[Command]
name = "CPU18"
command = D,D,D,F,F,F,a+b+c,x,y,z
time = 1

[Command]
name = "CPU19"
command = D,D,D,F,F,F,a+b,c,x,y,z
time = 1

[Command]
name = "CPU20"
command = D,D,D,F,F,F,a,b,c,x,y,z
time = 1

[Command]
name = "CPU21"
command = D,D,D,F,F,F,a+b+c,x+y+z
time = 1

[Command]
name = "CPU22"
command = D,D,D,F,F,U,a+b,c+x+y+z
time = 1

[Command]
name = "CPU23"
command = D,D,D,F,F,UF,a,b+c+x+y+z
time = 1

[Command]
name = "CPU24"
command = D,D,D,F,F,U,a+b,c+x+y+z
time = 1

[Command]
name = "CPU25"
command = D,D,D,F,F,DF,a,b,c+x+y+z
time = 1

[Command]
name = "CPU26"
command = D,D,D,F,F,B,a+b,c+x,y+z
time = 1

[Command]
name = "CPU27"
command = D,D,D,F,F,DB,a,b+c+x,y+z
time = 1

[Command]
name = "CPU28"
command = D,D,D,F,F,UB,a,b+c+x+y,z
time = 1

[Command]
name = "CPU29"
command = DF,D,D,F,U,F,a+b+c+x+y+z
time = 1

[Command]
name = "CPU30"
command = B,D,D,F,UF,F,a+b+c+x+y+z
time = 1

;-| Super Motions |--------------------------------------------------------
[Command] ;Two quarter circles forward + x
name = "2QCF_x"
command = ~D, DF, F, D, DF, F, x

[Command] ;Two quarter circles backward + x
name = "2QCB_x"
command = ~D, DB, B, D, DB, B, x

[Command] ;Two quarter circles forward + a
name = "2QCF_a"
command = ~D, DF, F, D, DF, F, a

[Command] ;Two quarter circles backward + a
name = "2QCB_a"
command = ~D, DB, B, D, DB, B, a

;-| Special Motions |------------------------------------------------------
[Command] ;Quarter circle forward + a
name = "QCF_a"
command = ~D, DF, F, a

[Command] ;Quarter circle backward + a
name = "QCB_a"
command = ~D, DB, B, a

[Command] ;Quarter circle forward + b
name = "QCF_b"
command = ~D, DF, F, b

[Command] ;Quarter circle backward + b
name = "QCB_b"
command = ~D, DB, B, b

[Command] ;Quarter circle forward + c
name = "QCF_c"
command = ~D, DF, F, c

[Command] ;Quarter circle forward + c
name = "QCF_x"
command = ~D, DF, F, x

[Command] ;Quarter circle backward + x
name = "QCB_x"
command = ~D, DB, B, x

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

[Command]
name = "a+b"
command = a+b
time = 1

[Command]
name = "a+x"
command = a+x
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

[State -1, AI]
type = VarSet
triggerall = var(10) != 1
trigger1 = command = "CPU1"
trigger2 = command = "CPU2"
trigger3 = command = "CPU3"
trigger4 = command = "CPU4"
trigger5 = command = "CPU5"
trigger6 = command = "CPU6"
trigger7 = command = "CPU7"
trigger8 = command = "CPU8"
trigger9 = command = "CPU9"
trigger10 = command = "CPU10"
trigger11 = command = "CPU11"
trigger12 = command = "CPU12"
trigger13 = command = "CPU13"
trigger14 = command = "CPU14"
trigger15 = command = "CPU15"
trigger16 = command = "CPU16"
trigger17 = command = "CPU17"
trigger18 = command = "CPU18"
trigger19 = command = "CPU19"
trigger20 = command = "CPU20"
trigger21 = command = "CPU21"
trigger22 = command = "CPU22"
trigger23 = command = "CPU23"
trigger24 = command = "CPU24"
trigger25 = command = "CPU25"
trigger26 = command = "CPU26"
trigger27 = command = "CPU27"
trigger28 = command = "CPU28"
trigger29 = command = "CPU29"
trigger30 = command = "CPU30"
var(10) = 1

;===========================================================================
;---------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------
; Crouch Walk Fwd
[State -1, Crouch Walk Fwd]
type = ChangeState
value = 13
trigger1 = command = "holdfwd"
trigger1 = statetype = c
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouch Walk Back
[State -1, Crouch Walk Back]
type = ChangeState
value = 13
trigger1 = command = "holdback"
trigger1 = statetype = c
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Dodge
[State -1, Dodge]
type = ChangeState
value = 800
triggerall = command = "a+b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Counter
[State -1, Counter]
type = ChangeState
value = 810
triggerall = command = "a+x" && power >= 500
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
; Super Kick
[State -1, Super Kick]
type = ChangeState
value = 1500
triggerall = command = "2QCB_x"  && power >= 1000
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Omote Renge
[State -1, Omote Renge]
type = ChangeState
value = 1600
triggerall = command = "2QCF_x"  && power >= 1500
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Ultra Smash
[State -1, Ultra Smash]
type = ChangeState
value = 2000
triggerall = command = "2QCB_a"  && power >= 2000
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Ura Renge
[State -1, Ura Renge]
type = ChangeState
value = 2500
triggerall = command = "2QCF_a"  && power >= 3000
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Asakujaku Fist
[State -1, Asakujaku Fist]
type = ChangeState
value = 1000
triggerall = command = "QCF_a"  && power >= 100
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Asakujaku Strike
[State -1, Asakujaku Strike]
type = ChangeState
value = 1100
triggerall = command = "QCF_b"  && power >= 100
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Asakujaku Bomb
[State -1, Asakujaku Bomb]
type = ChangeState
value = 1200
triggerall = command = "QCF_c"  && power >= 100
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stunner
[State -1, Stunner]
type = ChangeState
value = 900
triggerall = command = "QCF_x"  && power >= 200
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Charged Punch
[State -1, Charged Punch]
type = ChangeState
value = 1300
triggerall = command = "QCB_x"  && power >= 150
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Konoha Senpuu
[State -1, Konoha Senpuu]
type = ChangeState
value = 1400
triggerall = command = "QCB_a" && power >= 200
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Konoha Renpuu
[State -1, Konoha Renpuu]
type = ChangeState
value = 1450
triggerall = command = "QCB_b" && power >= 300
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Teleport
[State -1, Teleport]
type = ChangeState
value = 700
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Air Teleport
[State -1, Air Teleport]
type = ChangeState
value = 701
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 700 && time > 18

;---------------------------------------------------------------------------
; Stand Elbow
[State -1, Stand Elbow]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && time > 8
trigger3 = stateno = 400 && time > 16
trigger4 = stateno = 410 && time > 20
trigger5 = stateno = 700 && time > 18

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && time > 8
trigger3 = stateno = 210 && time > 11
trigger4 = stateno = 400 && time > 16
trigger5 = stateno = 410 && time > 20
trigger6 = stateno = 700 && time > 18

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && time > 8
trigger3 = stateno = 210 && time > 11
trigger4 = stateno = 700 && time > 18

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && time > 16
trigger3 = stateno = 200 && time > 8
trigger4 = stateno = 210 && time > 11
trigger5 = stateno = 700 && time > 18

;---------------------------------------------------------------------------
; Crouching Lunching Kick
[State -1, Crouching Lunching Kick]
type = ChangeState
value = 420
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && time > 16
trigger3 = stateno = 410 && time > 20
trigger4 = stateno = 200 && time > 8
trigger5 = stateno = 210 && time > 11
trigger6 = stateno = 700 && time > 18

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger5 = stateno = 701 && time > 18

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && time > 10
trigger3 = stateno = 610 && time > 20
trigger4 = stateno = 700 && time > 18

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && time > 10
trigger3 = stateno = 610 && time > 20
trigger4 = stateno = 700 && time > 18

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 750
triggerall = command = "y" && power < 3000
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; AI light Punch
[State -1, AI light Punch]
type = ChangeState
value = 200
triggerall = var(10) = 1
triggerall = statetype = S
triggerall = movetype != H
triggerall = statetype != L
triggerall = P2life > 0
triggerall = P2statetype != A
triggerall = P2statetype != L
trigger1 = ctrl = 1 && random <= 750 && p2dist x <= 10
persistent = 0

;---------------------------------------------------------------------------
; AI Elbow
[State -1, AI Elbow]
type = ChangeState
value = 210
triggerall = var(10) = 1
triggerall = statetype = S
triggerall = movetype != H
triggerall = statetype != L
triggerall = P2life > 0
triggerall = P2statetype != A
triggerall = P2statetype != L
trigger1 = stateno = 200 && time > 8
persistent = 0

;---------------------------------------------------------------------------
; AI Strong Punch
[State -1, AI Strong Punch]
type = ChangeState
value = ifelse(random <= 500, 220, 420)
triggerall = var(10) = 1
triggerall = statetype = S
triggerall = movetype != H
triggerall = statetype != L
triggerall = P2life > 0
triggerall = P2statetype != A
triggerall = P2statetype != L
trigger1 = stateno = 210 && time > 11
persistent = 0

;---------------------------------------------------------------------------
; AI Crounching light Punch
[State -1, AI Crounching light Punch]
type = ChangeState
value = 400
triggerall = var(10) = 1
triggerall = statetype = C
triggerall = movetype != H
triggerall = statetype != L
triggerall = P2life > 0
triggerall = P2statetype != A
triggerall = P2statetype != L
trigger1 = ctrl = 1 && random <= 750 && p2dist x <= 10
persistent = 0

;---------------------------------------------------------------------------
; AI Crounching Strong Punch
[State -1, AI Crounching Strong Punch]
type = ChangeState
value = 410
triggerall = var(10) = 1
triggerall = statetype = C
triggerall = movetype != H
triggerall = statetype != L
triggerall = P2life > 0
triggerall = P2statetype != A
triggerall = P2statetype != L
trigger1 = stateno = 400 && time > 16
persistent = 0

;---------------------------------------------------------------------------
; AI Crounching Kick
[State -1, AI Crounching Kick]
type = ChangeState
value = 420
triggerall = var(10) = 1
triggerall = statetype = C
triggerall = movetype != H
triggerall = statetype != L
triggerall = P2life > 0
triggerall = P2statetype != A
triggerall = P2statetype != L
trigger1 = stateno = 410 && time > 20
persistent = 0

;---------------------------------------------------------------------------
; AI Air light Punch
[State -1, AI Air light Punch]
type = ChangeState
value = 600
triggerall = var(10) = 1
triggerall = statetype = A
triggerall = movetype != H
triggerall = statetype != L
triggerall = P2life > 0
triggerall = P2statetype = A
triggerall = P2statetype != L
trigger1 = ctrl = 1 && random <= 750 && p2dist x <= 10 && p2dist y <= 23 && random <= 200
persistent = 0

;---------------------------------------------------------------------------
; AI Air Leap
[State -1, AI Air Leap]
type = ChangeState
value = 610
triggerall = var(10) = 1
triggerall = statetype = C
triggerall = movetype != H
triggerall = statetype != L
triggerall = P2life > 0
triggerall = P2statetype != L
trigger1 = stateno = 400 && time > 16
trigger2 = ctrl = 1 && p2dist x <= 50 && random <= 500
persistent = 0

;---------------------------------------------------------------------------
; AI Air Kick
[State -1, AI Air Kick]
type = ChangeState
value = 620
triggerall = var(10) = 1
triggerall = statetype = A
triggerall = movetype != H
triggerall = statetype != L
triggerall = P2life > 0
triggerall = P2statetype != L
trigger1 = stateno = 410 && time > 20
trigger2 = ctrl = 1 && p2dist x <= 10 && p2dist y <= 23 && random >= 500
trigger3 = stateno = 1450 && time > 64
persistent = 0

;---------------------------------------------------------------------------
; AI Teleport
[State -1, AI Teleport]
type = ChangeState
value = 700
triggerall = var(10) = 1
triggerall = statetype != A
triggerall = movetype != H
triggerall = statetype != L
triggerall = P2life > 0
trigger1 = ctrl = 1 && p2dist x >= 60 && prevstateno != 700 && random <= 650
trigger2 = ctrl = 1 && P2movetype = A && prevstateno != 700

;---------------------------------------------------------------------------
; AI Air Teleport
[State -1, AI Air Teleport]
type = ChangeState
value = 701
triggerall = var(10) = 1
triggerall = statetype = A
triggerall = movetype != H
triggerall = statetype != L
triggerall = P2life > 0
trigger1 = ctrl = 1 && p2dist x >= 60 && prevstateno != 701 && random <= 650
trigger2 = ctrl = 1 && P2movetype = A && prevstateno != 701

;---------------------------------------------------------------------------
; AI Chakra Charge
[State -1, AI Chakra Charge]
type = ChangeState
value = 750
triggerall = var(10) = 1
triggerall = statetype != A
triggerall = movetype != H
triggerall = statetype != L
triggerall = P2life > 0
triggerall = P2statetype = L
trigger1 = ctrl = 1 && power < 3000 && random >= 700 && prevstateno != 750

;---------------------------------------------------------------------------
; AI Stunner
[State -1, AI Stunner]
type = ChangeState
value = 900
triggerall = var(10) = 1
triggerall = statetype != A
triggerall = movetype != H
triggerall = statetype != L
triggerall = P2life > 0
triggerall = P2statetype != L
trigger1 = ctrl = 1 && p2dist x >= 50 && power >= 200 && random >= 400 && prevstateno != 900

;---------------------------------------------------------------------------
; AI Konoha Senpuu
[State -1, AI Konoha Senpuu]
type = ChangeState
value = 1400
triggerall = var(10) = 1
triggerall = statetype != A
triggerall = movetype != H
triggerall = statetype != L
triggerall = P2life > 0
triggerall = P2statetype != L
trigger1 = ctrl = 1 && p2dist x >= 20 && power >= 200 && random <= 300

;---------------------------------------------------------------------------
; AI Konoha Renpuu
[State -1, AI Konoha Renpuu]
type = ChangeState
value = 1450
triggerall = var(10) = 1
triggerall = statetype != A
triggerall = movetype != H
triggerall = statetype != L
triggerall = P2life > 0
triggerall = P2statetype != L
trigger1 = ctrl = 1 && p2dist x >= 15 && power >= 300 && random >= 700

;---------------------------------------------------------------------------
; AI Super Kick
[State -1, AI Super Kick]
type = ChangeState
value = 1500
triggerall = var(10) = 1
triggerall = statetype != A
triggerall = movetype != H
triggerall = statetype != L
triggerall = P2life > 0
triggerall = P2statetype != L
triggerall = P2statetype != A
trigger1 = ctrl = 1 && p2dist x >= 50 && power >= 1000 && random >= 100

;---------------------------------------------------------------------------
; AI Omote Renge
[State -1, AI Omote Renge]
type = ChangeState
value = 1600
triggerall = var(10) = 1
triggerall = statetype != A
triggerall = movetype != H
triggerall = statetype != L
triggerall = P2life > 0
triggerall = P2statetype != L
triggerall = P2statetype != A
trigger1 = ctrl = 1 && p2dist x >= 50 && power >= 1500 && random >= 200

;---------------------------------------------------------------------------
; AI Ultra Smash
[State -1, AI Ultra Smash]
type = ChangeState
value = 2000
triggerall = var(10) = 1
triggerall = statetype != A
triggerall = movetype != H
triggerall = statetype != L
triggerall = P2life > 0
triggerall = P2statetype != L
triggerall = P2statetype != A
trigger1 = ctrl = 1 && p2dist x >= 50 && power >= 2000 && random >= 300

;---------------------------------------------------------------------------
; AI Ura Renge
[State -1, AI Ura Renge]
type = ChangeState
value = 2500
triggerall = var(10) = 1
triggerall = statetype != A
triggerall = movetype != H
triggerall = statetype != L
triggerall = P2life > 0
triggerall = P2statetype != L
triggerall = P2statetype != A
trigger1 = ctrl = 1 && p2dist x >= 50 && power >= 3000 && random >= 400
