[Command]
name = "AI1"
command = x,x,x,x,x,x,x,x,x,x
time = 1
[Command]
name = "AI2"
command = y,y,y,y,y,y,y,y,y,y
time = 1
[Command]
name = "AI3"
command = z,z,z,z,z,z,z,z,z,z
time = 1
[Command]
name = "AI4"
command = a,a,a,a,a,a,a,a,a,a
time = 1
[Command]
name = "AI5"
command = b,b,b,b,b,b,b,b,b,b
time = 1
[Command]
name = "AI6"
command = c,c,c,c,c,c,c,c,c,c
time = 1
[Command]
name = "AI7"
command = B,B,B,B,B,B,B,B,B,B
time = 1
[Command]
name = "AI8"
command = F,F,F,F,F,F,F,F,F,F
time = 1
[Command]
name = "AI9"
command = D,D,D,D,D,D,D,D,D,D
time = 1
[Command]
name = "AI10"
command = U,U,U,U,U,U,U,U,U,U
time = 1
[Command]
name = "AI11"
command = s,s,s,s,s,s,s,s,s,s
time = 1
[Command]
name = "AI12"
command = D,F,D,D,D,D,D,D,a,b,c
time = 1
[Command]
name = "AI13"
command = F,F,B,B,a,b,c,x,z,y
time = 1
[Command]
name = "AI14"
command = B,B,D,B,a,b,c,x,z,y
time = 1
[Command]
name = "AI15"
command = F,F,D,F,a,b,c,x,z,y
time = 1
[Command]
name = "AI16"
command = F,F,F,F,F,F,F,F,F,B
time = 1
[Command]
name = "AI17"
command = B,B,B,B,B,B,B,B,B,F
time = 1
[Command]
name = "AI18"
command = F,F,D,F,F,F,D,F,F,F
time = 1
[Command]
name = "AI19"
command = B,B,B,B,B,a,b,c,x,z
time = 1
[Command]
name = "AI20"
command = a,b,c,x,z,y,a,b,c,x
time = 1
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
[command]
name = "FDBDBa"
command = F,FD,D,DB,B,D,DB,B,a
time = 25
[command]
name = "FDBDBa"
command = F,D,B,D,B,a
time = 25
[command]
name = "FDBDBb"
command = F,FD,D,DB,B,D,DB,B,b
time = 25
[command]
name = "FDBDBb"
command = F,D,B,D,B,b
time = 25

[command]
name = "DBDBa"
command = D,DB,B,D,DB,B,a
time = 20
[command]
name = "DBDBa"
command = D,B,D,B,a
time = 20
[command]
name = "DBDBb"
command = D,DB,B,D,DB,B,b
time = 20
[command]
name = "DBDBb"
command = D,B,D,B,b
time = 20

[command]
name = "BDFa"
command = B,BD,D,DF,F,a
time = 15
[command]
name = "BDFa"
command = B,D,F,a
time = 15
[command]
name = "BDFb"
command = B,BD,D,DF,F,b
time = 15
[command]
name = "BDFb"
command = B,D,F,b
time = 15

[command]
name = "FDFa"
command = F,FD,D,DF,a
time = 20
[command]
name = "FDFa"
command = F,D,F,a
time = 20

[command]
name = "FDFb"
command = F,FD,D,DF,b
time = 20
[command]
name = "FDFb"
command = F,D,F,b
time = 20

[command]
name = "DBa"
command = D,DB,B,a
time = 15
[command]
name = "DBa"
command = D,B,a
time = 15

[command]
name = "DBb"
command = D,DB,B,b
time = 15
[command]
name = "DBb"
command = D,B,b
time = 15

command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------

;-| Special Motions |------------------------------------------------------

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
name = "ax"
command = a+x
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "by"
command = b+y
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

;===========================================================================
;---------------------------------------------------------------------------

;===========================================================================
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
value = 104
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, power charge]
type = ChangeState
value = 900
triggerall = command = "hold_b" && command="hold_y"
triggerall = power<3000
trigger1 = statetype= S && ctrl

;---------------------------------------------------------------------------
[State -1, inner sakura combo]
type = ChangeState
value =3000
trigger1 = command = "FDBDBa"
trigger1 = var(24):=1
trigger2 = command = "FDBDBb"
trigger2 = var(24):=2
triggerall = statetype = S && ctrl && power>=2000

;---------------------------------------------------------------------------
[State -1, sakura combo]
type = ChangeState
value =2000
trigger1 = command = "DBDBa"
trigger1 = var(23):=1
trigger2 = command = "DBDBb"
trigger2 = var(23):=2
triggerall = statetype = S && ctrl && power>=1000

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 1500
trigger1 = command = "BDFa"
trigger1 = var(16):=1
trigger2 = command = "BDFb"
trigger2 = var(16):=2
trigger3 = stateno=100 && command="ab"
trigger3 = var(16):=2
triggerall = statetype = S && ctrl && power>=500

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 800
trigger1 = command = "DBa"
trigger1 = var(22):=1
trigger2 = command = "DBb"
trigger2 = var(22):=2
triggerall = statetype = S && ctrl

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 1000
trigger1 = command = "FDFa"
trigger1 = var(20):=1
trigger2 = command = "FDFb"
trigger2 = var(20):=2
triggerall = statetype = S && ctrl

;---------------------------------------------------------------------------
[State -1, teleport]
type = ChangeState
value = 700
triggerall = command = "ax"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 400
triggerall = command = "a"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 230
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = stateno = 100

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = stateno != 100
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 410
triggerall = command = "b"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 220
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 240
triggerall = command = "x" && numhelper(15110)=0
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 420
triggerall = command = "x" && numhelper(15110)=0
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 620
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

