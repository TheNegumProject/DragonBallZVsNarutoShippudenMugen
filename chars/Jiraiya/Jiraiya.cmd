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

;AI Only
;======================
[Command]
name = "AI Activation 1"
command = U,U,U,U
time = 1

[Command]
name = "AI Activation 1"
command = U,U,U,F
time = 1

[Command]
name = "AI Activation 1"
command = U,U,U,D
time = 1

[Command]
name = "AI Activation 1"
command = U,U,U,B
time = 1

[Command]
name = "AI Activation 1"
command = U,U,F,B
time = 1

[Command]
name = "AI Activation 1"
command = U,U,D,B
time = 1

[Command]
name = "AI Activation 2"
command = U,U,B,B
time = 1

[Command]
name = "AI Activation 2"
command = U,F,B,B
time = 1

[Command]
name = "AI Activation 2"
command = U,D,B,B
time = 1

[Command]
name = "AI Activation 2"
command = U,B,B,B
time = 1

[Command]
name = "AI Activation 2"
command = U,F,F,U
time = 1

[Command]
name = "AI Activation 2"
command = U,F,F,D
time = 1

[Command]
name = "AI Activation 3"
command = U,F,F,B
time = 1

[Command]
name = "AI Activation 3"
command = U,F,D,B
time = 1

[Command]
name = "AI Activation 3"
command = U,F,B,B
time = 1

[Command]
name = "AI Activation 3"
command = U,F,U,B
time = 1

[Command]
name = "AI Activation 3"
command = U,D,U,B
time = 1

[Command]
name = "AI Activation 3"
command = U,D,U,B
time = 1

[Command]
name = "AI Activation 4"
command = B,B,U,F
time = 1

[Command]
name = "AI Activation 4"
command = B,D,U,F
time = 1

[Command]
name = "AI Activation 4"
command = B,U,U,F
time = 1

[Command]
name = "AI Activation 4"
command = F,U,U,F
time = 1

[Command]
name = "AI Activation 4"
command = D,U,U,F
time = 1

[Command]
name = "AI Activation 4"
command = B,B,B,U
time = 1

[Command]
name = "AI Activation 5"
command = D,B,B,U
time = 1

[Command]
name = "AI Activation 5"
command = D,F,B,U
time = 1

[Command]
name = "AI Activation 5"
command = D,F,D,U
time = 1

[Command]
name = "AI Activation 5"
command = F,U,B,U
time = 1

[Command]
name = "AI Activation 5"
command = D,U,D,U
time = 1

[Command]
name = "AI Activation 5"
command = F,B,U,B
time = 1

[Command]
name = "AI Activation 6"
command = D,B,B,U
time = 1

[Command]
name = "AI Activation 6"
command = D,F,B,U,U
time = 1

[Command]
name = "AI Activation 6"
command = D,F,D,U,U
time = 1

[Command]
name = "AI Activation 6"
command = F,U,B,U,U
time = 1

[Command]
name = "AI Activation 6"
command = D,U,D,U,U
time = 1

[Command]
name = "AI Activation 6"
command = F,B,U,B,U
time = 1

[Command]
name = "AI Activation 7"
command = U,U,U,U,U
time = 1

[Command]
name = "AI Activation 7"
command = U,U,U,U,F
time = 1

[Command]
name = "AI Activation 7"
command = U,U,U,U,D
time = 1

[Command]
name = "AI Activation 7"
command = U,U,U,U,B
time = 1

[Command]
name = "AI Activation 7"
command = U,U,U,F,B
time = 1

[Command]
name = "AI Activation 7"
command = U,U,U,D,B
time = 1

[Command]
name = "AI Activation 8"
command = U,U,U,B,B
time = 1

[Command]
name = "AI Activation 8"
command = U,U,F,B,B
time = 1

[Command]
name = "AI Activation 8"
command = U,U,D,B,B
time = 1

[Command]
name = "AI Activation 8"
command = U,U,B,B,B
time = 1

[Command]
name = "AI Activation 8"
command = U,U,F,F,U
time = 1

[Command]
name = "AI Activation 8"
command = U,U,F,F,D
time = 1

[Command]
name = "AI Activation 9"
command = U,U,F,F,B
time = 1

