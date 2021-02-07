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
name = "stun"
command = /z

[Command]
name = "stun2"
command = /s

[command]
name = "kawrimi"
command = a
time = 10


;-| Special Motions |------------------------------------------------------
[command]
name = "special"
command = ~D, B, /y
time = 15

[command]
name = "special2"
command = ~D, B, /c
time = 15

[command]
name = "special3"
command = D,F,c
time = 30

[command]
name = "special4"
command = D,b
time = 30

[command]
name = "special5"
command = D,F,z
time = 30

[command]
name = "special6"
command = D,y
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

y = y
[command]
name = "wj"
command = /F
time = 15

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
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Wall jump
[State -1, Wall Jump]
type = ChangeState
value = 48
trigger1 = command = "wj"
trigger1 = statetype = A
triggerall = backedgebodydist <= 1 && backedgebodydist > -1
triggerall = Pos Y < -30
trigger1 = Vel X <= 0
triggerall = power > 0
trigger1 = ctrl
;------------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y" || command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;===========================================================================
[State -1, kawrimi]
type = ChangeState
value = 730
triggerall = power >=0
triggerall = command = "kawrimi"
triggerall = power >= 200
Triggerall = StateType != A
Trigger1 = StateNo = 5000
Trigger2 = StateNo = 5001
Trigger3 = StateNo = 5010
Trigger4 = StateNo = 5011
Trigger5 = StateNo = 5020
Trigger6 = StateNo = 5030
Trigger7 = StateNo = 5035
Trigger8 = StateNo = 5040
Trigger9 = StateNo = 5050
Trigger10 = StateNo = 5070
Trigger11 = StateNo = 5071
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
 ;a1
[State -1, combo1attack1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
;---------------------------------------------------------------------------
; a2
[State -1, combo1attack2]
type = ChangeState
value = 201
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = stateno = 200
trigger1 = time >= 8
;---------------------------------------------------------------------------
; a3
[State -1, combo1attack3]
type = ChangeState
value = 202
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = stateno = 201
trigger1 = time >= 8
;-------------------------------------------------------------------
;Punch
[State -1, Smashy Smashy no Jutsu]
type = ChangeState
value = 1200
Triggerall = command = "special2"
triggerall = power >= 1500
trigger1 = statetype = S
;-------------------------------------------------------------------
;Punch
[State -1, Kagenuii]
type = ChangeState
value = 1300
Triggerall = command = "special"
triggerall = power >= 1400
trigger1 = statetype = S
;-------------------------------------------------------------------
;Punch
[State -1, Smashy Smashy no Jutsu]
type = ChangeState
value = 222
Triggerall = command = "special3"
triggerall = power >= 100
triggerall = life <= 500
trigger1 = statetype = S
;-------------------------------------------------------------------
[State -1, 230]
type = ChangeState
value = 230
triggerall = power >= 100
triggerall = stateno != 100
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, 233]
type = ChangeState
value = 233
triggerall = power >= 100
triggerall = stateno = 100
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 203
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = stateno = 203
trigger1 = time >= 8

;---------------------------------------------------------------------------
; Chakra Charge
[State -1, Chakra Charge]
type = ChangeState
value = 9999
trigger1 = Var(0) = 0
trigger1 = command = "hold_y" && power != 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = ctrl
trigger2 = statetype = S
trigger2 = Var(0) = 1
trigger2 = command = "y" && power != 3000

;--------------------------------------------------------------------------


;---------------------------------------------------------------------------

