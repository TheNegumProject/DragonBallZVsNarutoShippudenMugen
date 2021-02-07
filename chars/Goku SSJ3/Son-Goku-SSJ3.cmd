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
[command]
name = "ki beam"
command = D,B,F,b
time = 20

[command]
name = "ki wind"
command = D,B,F,a
time = 20

[command]
name = "Genki Dama"
command = D,F,D,B,c
time = 25

[command]
name = "kiatack"
command = B,F,x
time = 30

[command]
name = "kienzan"
command = B,F,b
time =  20

[Remap]
[command]
name = "air kick"
command = D,F,y
time = 20

x = x
[command]
name = "tayoken"
command = B,F,a
time = 20

y = y
[command]
name = "kameha1"
command = D,B,F,c
time = 250

z = z
[command]
name = "teleport combo3"
command = D,B,a
time = 25

a = a
[command]
name = "teleport combo2"
command = D,B,b
time = 25

b = b
[command]
name = "teleport combo1"
command = D,B,y
time = 25

c = c
[command]
name = "teleport combo"
command = D,B,x
time = 25

s = s

;-| Default Values |-------------------------------------------------------
[command]
name = "Fly Back"
command = B,B
time = 20

[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.


[command]
name = "Fly Fwd"
command = F,F
time = 20

command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
[command]
name = "velkick"
command = D,F,y
time = 25

command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------

;-| Special Motions |------------------------------------------------------

;-| Double Tap |-----------------------------------------------------------
[command]
name = "atak1"
command = D,F,a
time = 20

[command]
name = "air kick velset"
command = D,F,x
time = 15

;---------------------------------------------------------------------------
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

;-| AI |---------------------------------------------------------
 [Command]
name = "ai1"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai2"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai3"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai4"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai5"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai6"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai7"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai8"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai9"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai10"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai11"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai12"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai13"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai14"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai15"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai16"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai17"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai18"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai19"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai20"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai21"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai22"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai23"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai24"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai25"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai26"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai27"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai28"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai29"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai30"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ki beam
[State -1,ki beam]
type = ChangeState
value = 900
triggerall = command = "ki beam"
triggerall = power > 800
trigger1 = (statetype = S) && ctrl

;---------------------------------------------------------------------------
;fala powietrza
[State -1,fala powietrza]
type = ChangeState
value = 10002
triggerall = command = "ki wind"
triggerall = power > 400
trigger1 = (statetype = S) && ctrl

;---------------------------------------------------------------------------
;Genki Dama
[State -1, Genki Dama]
type = ChangeState
value = 740
triggerall = command = "Genki Dama"
trigger1 = (statetype = s) && ctrl
triggerall = power > 3999
triggerall = life < 600

;---------------------------------------------------------------------------
;kiatack
[State -1, kiatack]
type = ChangeState
value = 726
triggerall = command = "kiatack"
trigger1 = (statetype = S) && ctrl
triggerall = power > 500

;---------------------------------------------------------------------------
;kienzan
[State -1, kienzan]
type = ChangeState
value = 720
triggerall = command = "kienzan"
trigger1 = (statetype = S) && ctrl
triggerall = power > 500

;---------------------------------------------------------------------------
;air kick
[State -1,air kick]
type = ChangeState
value = 9977
triggerall = command = "air kick"
triggerall = power > 250
triggerall = time < 25
triggerall = time > 15
trigger1 = (statetype = A) && ctrl

;---------------------------------------------------------------------------
;kamehaair
[State -1, kamehaair]
type = ChangeState
value = 7000
triggerall = command = "kameha1"
trigger1 = (statetype = A) && ctrl
triggerall = power > 2000
;---------------------------------------------------------------------------
;kameha1
[State -1, kameha1]
type = ChangeState
value = 700
triggerall = command = "kameha1"
trigger1 = (statetype = S) && ctrl
triggerall = power > 2000

;---------------------------------------------------------------------------

;fire ball
[State -1,fire ball]
type = ChangeState
value = 861
triggerall = command = "c"
triggerall = power > 200
trigger1 = (statetype = S) && ctrl

;---------------------------------------------------------------------------
;tayoken
[State -1, tayoken]
type = ChangeState
value = 713
triggerall = command = "tayoken"
trigger1 = (statetype = S) && ctrl
triggerall = power > 300

;---------------------------------------------------------------------------
;teleport combo
[State -1, first6]
type = ChangeState
value = 670
triggerall = command = "teleport combo3"
trigger1 = (statetype = S) && ctrl
triggerall = power > 100

;---------------------------------------------------------------------------
;teleport combo
[State -1, first5]
type = ChangeState
value = 670
triggerall = command = "teleport combo3"
trigger1 = (statetype = A) && ctrl
triggerall = power > 100

;---------------------------------------------------------------------------
;teleport combo
[State -1, first1]
type = ChangeState
value = 660
triggerall = command = "teleport combo2"
trigger1 = (statetype = A) && ctrl
triggerall = power > 100

;---------------------------------------------------------------------------
;teleport combo
[State -1, first2]
type = ChangeState
value = 655
triggerall = command = "teleport combo1"
trigger1 = (statetype = A) && ctrl
triggerall = power > 100

;---------------------------------------------------------------------------
;teleport combo
[State -1, first3]
type = ChangeState
value = 650
triggerall = command = "teleport combo"
trigger1 = (statetype = S) && ctrl
triggerall = power > 100

;---------------------------------------------------------------------------
;teleport combo
[State -1, first4]
type = ChangeState
value = 650
triggerall = command = "teleport combo"
trigger1 = (statetype = A) && ctrl
triggerall = power > 100

;---------------------------------------------------------------------------
;Fly Fwd
[State -1, Fly Fwd]
type = ChangeState
value = 60
triggerall = command = "Fly Fwd"
trigger1 = (statetype = A) && ctrl

;---------------------------------------------------------------------------
;Fly Back
[State -1, Fly Back]
type = ChangeState
value = 65
triggerall = command = "Fly Back"
trigger1 = (statetype = A) && ctrl

;---------------------------------------------------------------------------
;velkick
[State -1, velkick]
type = ChangeState
value = 641
triggerall = command = "velkick"
trigger1 = (statetype = S) && ctrl
triggerall = power > 100

;--------------------------------------------------------------------------
;atack1
[State -1,combo 1]
type = ChangeState
value = 635
triggerall = command = "x"
trigger1 = (statetype = s) && ctrl
triggerall = stateno = 100

;--------------------------------------------------------------------------
;teleport
[State -1, Teleport]
type = ChangeState
value = 998
triggerall = command = "holdfwd" && command = "hold_z"
triggerall = var(36) != 1
trigger1 = (statetype = a) && ctrl
triggerall = power > 100

;--------------------------------------------------------------------------
;teleport
[State -1, Teleport]
type = ChangeState
value = 999
triggerall = command = "holdback" && command = "hold_z"
triggerall = var(36) != 1
trigger1 = (statetype = a) && ctrl
triggerall = power > 100

;---------------------------------------------------------------------------
;teleport
[State -1, Teleport]
type = ChangeState
value = 899
triggerall = command = "hold_z"
trigger1 = (statetype = A) && ctrl
triggerall = var(36) != 1
triggerall = power > 100

;--------------------------------------------------------------------------
;teleport
[State -1, Teleport]
type = ChangeState
value = 884
triggerall = command = "holdback" && command = "hold_z"
trigger1 = (statetype = s) && ctrl
triggerall = var(36) != 1
triggerall = power > 100

;--------------------------------------------------------------------------
;teleport
[State -1, Teleport]
type = ChangeState
value = 883
triggerall = command = "holdfwd" && command = "hold_z"
triggerall = var(36) != 1
trigger1 = (statetype = s) && ctrl
triggerall = power > 100

;---------------------------------------------------------------------------
;teleport
[State -1, Teleport]
type = ChangeState
value = 885
triggerall = command = "hold_z"
trigger1 = (statetype = s) && ctrl
triggerall = var(36) != 1
triggerall = power > 150

;---------------------------------------------------------------------------
;atak2
[State -1, atak2]
type = ChangeState
value = 815
triggerall = command = "atak1"
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
;air kick velset
[State -1, air kick velset]
type = ChangeState
value = 632
triggerall = command = "air kick velset"
triggerall = time < 25
triggerall = time > 15
trigger1 = (statetype = a) && ctrl

;---------------------------------------------------------------------------
;Ladowanie
[State -1, Ladowanie]
type = ChangeState
value = 800
triggerall = command = "hold_a" && command = "hold_x"
trigger1 = (statetype = s) && ctrl
triggerall = power < 4000

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

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A
triggerall = power > 150
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

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;----------------------------------------------------------------------------
;---------------------------------------------------------------------------
;=====================================AI====================================
;---------------------------------------------------------------------------
[State -1]
type = varset
triggerall = var(36) != 1
trigger1 = command = "ai1"
trigger2 = command = "ai2"
trigger3 = command = "ai3"
trigger4 = command = "ai4"
trigger5 = command = "ai5"
trigger6 = command = "ai6"
trigger7 = command = "ai7"
trigger8 = command = "ai8"
trigger9 = command = "ai9"
trigger10 = command = "ai10"
trigger11 = command = "ai11"
trigger12 = command = "ai12"
trigger13 = command = "ai13"
trigger14 = command = "ai14"
trigger15 = command = "ai15"
trigger16 = command = "ai16"
trigger17= command = "ai17"
trigger18= command = "ai18"
trigger19= command = "ai19"
trigger20= command = "ai20"
trigger21 = command = "ai21"
trigger22= command = "ai22"
trigger23= command = "ai23"
trigger24= command = "ai24"
trigger25= command = "ai25"
trigger26 = command = "ai26"
trigger27= command = "ai27"
trigger28= command = "ai28"
trigger29= command = "ai29"
trigger30= command = "ai30"
v = 36
value = 1
;---------------------------------------------------------------------------
