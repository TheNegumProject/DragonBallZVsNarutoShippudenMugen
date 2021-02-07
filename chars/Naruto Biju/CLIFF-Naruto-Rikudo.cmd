;$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$;
;--------------------------------------------------------------------------------------;
;--------------------------------------------------------------------------------------;
;------------------------------;CLIFF-Naruto-Rikudo;-----------------------------------;
;------------------------------;<----------------->;-----------------------------------;
;--------------------------------------------------------------------------------------;
;--------------------------------------------------------------------------------------;
;--------------------------------------CMD---------------------------------------------;
;------------------------------------<----->-------------------------------------------;
;--------------------------------------------------------------------------------------;
;$$$$$$$$$$$$$$$$$$$$$$$$$$$$$(=CSmugen.UCOZ.COM=)$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$;
;ALL THE WAY ON TOP
;The CMD file.

; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10
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
;   time = time (optional)
;   buffer.time = time (optional)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas. Each of these
;   buttons or directions is referred to as a "symbol".
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
;   greater-than (>) - means there must be no other keys pressed or released
;                      between the previous and the current symbol.
;          egs. command = a, >~a   ;press a and release it without having hit
;                                  ;or released any other keys in between
;   You can combine the symbols:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;
;   Note: Successive direction symbols are always expanded in a manner similar
;         to this example:
;           command = F, F
;         is expanded when MUGEN reads it, to become equivalent to:
;           command = F, >~F, >F
;
;   It is recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This makes the command easier
;   to do.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. The default
;   value for this is set in the [Defaults] section below. A typical
;   value is 15.
;
; - buffer.time (optional)
;   Time that the command will be buffered for. If the command is done
;   successfully, then it will be valid for this time. The simplest
;   case is to set this to 1. That means that the command is valid
;   only in the same tick it is performed. With a higher value, such
;   as 3 or 4, you can get a "looser" feel to the command. The result
;   is that combos can become easier to do because you can perform
;   the command early. Attacks just as you regain control (eg. from
;   getting up) also become easier to do. The side effect of this is
;   that the command is continuously asserted, so it will seem as if
;   you had performed the move rapidly in succession during the valid
;   time. To understand this, try setting buffer.time to 30 and hit
;   a fast attack, such as KFM's light punch.
;   The default value for this is set in the [Defaults] section below. 
;   This parameter does not affect hold-only commands (eg. /F). It
;   will be assumed to be 1 for those commands.
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

;-| AI Activators|--------

[Command]
name = "CPU"
command = a
time = 1

[Command]
name = "CPU"
command = b
time = 1

[Command]
name = "CPU"
command = c
time = 1

[Command]
name = "CPU"
command = x
time = 1

[Command]
name = "CPU"
command = y
time = 1

[Command]
name = "CPU"
command = z
time = 1

[Command]
name = "CPU"
command = s
time = 1

[Command]
name = "CPU"
command = F
time = 1

[Command]
name = "CPU"
command = B
time = 1

[Command]
name = "CPU"
command = U
time = 1

[Command]
name = "CPU"
command = D
time = 1

; The CMD file.
[Command]
name = "CPU1"
command = ~D, c
time = 0

[Command]
name = "CPU2"
command = ~D, y
time = 0

[Command]
name = "CPU3"
command = ~D, a
time = 0

[Command]
name = "CPU4"
command = ~D, b
time = 0

[Command]
name = "CPU5"
command = ~D, z
time = 0

[Command]
name = "CPU6"
command = ~D, x
time = 0

[Command]
name = "CPU7"
command = ~D, s
time = 0

;---------------------------;
;--;AI Killer 3RD-Raikage---;
;---------------------------;

[Command]
name = "AI1"
command = ~D, c
time = 1

[Command]
name = "AI2"
command = ~D, y
time = 1

[Command]
name = "AI3"
command = ~D, a
time = 1

[Command]
name = "AI4"
command = ~D, b
time = 1

[Command]
name = "AI5"
command = ~D, z
time = 1

[Command]
name = "AI6"
command = ~D, x
time = 1

[Command]
name = "AI7"
command = ~D, s
time = 1

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


command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.


command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;

;-| Special Motions |------------------------------------------------------

;Charge_Down_Up_High Jump
[Command]
name = "High Jump"
command = ~$D, UF
time = 10
buffer.time = 2