[Command]
name = "AI Activation 9"
command = U,U,F,D,B
time = 1

[Command]
name = "AI Activation 9"
command = U,U,F,B,B
time = 1

[Command]
name = "AI Activation 9"
command = U,U,F,U,B
time = 1

[Command]
name = "AI Activation 9"
command = U,U,D,U,B
time = 1

[Command]
name = "AI Activation 9"
command = U,U,D,U,B
time = 1

[Command]
name = "AI Activation 10"
command = U,B,B,U,F
time = 1

[Command]
name = "AI Activation 10"
command = U,B,D,U,F
time = 1

[Command]
name = "AI Activation 10"
command = U,B,U,U,F
time = 1

[Command]
name = "AI Activation 10"
command = U,F,U,U,F
time = 1

[Command]
name = "AI Activation 10"
command = U,D,U,U,F
time = 1

[Command]
name = "AI Activation 10"
command = U,B,B,B,U
time = 1

[Command]
name = "AI Activation 11"
command = U,D,B,B,U
time = 1

[Command]
name = "AI Activation 11"
command = U,D,F,B,U
time = 1

[Command]
name = "AI Activation 11"
command = U,D,F,D,U
time = 1

[Command]
name = "AI Activation 11"
command = U,F,U,B,U
time = 1

[Command]
name = "AI Activation 11"
command = U,D,U,D,U
time = 1

[Command]
name = "AI Activation 11"
command = U,F,B,U,B
time = 1

;-| Super Motions |--------------------------------------------------------

;-| Special Motions |------------------------------------------------------
;-------------------------------------------------------------------------------


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
;Charge_Down_Up
[Command]
name = "HighJump"
command = ~$D, UF
time = 10
buffer.time = 2

[Command]
name = "NeutralJump"
command = ~$D, U
time = 10
buffer.time = 2

[Command]
name = "Gamaken"
command = ~D,DB,B,z
time = 15

[Command]
name = "Gamabunta"
command = ~D,DF,F,z
time = 15

[Command]
name = "Gamahiro"
command = ~D,DF,F,y
time = 15

[Command]
name = "Clone"
command = ~D,DB,B,x
time = 15

[Command]
name = "Teleport"
command = ~z
time = 1

[Command]
name = "HTeleport"
command = ~z
time = 1

[Command]
name = "Throw"
command = ~y
time = 1

[Command]
name = "Katon"
command = ~x
time = 1

[Command]
name = "HGA"
command = D,DB,B,x
time = 15

