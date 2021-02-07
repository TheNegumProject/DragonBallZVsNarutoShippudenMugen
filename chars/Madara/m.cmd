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

;-| Super Motions |--------------------------------------------------------

[Command]
name = "a2"
command = DF, x+c
time = 15

[Command]
name = "sha"
command = DB, z
time = 15

[Command]
name = "rin"
command = DF, z
time = 15

[Command]
name = "kane"
command = DB, b
time = 15

[Command]
name = "over"
command = DB, y
time = 15

[Command]
name = "kou"
command = DF, y
time = 15

[Command]
name = "gou"
command = DB, x
time = 15

[Command]
name = "sen"
command = DF, x
time = 15

[Command]
name = "kan"
command = DB, c
time = 15

[Command]
name = "hijin"
command = DF, c
time = 15

[Command]
name = "cutting"
command = DB, y
time = 15

[Command]
name = "ryu"
command = DF, b
time = 15

[Command]
name = "hose"
command = DB, a
time = 15

[Command]
name = "goka"
command = DF, a
time = 15

[Command]
name = "crush"
command = a+b
time = 15

[Command]
name = "fogon"
command = s
time = 15

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

[State -1, Overwhelming]
type = ChangeState
value = 1410
triggerall = var(20) = 0
triggerall = command = "cutting"             && Power >= 4000
trigger1 = (statetype = s) && ctrl

[State -1, Katon: Kouka Messhitsu]
type = ChangeState
value = 1409
triggerall = var(20) = 0
triggerall = command = "kou"      && Power >= 4000
trigger1 = (statetype = s) && ctrl

[State -1, Katon: Gouka Mekkyaku]
type = ChangeState
value = 1408
triggerall = var(20) = 0
triggerall = command = "gou"        && Power >= 5000
trigger1 = (statetype = s) && ctrl

[State -1, Katon: Sen Tatakau Hi]
type = ChangeState
value = 1407
triggerall = var(20) = 0
triggerall = command = "sen"             && Power >= 4000
trigger1 = (statetype = s) && ctrl

[State -1, Katon: Kanningu Daichi]
type = ChangeState
value = 1406
triggerall = var(20) = 0
triggerall = command = "kan"      && Power >= 3000
trigger1 = (statetype = s) && ctrl

[State -1, Katon: Hijin Heki]
type = ChangeState
value = 1405
triggerall = var(20) = 0
triggerall = command = "hijin"      && Power >= 4000
trigger1 = (statetype = s) && ctrl

[State -1, Katon: Chirasu Mitsu]
type = ChangeState
value = 1404
triggerall = var(20) = 0
triggerall = command = "kane"    && Power >= 2000
trigger1 = (statetype = s) && ctrl

[State -1, Katon: Ryuuka no Jutsu]
type = ChangeState
value = 1403
triggerall = var(20) = 0
triggerall = command = "ryu"   && Power >= 3000
trigger1 = (statetype = s) && ctrl

[State -1, Katon: Housenka no Jutsu]
type = ChangeState
value = 1401
triggerall = var(20) = 0
triggerall = command = "hose"   && Power >= 1500
trigger1 = (statetype = s) && ctrl

[State -1, Katon: Goukakyu no Jutsu]
type = ChangeState
value = 1400
triggerall = var(20) = 0
triggerall = command = "goka"     && Power >= 2000
trigger1 = (statetype = s) && ctrl

[State -1, Wind of Madness]
type = ChangeState
value = 1402
triggerall = var(20) = 0
triggerall = command = "c"    && Power >= 1000
triggerall = command = "holddown"
trigger1 = (statetype = c) && ctrl