;Charge_Down_Up_High Jump Forward
[Command]
name = "High Jump Forward"
command = ~$D, U
time = 10
buffer.time = 2

;-| Double Tap |-----------------------------------------------------------

[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[command]
name = "D-F-Z"
command = D,F,z
time = 15

[command]
name = "D-B-Z"
command = D,B,z
time = 15

[command]
name = "D-F-a"
command = D,F,a
time = 15

[command]
name = "D-B-a"
command = D,B,a
time = 15

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = c+y
time = 1

[Command]
name = "recovery"
command = x+a
time = 1

[Command]
name = "recovery"
command = z+b
time = 1

[Command]
name = "recovery"
command = y+b
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
name = "start"
command = s
time = 1

[command]
name = "down_s"
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

[Command]
name = "starts"
command = ~s
time = 15

[Command]
name = "bs"
command = ~b
time = 15

[Command]
name = "zs"
command = ~z
time = 15

[Command]
name = "xs"
command = ~x
time = 15

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
[Statedef -1,]

[State -1, Long Hand Pull Rasengan]
type = ChangeState
value = 310
triggerall = power >= 700
triggerall = command = "D-F-Z"
trigger1 = (statetype = s) && ctrl

[State -1, Long Hand Rasengan]
type = ChangeState
value = 300
triggerall = power >= 1000
triggerall = command = "D-B-Z"
trigger1 = (statetype = s) && ctrl

[State -1, Double Rasengan]
type = ChangeState
value = 400
triggerall = power >= 1000
triggerall = command = "D-F-a"
trigger1 = (statetype = s) && ctrl

[State -1, Odama Rasengan]
type = ChangeState
value = 404
triggerall = power >= 1300
triggerall = command = "D-B-a"
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
[STATE ,-1
;---------------------------------------------------------------------------

[state -1,Chacra Charge]
type = changestate
value = 195
triggerall = var(10) = 0
triggerall = power != 3000
Triggerall = command = "hold_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1,Yellow Flash Kawarimi]
type = ChangeState
value = 8922999
triggerall = time >= 5
triggerall = power >= 300
triggerall = stateno = [5000,5999]
triggerall = command = "a"
trigger1 = movetype = H

[state -1,Yellow Flash Stand]
type = changestate
value = 2022
triggerall = time >= 15
triggerall = var(10) = 0
triggerall = command = "z"
triggerall = command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

[state -1,Yellow Flash Air 1]
type = changestate
value = 2022022
triggerall = time >= 15
triggerall = var(10) = 0
triggerall = command = "c"
Trigger1 = StateType = A
trigger1 = ctrl = 1

[state -1,Yellow Flash Air 2]
type = changestate
value = 2022022
triggerall = time >= 15
triggerall = var(10) = 0
triggerall = command = "y"
Trigger1 = StateType = A
trigger1 = ctrl = 1

[State -1,Air Kick Down]
Type = ChangeState
triggerall = var(10) = 0
Triggerall = Command = "a"
Trigger1 = ctrl = 1
Trigger1 = StateType = A
Value = 666

[State -1,Air Kick FWD]
Type = ChangeState
triggerall = var(10) = 0
Triggerall = Command = "b"
Trigger1 = ctrl = 1
Trigger1 = StateType = A
Value = 667

[state -1,Grap Smash]
type = ChangeState
value = 106060
triggerall = var(10) = 0
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl

[State -1,Combo 1]
Type = ChangeState
triggerall = var(10) = 0
Triggerall = Command = "a"
Triggerall = Command != "holddown"
Trigger1 = ctrl = 1
Trigger1 = StateType = S
Value = 200

[State -1,Combo 2]
type = ChangeState
value = 210
triggerall = var(10) = 0
triggerall = stateno = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = movecontact
trigger1 = statetype = S
trigger1 = time >= 10

[State -1,Combo 3]
type = ChangeState
value = 230
triggerall = var(10) = 0
triggerall = stateno = 210
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = time >= 10
trigger1 = movecontact

[State -1,Combo Bunchin 1]
Type = ChangeState
Value = 240
triggerall = p2dist x = [0,150]
triggerall = var(10) = 0
Triggerall = Command = "b"
Triggerall = Command != "holddown"
Trigger1 = ctrl = 1
Trigger1 = StateType = S

[State -1,Combo Bunchin 2]
Type = ChangeState
Value = 250
triggerall = p2dist x = [0,170]
triggerall = var(10) = 0
triggerall = stateno = 240
Triggerall = Command = "b"
Triggerall = Command != "holddown"
trigger1 = time >= 40
Trigger1 = StateType = S

[State -1,Combo Bunchin 3]
Type = ChangeState
Value = 260
triggerall = p2dist x = [0,170]
triggerall = var(10) = 0
triggerall = stateno = 250
Triggerall = Command = "b"
Triggerall = Command != "holddown"
trigger1 = time >= 50
Trigger1 = StateType = S

[state -1,Bunchin]
type = ChangeState
value = 1111240
TRIGGERALL = NUMhelper(20000) < 2
triggerall = var(10) = 0
triggerall = power >= 1000
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[state -1,Rampage]
type = ChangeState
value = 15012
triggerall = var(10) = 0
triggerall = power >= 1000
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[State -1,Air Rasengan]
Type = ChangeState
Value = 6663441
TRIGGERALL = NUMhelper(6663443) < 1
triggerall = power >= 500
triggerall = var(10) = 0
Triggerall = Command = "x"
Trigger1 = ctrl = 1
Trigger1 = StateType = A

[State -1,Charge Rasengan]
Type = ChangeState
value = 95911
triggerall = power >= 1000
triggerall = numhelper(95914) = 0
triggerall = numhelper(95915) = 0
triggerall = numhelper(905911) = 0
triggerall = var(10) = 0
Triggerall = Command = "x"
Triggerall = Command != "holddown"
Trigger1 = ctrl = 1
Trigger1 = StateType = S

[State -1,Vacum Rasengan]
Type = ChangeState
value = 199910
triggerall = power >= 1000
triggerall = var(10) = 0
Triggerall = Command = "hold_x"
Triggerall = Command = "holddown"
Trigger1 = ctrl = 1
Trigger1 = StateType = C

[State -1,Rikudo Kyubi Bomb]
Type = ChangeState
value = 1990
triggerall = power >= 1500
triggerall = var(10) = 0
Triggerall = Command = "hold_y"
Triggerall = Command = "holddown"
Trigger1 = ctrl = 1
Trigger1 = StateType = C

;---------------------------------------------------------------------------
[STATE ,-1
;---------------------------------------------------------------------------

[State -1, Run Fwd ALL]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, HOP BACK Back ALL]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, Air Dash Fwd ALL]
type = ChangeState
value = 1110
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, Air Dash Back ALL]
type = ChangeState
value = 1115
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != 105