[Command]
name = "HSJ"
command = D,DF,F,x
time = 15
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
;-------------------------------------------------------------------------------
[State -1, Hyper-Stomach-Jutsu]
type = ChangeState
value = 10850
triggerall = var(59) != 1
triggerall = var(10) = 1
triggerall = power > 1000
trigger1 = command = "HSJ"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------------------------------------------------------
[State -1, Hyper-Genjutsu-Art]
type = ChangeState
value = 10800
triggerall = var(59) != 1
triggerall = var(10) = 1
triggerall = power > 2500
triggerall = command != "holddown"
trigger1 = command = "HGA"
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------------------------------------------------------
[State -1, AI Actiavtion Var]
type = VarSet
triggerall = var(59) != 1
trigger1 = command = "AI Activation 1"
trigger2 = command = "AI Activation 2"
trigger3 = command = "AI Activation 3"
trigger4 = command = "AI Activation 4"
trigger5 = command = "AI Activation 5"
trigger6 = command = "AI Activation 6"
trigger7 = command = "AI Activation 7"
trigger8 = command = "AI Activation 8"
trigger9 = command = "AI Activation 9"
trigger10 = command = "AI Activation 10"
trigger11 = command = "AI Activation 11"
;trigger12 = command = "AI Activation 12"
var(59) = 1
;===============================================================================
;===============================================================================
;High Jump
[State -1, High Jump]
type = ChangeState
value = 60
triggerall = var(59) != 1
triggerall = command = "HighJump"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger2 = animelemtime(3) >= 0
;-------------------------------------------------------------------------------
;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 70
triggerall = var(59) != 1
triggerall = command = "NeutralJump"
triggerall = statetype != A
trigger1 = ctrl
;-------------------------------------------------------------------------------
; Dash Fwd
[State -1, Air Dash Fwd]
type = ChangeState
value = 110
triggerall = var(59) != 1
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl
;-------------------------------------------------------------------------------
; Dash Back
[State -1, Air Dash Back]
type = ChangeState
value = 115
triggerall = var(59) != 1
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != 105
;-------------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) != 1
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;-------------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) != 1
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------------------------------------------------------
[State -1, Throw]
Type = Changestate
value = 700
triggerall = var(59) != 1
triggerall = var(10) = 0
triggerall = Command = "Throw"
;triggerall = command != "holddown"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
;-------------------------------------------------------------------------------
[State -1, Air-Throw]
Type = Changestate
value = 750
triggerall = var(59) != 1
triggerall = var(10) = 0
triggerall = Command = "y"
;triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl
;===============================================================================
; Taunt
[State -1, Taunt-Hermit-Entrance]
type = ChangeState
value = 195
triggerall = var(59) != 1
triggerall = var(10) = 0
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl
;-------------------------------------------------------------------------------
;Teleport
[State -1, Air-Teleport]
type = ChangeState
value = 189
triggerall = var(59) != 1
triggerall = var(10) = 0
triggerall = power > 15
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl
;-------------------------------------------------------------------------------
;Teleport
[State -1, Teleport]
type = ChangeState
value = 199
triggerall = var(59) != 1
triggerall = var(10) = 0
triggerall = command = "Teleport"
;triggerall = command = "holddown"
trigger1 = statetype = S ||statetype = C
trigger1 = ctrl
;-------------------------------------------------------------------------------
[State -1, Combo]
type = ChangeState
value = 200
triggerall = var(59) != 1
triggerall = var(10) = 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------------------------------------------------------
[State -1, Combo]
type = ChangeState
value = 210
triggerall = var(59) != 1
triggerall = var(10) = 0
triggerall = command = "a"
triggerall = command != "holddown" && (movecontact)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time >= 5
;-------------------------------------------------------------------------------
[State -1, Combo]
type = ChangeState
triggerall = var(59) != 1
triggerall = var(10) = 0
value = ifelse(random%2,220,800)
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210
trigger2 = time >= 5
;-------------------------------------------------------------------------------
[State -1, Combo-2]
type = ChangeState
value = 240
triggerall = var(59) != 1
triggerall = var(10) = 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------------------------------------------------------
[State -1, Combo-2]
type = ChangeState
value = 250
triggerall = var(59) != 1
triggerall = var(10) = 0
triggerall = command = "b"
triggerall = command != "holddown" && (movecontact)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = time >= 5
;-------------------------------------------------------------------------------
[State -1, Combo-2]
type = ChangeState
value = 260
triggerall = var(59) != 1
triggerall = var(10) = 0
triggerall = command = "b"
triggerall = command != "holddown" && (movecontact)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 250
trigger2 = time >= 5
;-------------------------------------------------------------------------------
[State -1, Combo-2]
type = ChangeState
value = 270
triggerall = var(59) != 1
triggerall = var(10) = 0
triggerall = command = "b"
triggerall = power > 100
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 260
trigger2 = time >= 5
;-------------------------------------------------------------------------------
[State -1, Rasengan]
type = ChangeState
value = 999
triggerall = var(59) != 1
triggerall = !ishelper
triggerall = var(10) = 0
triggerall = power > 500
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------------------------------------------------------
[State -1, Katon-Dai-Endan]
type = ChangeState
triggerall = var(59) != 1
value = ifelse(random%2,300,310)
triggerall = var(10) = 0
triggerall = power > 500
triggerall = command = "Katon"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------------------------------------------------------
[State -1, Katon-Housenka]
type = ChangeState
value = 400
triggerall = var(59) != 1
triggerall = var(10) = 0
triggerall = power > 500
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;-------------------------------------------------------------------------------
[State -1, Crouching Kick-Punch]
type = ChangeState
value = ifelse(random%2,410,420)
triggerall = var(59) != 1
triggerall = var(10) = 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;-------------------------------------------------------------------------------
; Crouching Strong Punch
[State -1,Ninpou-Jizou-Neddle]
type = ChangeState
value = ifelse(random%2,430,440)
triggerall = var(59) != 1
triggerall = var(10) = 0
triggerall = power > 100
triggerall = command = "hold_c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;-------------------------------------------------------------------------------
; Crouching Strong Punch
[State -1,Rangishigami]
type = ChangeState
value = 450
triggerall = var(59) != 1
triggerall = var(10) = 0
triggerall = power > 300
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;-------------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59) != 1
triggerall = var(10) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;-------------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = var(59) != 1
triggerall = var(10) = 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
;-------------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = var(59) != 1
triggerall = var(10) = 0
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
;-------------------------------------------------------------------------------
; Jump Light Kick
[State -1, Barrier-Jutsu]
type = ChangeState
value = 630
triggerall = var(59) != 1
triggerall = var(10) = 0
triggerall = var(15) = 0
triggerall = numhelper(631) < 1
trigger1 = power >= 200
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;-------------------------------------------------------------------------------
[State -1, Gamaken]
type = ChangeState
value = 4000
triggerall = var(59) != 1
triggerall = var(10) = 0
triggerall = power > 2000
triggerall = numhelper(90001) < 2
trigger1 = command = "Gamaken"
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------------------------------------------------------
[State -1, Gamabunta]
type = ChangeState
value = 3000
triggerall = var(59) != 1
triggerall = var(10) = 0
triggerall = power > 1500
trigger1 = command = "Gamabunta"
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------------------------------------------------------
[State -1, Gamahiro]
type = ChangeState
value = 2000
triggerall = var(59) != 1
triggerall = var(10) = 0
triggerall = power > 1000
trigger1 = command = "Gamahiro"
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------------------------------------------------------
[State -1, Kage-Bunshin]
type = ChangeState
value = 500
triggerall = var(59) != 1
triggerall = var(10) = 0
triggerall = numhelper(90001) < 2
triggerall = power > 500
trigger1 = command = "Clone"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------HERMIT-MODO-----------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;Hermit-Teleport
[State -1, H-Teleport]
type = ChangeState
value = 10199
triggerall = var(59) != 1
triggerall = var(10) = 1
triggerall = command = "HTeleport"
triggerall = ifelse(statetype = C,command = "holddown",command != "holddown")
trigger1 = statetype = S ||statetype = C
trigger1 = ctrl
;-------------------------------------------------------------------------------
;Teleport
[State -1, H-Air-Teleport]
type = ChangeState
value = 10189
triggerall = var(59) != 1
triggerall = var(10) = 1
triggerall = power > 15
triggerall = command = "HTeleport"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl
;-------------------------------------------------------------------------------
[State -1, H-Throw]
Type = Changestate
value = 10700
triggerall = var(59) != 1
triggerall = var(10) = 1
triggerall = Command = "Throw"
triggerall = command != "holddown"
trigger1 = statetype = S ;|| statetype = C
trigger1 = ctrl
;-------------------------------------------------------------------------------
[State -1, H-Air-Throw]
Type = Changestate
value = 10750
triggerall = var(59) != 1
triggerall = var(10) = 1
triggerall = Command = "Throw"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl
;-------------------------------------------------------------------------------
[State -1, H-Combo]
type = ChangeState
value = 10200
triggerall = var(59) != 1
triggerall = var(10) = 1
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------------------------------------------------------
[State -1, H-Combo]
type = ChangeState
value = 10210
triggerall = var(59) != 1
triggerall = var(10) = 1
triggerall = command = "a"
triggerall = command != "holddown" && (movecontact)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 10200
trigger2 = time >= 5
;-------------------------------------------------------------------------------
[State -1, H-Combo]
type = ChangeState
triggerall = var(59) != 1
triggerall = var(10) = 1
value = ifelse(random%2,10220,10240)
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 10210
trigger2 = time >= 5
;-------------------------------------------------------------------------------
[State -1, H-Combo]
type = ChangeState
triggerall = var(59) != 1
triggerall = var(10) = 1
value = 10230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 10220
trigger2 = time >= 5
;-------------------------------------------------------------------------------
[State -1, H-Combo]
type = ChangeState
triggerall = var(59) != 1
triggerall = var(10) = 1
value = 10240
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 10220
trigger2 = time >= 5
;-------------------------------------------------------------------------------
[State -1, H-Combo-2]
type = ChangeState
value = 10260
triggerall = var(59) != 1
triggerall = var(10) = 1
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------------------------------------------------------
[State -1, H-Combo-2]
type = ChangeState
value = 10270
triggerall = var(59) != 1
triggerall = var(10) = 1
triggerall = command = "b"
triggerall = command != "holddown" && (movecontact)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 10260
trigger2 = time >= 5
;-------------------------------------------------------------------------------
[State -1, H-Combo-2]
type = ChangeState
value = 10280
triggerall = var(59) != 1
triggerall = var(10) = 1
triggerall = command = "b"
triggerall = command != "holddown" ;&& (movecontact)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 10270
trigger2 = time >= 5
;-------------------------------------------------------------------------------
[State -1, H-Combo-2]
type = ChangeState
value = 10290
triggerall = var(59) != 1
triggerall = var(10) = 1
triggerall = command = "b"
triggerall = command != "holddown" ;&& (movecontact)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 10280
trigger2 = time >= 5
;-------------------------------------------------------------------------------
[State -1, H-Rasengan && ChOdama]
type = ChangeState
value = 10999
triggerall = var(59) != 1
triggerall = !ishelper
triggerall = var(10) = 1
triggerall = power > 500
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------------------------------------------------------
[State -1,H-Sempo-Goemon]
type = ChangeState
value = ifelse(random%2,10299,10309)
triggerall = var(59) != 1
triggerall = var(10) = 1
triggerall = ifelse(stateno = 10309,power>1000,power > 1500)
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------------------------------------------------------
[State -1, H-Katon-Housenka]
type = ChangeState
value = 10400
triggerall = var(59) != 1
triggerall = var(10) = 1
triggerall = power > 500
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;-------------------------------------------------------------------------------
[State -1,H-Senpo-Kebari-Senbon]
type = ChangeState
value = 10430
triggerall = var(59) != 1
triggerall = var(10) = 1
triggerall = power > 100
triggerall = command = "hold_a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;-------------------------------------------------------------------------------
[State -1, H-Shuriken]
Type = Changestate
value = 10420
triggerall = var(59) != 1
triggerall = power > 100
triggerall = var(10) = 1
triggerall = Command = "Throw"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;-------------------------------------------------------------------------------
[State -1, H-Kage-Bunshin]
type = ChangeState
value = 10410
triggerall = var(59) != 1
triggerall = numhelper(990001) < 2
triggerall = power > 500
triggerall = var(10) = 1
trigger1 = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;-------------------------------------------------------------------------------
[State -1, H-Crouching Kick-Punch]
type = ChangeState
value = 10440
triggerall = var(59) != 1
triggerall = var(10) = 1
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;-------------------------------------------------------------------------------
[State -1, H-Air-Katon]
type = ChangeState
value = 10450
triggerall = var(59) != 1
triggerall = var(10) = 1
trigger1 = power >= 200
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;-------------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 10600
triggerall = var(59) != 1
triggerall = var(10) = 1
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;-------------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 10610
triggerall = var(59) != 1
triggerall = var(10) = 1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
;-------------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 10620
triggerall = var(59) != 1
triggerall = var(10) = 1
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
;===============================================================================
; Taunt
[State -1, Hermit-Chakra-1]
type = ChangeState
value = 10195
triggerall = var(59) != 1
triggerall = power <= 1000
triggerall = var(10) = 1
triggerall = command = "s"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;===============================================================================
; Taunt
[State -1, Hermit-Chakra-2]
type = ChangeState
value = 10197
triggerall = var(59) != 1
triggerall = power = 1000
triggerall = var(10) = 1
triggerall = command = "s"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;===============================================================================
; Taunt
[State -1, Hermit-Chakra-3]
type = ChangeState
value = 10198
triggerall = var(59) != 1
triggerall = power = [1500,2000]
triggerall = var(10) = 1
triggerall = command = "s"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------------------------------------------------------
[State -1, This-is-Spartaaaaaaa]
type = ChangeState
value = 10900
triggerall = var(59) != 1
triggerall = var(10) = 1
triggerall = power > 500
triggerall = p2statetype != A
triggerall = p2bodydist x <=25
;triggerall = screenpos x > 160 && screenpos x < 180
triggerall = command = "s"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