;===========================================================================
;---------------------------------------------------------------------------
[State -1, Jump 1]
type = ChangeState
value = 340
triggerall = var(20)= 0
trigger1 = command = "up"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(20) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(20) = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
[State -1, Chakra Charge]
type = ChangeState
value = 195
triggerall = var(20) = 0
triggerall = command = "hold_s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Start Weak Combo]
type = ChangeState
value = 200
triggerall = var(20) = 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Start Medium Combo]
type = ChangeState
value = 230
triggerall = var(20) = 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Start Strong Combo]
type = ChangeState
value = 260
triggerall = var(20) = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Hoz]
type = ChangeState
value = 400
triggerall = var(20) = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Fan]
type = ChangeState
value = 410
triggerall = var(20) = 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Teleport]
type = ChangeState
value = 420
triggerall = var(20) = 0
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Blocks]
type = ChangeState
value = 430
triggerall = var(20) = 0
triggerall = command = "a"    && Power >= 1000
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Roots]
type = ChangeState
value = 440
triggerall = var(20) = 0
triggerall = command = "b"        && Power >= 1000
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Katon: Goukakyu no Jutsu Air]
type = ChangeState
value = 600
triggerall = var(20) = 0
triggerall = command = "x"    && Power >= 2000
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Katon: Housenka no Jutsu Air]
type = ChangeState
value = 609
triggerall = var(20) = 0
triggerall = command = "y"        && Power >= 1500
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Katon: Kouka Messhitsu Air]
type = ChangeState
value = 620
triggerall = var(20) = 0
triggerall = command = "z"            && Power >= 4000
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, <<Rinnengan ON>>]
type = ChangeState
value = 1411
triggerall = var(20) = 0
triggerall = command = "rin"    && Power >= 2000
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
[State -1, <<Rinnengan OFF>>]
type = ChangeState
value = 14111
triggerall = var(20) = 1
triggerall = command = "rin"
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
[State -1, R Jump 1]
type = ChangeState
value = 340
triggerall = var(20)= 1
trigger1 = command = "up"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, R Run Fwd]
type = ChangeState
value = 100
triggerall = var(20) = 1
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, R Run Back]
type = ChangeState
value = 105
triggerall = var(20) = 1
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, R Chakra Charge]
type = ChangeState
value = 195
triggerall = var(20) = 1
triggerall = command = "hold_s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, R Start Weak Combo]
type = ChangeState
value = 200
triggerall = var(20) = 1
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, R Start Medium Combo]
type = ChangeState
value = 230
triggerall = var(20) = 1
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, R Start Strong Combo]
type = ChangeState
value = 260
triggerall = var(20) = 1
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, R Fan]
type = ChangeState
value = 410
triggerall = var(20) = 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, R Teleport]
type = ChangeState
value = 420
triggerall = var(20) = 1
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, R Blocks]
type = ChangeState
value = 430
triggerall = var(20) = 1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, R Roots]
type = ChangeState
value = 440
triggerall = var(20) = 1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, R Katon: Goukakyu no Jutsu Air]
type = ChangeState
value = 600
triggerall = var(20) = 1
triggerall = command = "x"     && Power >= 2000
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, R Katon: Housenka no Jutsu Air]
type = ChangeState
value = 609
triggerall = var(20) = 1
triggerall = command = "y"      && Power >= 1500
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, R Katon: Kouka Messhitsu Air]
type = ChangeState
value = 620
triggerall = var(20) = 1
triggerall = command = "z"    && Power >= 4000
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, R Katon: Chirasu Mitsu]
type = ChangeState
value = 1404
triggerall = var(20) = 1
triggerall = command = "kane"        && Power >= 2000
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
[State -1, R Katon: Ryuuka no Jutsu]
type = ChangeState
value = 1403
triggerall = var(20) = 1
triggerall = command = "ryu"           && Power >= 3000
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
[State -1, R Katon: Housenka no Jutsu]
type = ChangeState
value = 1401
triggerall = var(20) = 1
triggerall = command = "hose"           && Power >= 1500
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
[State -1, R Katon: Goukakyu no Jutsu]
type = ChangeState
value = 1400
triggerall = var(20) = 1
triggerall = command = "goka"                  && Power >= 2000
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
[State -1, R Shinra Tensei]
type = ChangeState
value = 1412
triggerall = var(20) = 1       && Power >= 3000
triggerall = command = "hijin"
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
[State -1, R Chibaku Tensei]
type = ChangeState
value = 1413
triggerall = var(20) = 1
triggerall = command = "kan"     && Power >= 4000
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
[State -1, <<R Sharingan ON>>]
type = ChangeState
value = 1414
triggerall = var(20) = 1
triggerall = command = "sha"     && Power >= 2000
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
[State -1, <<Sharingan ON>>]
type = ChangeState
value = 1414
triggerall = var(20) = 0
triggerall = command = "sha"        && Power >= 2000
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
[State -1, <<Sharingan OFF>>]
type = ChangeState
value = 14141
triggerall = var(20) = 2
triggerall = command = "sha"
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
[State -1, S Jump 1]
type = ChangeState
value = 340
triggerall = var(20)= 2
trigger1 = command = "up"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, S Run Fwd]
type = ChangeState
value = 100
triggerall = var(20) = 2
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, S Run Back]
type = ChangeState
value = 105
triggerall = var(20) = 2
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, S Chakra Charge]
type = ChangeState
value = 195
triggerall = var(20) = 2
triggerall = command = "hold_s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, S Start Weak Combo]
type = ChangeState
value = 200
triggerall = var(20) = 2
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, S Start Medium Combo]
type = ChangeState
value = 230
triggerall = var(20) = 2
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, S Start Strong Combo]
type = ChangeState
value = 260
triggerall = var(20) = 2
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, S Katon: Goukakyu no Jutsu Air]
type = ChangeState
value = 600
triggerall = var(20) = 2
triggerall = command = "x"           && Power >= 2000
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, S Katon: Housenka no Jutsu Air]
type = ChangeState
value = 609
triggerall = var(20) = 2
triggerall = command = "y"        && Power >= 1500
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, S Katon: Kouka Messhitsu Air]
type = ChangeState
value = 620
triggerall = var(20) = 2
triggerall = command = "z"                 && Power >= 4000
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, S Kyuubi Summon]
type = ChangeState
value = 1415
triggerall = var(20) = 2
triggerall = command = "hijin"       && Power >= 8000
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, S Amaterasu 1]
type = ChangeState
value = 1416
triggerall = var(20) = 2
triggerall = command = "kan"            && Power >= 2000
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, S Amaterasu 2]
type = ChangeState
value = 1417
triggerall = var(20) = 2
triggerall = command = "x"            && Power >= 4000
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, S Amaterasu 3]
type = ChangeState
value = 1418
triggerall = var(20) = 2
triggerall = command = "y"           && Power >= 4000
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, S Amaterasu 4]
type = ChangeState
value = 1419
triggerall = var(20) = 2
triggerall = p2statetype != A
triggerall = command = "z"            && Power >= 4000
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, S Tsukuyomi 1]
type = ChangeState
value = 1420
triggerall = var(20) = 2
triggerall = p2statetype != A
triggerall = command = "c"               && Power >= 3000
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, S Tsukuyomi 2]
type = ChangeState
value = 1421
triggerall = var(20) = 2
triggerall = p2statetype != A
triggerall = command = "a"        && Power >= 2000
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, S Tsukuyomi 3]
type = ChangeState
value = 1422
triggerall = var(20) = 2
triggerall = command = "b"             && Power >= 3000
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, S Susanoo Lv 1]
type = ChangeState
value = 1429
triggerall = var(20) = 2
triggerall = command = "cutting"      && Power >= 5000
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
[State -1, <<S Rinnengan ON>>]
type = ChangeState
value = 1411
triggerall = var(20) = 2
triggerall = command = "rin"    && Power >= 2000
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
[State -1, Susano Ribs]
type = ChangeState
value = 1423
triggerall = var(20) = 2
triggerall = command = "kou"      && Power >= 5000
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, SR Jump 1]
type = ChangeState
value = 340
triggerall = var(20)= 3
trigger1 = command = "up"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, SR Run Fwd]
type = ChangeState
value = 100
triggerall = var(20) = 3
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, SR Run Back]
type = ChangeState
value = 105
triggerall = var(20) = 3
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, SR Start Strong Combo]
type = ChangeState
value = 260
triggerall = var(20) = 3
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, SR Katon: Goukakyu no Jutsu Air]
type = ChangeState
value = 600
triggerall = var(20) = 3
triggerall = command = "x"          && Power >= 2000
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, SR Katon: Housenka no Jutsu Air]
type = ChangeState
value = 609
triggerall = var(20) = 3
triggerall = command = "y"             && Power >= 1500
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, SR Katon: Kouka Messhitsu Air]
type = ChangeState
value = 620
triggerall = var(20) = 3
triggerall = command = "z"            && Power >= 4000
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, SR Kyuubi Summon]
type = ChangeState
value = 1415
triggerall = var(20) = 3
triggerall = command = "hijin"          && Power >= 8000
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, SR Amaterasu 1]
type = ChangeState
value = 1416
triggerall = var(20) = 3
triggerall = command = "kan"       && Power >= 2000
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, SR Amaterasu 2]
type = ChangeState
value = 1418
triggerall = var(20) = 3
triggerall = command = "y"                 && Power >= 4000
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, SR Amaterasu 3]
type = ChangeState
value = 1419
triggerall = var(20) = 3
triggerall = p2statetype != A
triggerall = command = "z"                      && Power >= 4000
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, SR Tsukuyomi 1]
type = ChangeState
value = 1420
triggerall = var(20) = 3
triggerall = p2statetype != A
triggerall = command = "c"            && Power >= 3000
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, SR Tsukuyomi 2]
type = ChangeState
value = 1421
triggerall = var(20) = 3
triggerall = p2statetype != A
triggerall = command = "a"            && Power >= 2000
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, SR Tsukuyomi 3]
type = ChangeState
value = 1422
triggerall = var(20) = 3
triggerall = command = "b"                && Power >= 3000
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, SR Susanoo Punch]
type = ChangeState
value = 1424
triggerall = var(20) = 3
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, SR Susanoo Ground Punch]
type = ChangeState
value = 1425
triggerall = var(20) = 3
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, SR Susanoo Trituration]
type = ChangeState
value = 1426
triggerall = var(20) = 3
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, SR Susanoo Amaterasu Burner]
type = ChangeState
value = 1427
triggerall = var(20) = 3
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, SR Susanoo Dissapear]
type = ChangeState
value = 1428
triggerall = var(20) = 3
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, SR Susanoo LV 1]
type = ChangeState
value = 1429
triggerall = var(20) = 3
triggerall = command = "s"     && Power >= 5000
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, S1 Amaterasu]
type = ChangeState
value = 1434
triggerall = var(20) = 4
triggerall = command = "y"    && Power >= 3000
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, S1 Dissapear]
type = ChangeState
value = 1435
triggerall = var(20) = 4
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