;---------------------------------------------------------------------------

[State -1, High Jump ALL]
type = ChangeState
value = 1160
triggerall = command = "High Jump"
triggerall = statetype != A
trigger1   = ctrl
trigger2   = stateno = 100
trigger2   = animelemtime(3) >= 0

;---------------------------------------------------------------------------

[State -1, High Jump Forward ALL]
type = ChangeState
value = 1170
triggerall = command = "High Jump Forward"
triggerall = statetype != A
trigger1   = ctrl

;---------------------------------------------------------------------------

[State -1, Guard ALL]
type = ChangeState
value = 120
triggerall = MoveType != H
triggerall = statetype = S
triggerall = ctrl
triggerall = Alive
triggerall = PrevStateNo != 900
trigger1 = command = "hold_s"

;---------------------------------------------------------------------------

[State -1, Wall Jump ALL]
type = ChangeState
value = 56
triggerall = var(10) = 0
triggerall = backedgebodydist <= 1 && backedgebodydist > -1
triggerall = command = "holdfwd"
triggerall = Pos Y < -30
triggerALL = StateType = A
trigger1 = ctrl = 1
trigger1 = Vel X <= 0

;$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$;
;--------------------------------------------------------------------------------------;
;--------------------------------------------------------------------------------------;
;--------------------------------;CLIFF-hidan-V3;-------------------------------------;
;------------------------------;<----------------->;-----------------------------------;
;--------------------------------------------------------------------------------------;
;--------------------------------------------------------------------------------------;
;--------------------------------------COMMON------------------------------------------;
;------------------------------------<-------->----------------------------------------;
;--------------------------------------------------------------------------------------;
;$$$$$$$$$$$$$$$$$$$$$$$$$$$$(=CODINGSCHOOL.UCOZ.COM=)$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$;