[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[State -1, Crouching Strong Punch]
type = ChangeState
value = 510000
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
triggerall = stateno = 5110
trigger1 = ctrl

;Shika Choji
[State -1, Shika summon Choji]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = power >= 1100
triggerall = stateno = 160
triggerall = parent,stateno != 423
triggerall = parent,stateno != 426
triggerall = parent,stateno != 410
triggerall = parent,stateno != 418
triggerall = parent,stateno != 419
triggerall = parent,stateno != 421
triggerall = parent,stateno != 417
triggerall = parent,stateno != 418
triggerall = parent,stateno != 424
trigger1 = ctrl

;Shika Choji
[State -1, Shika summon Choji]
type = ChangeState
value = 423
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = power >= 1300
triggerall = parent,stateno != 423
triggerall = parent,stateno != 426
triggerall = parent,stateno != 410
triggerall = parent,stateno != 418
triggerall = parent,stateno != 419
triggerall = parent,stateno != 421
triggerall = parent,stateno != 417
triggerall = parent,stateno != 418
triggerall = parent,stateno != 424
triggerall = stateno = 160
trigger1 = ctrl

;Shika Choji
[State -1, Shika summon Choji]
type = ChangeState
value = 426
triggerall = command = "b"
triggerall = command != "down"
triggerall = power >= 1500
triggerall = parent,stateno != 423
triggerall = parent,stateno != 426
triggerall = parent,stateno != 410
triggerall = parent,stateno != 418
triggerall = parent,stateno != 419
triggerall = parent,stateno != 421
triggerall = parent,stateno != 417
triggerall = parent,stateno != 418
triggerall = parent,stateno != 424
triggerall = stateno = 160
trigger1 = ctrl

;Shika kakashi
[State -1, Shika summon Choji]
type = ChangeState
value = 216
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = power >= 1700
triggerall = stateno = 164
trigger1 = ctrl

;Shika kakashi
[State -1, Shika summon Choji]
type = ChangeState
value = 215
triggerall = command = "hold_x"
triggerall = command != "holddown"
triggerall = power >= 100
triggerall = stateno = 164
trigger1 = ctrl


[State -1, Shika summon Choji]
type = ChangeState
value = 1900
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = power >= 1400
triggerall = stateno = 421
trigger1 = ctrl

;---------------------------------------------------------------------------
;C-Shikamaru Special Stun
[State -1, C-Shikamaru Special Stun]
type = ChangeState
value = 159
triggerall = command = "stun"
triggerall = command != "holddown"
triggerall = power >= 35
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = time >= 10
;---------------------------------------------------------------------------
;C-Shikamaru Special Stun
[State -1, C-Shikamaru Special Stun]
type = ChangeState
value = 164
triggerall = command = "stun2"
triggerall = command != "holddown"
triggerall = power >= 35
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = time >= 10
;---------------------------------------------------------------------------
;C-Shikamaru Special Stun
[State -1, C-Shikamaru Special Stun]
type = ChangeState
value = 412
triggerall = command = "special5"
triggerall = power  = 3000
triggerall = life  <= 350
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, nunchaku]
type = ChangeState
value = 116000
trigger1 = stateno != 20002
trigger1 = var(18) != 1
trigger1 = command = "y"
trigger1 = (statetype = a) && ctrl

;--------------------------------------------------------------------------
[State -1, 630]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = power >= 99
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 610
triggerall = command = "b"
Triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Punch
[State -1, Throw]
type = ChangeState
value = 1000
triggerall = var(9) = 0
Triggerall = command = "c"
Triggerall = command != "holddown"
Triggerall = command != "holdback"
Triggerall = command != "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
triggerall = power >= 50
trigger2 = stateno = [200, 220]
trigger2 = time >= 9

;---------------------------------------------------------------------------
;Punch
[State -1, Throw]
type = ChangeState
value = 330
triggerall = var(9) = 0
Triggerall = command = "back_c"
trigger1 = statetype = S
trigger1 = ctrl
triggerall = power >= 499
trigger2 = stateno = [200, 220]
trigger2 = time >= 9

;---------------------------------------------------------------------------
;Punch
[State -1, Throw]
type = ChangeState
value = 337
Triggerall = command = "fwd_c"
trigger1 = statetype = S
trigger1 = ctrl
triggerall = power >= 999

;-------------------------------------------------------------------
;Punch
[State -1, Air Throw]
type = ChangeState
value = 1100
triggerall = var(9) = 0
Triggerall = command = "c"
Triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl

;-------------------------------------------------------------------
