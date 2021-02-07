;$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$;
;--------------------------------------------------------------------------------------;
;--------------------------------------------------------------------------------------;
;--------------------------------;CLIFF-Kisame-V3;-------------------------------------;
;------------------------------;<----------------->;-----------------------------------;
;--------------------------------------------------------------------------------------;
;--------------------------------------------------------------------------------------;
;-------------------------------COMMAND-SECTION-CMD------------------------------------;
;------------------------------<------------------->-----------------------------------;
;--------------------------------------------------------------------------------------;
;$$$$$$$$$$$$$$$$$$$$$$$$$$$$(=CODING-SCHOOL.UCOZ.COM=)$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$;
;ALL THE WAY ON TOP
;The CMD file.
[Command]
name = "CPU1"
command = B,F,B,a
time = 0

[Command]
name = "CPU2"
command = B,F,B,b
time = 0

[Command]
name = "CPU3"
command = B,F,B,c
time = 0

[Command]
name = "CPU4"
command = B,F,B,x
time = 0

[Command]
name = "CPU5"
command = B,F,B,y
time = 0

[Command]
name = "CPU6"
command = B,F,B,z
time = 0

[Command]
name = "CPU7"
command = B,D,B,a
time = 0

[Command]
name = "CPU8"
command = B,D,B,b
time = 0

[Command]
name = "CPU9"
command = B,D,B,c
time = 0

[Command]
name = "CPU10"
command = B,D,B,x
time = 0

[Command]
name = "CPU11"
command = B,D,B,y
time = 0

[Command]
name = "CPU12"
command = B,D,B,z
time = 0

[Command]
name = "CPU13"
command = B,D,B,s
time = 0

[Command]
name = "CPU14"
command = B,F,B,s
time = 0
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

[Command]
name = "AI"
command = U, U, U, U, U, U, U, U, b, U, a, U, U, U, U, U, c, U, z, U
time = 1

[Command]
name = "AI1"
command = D, D, D, U, U, U, x, U, U, U, a, U, U, U, U, U, U, U, b, U
time = 1

[Command]
name = "AI2"
command = F, F, F, U, U, U, U, U, x, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI3"
command = B, B, B, U, U, U, U, U, x, U, U, U, z, U, U, U, U, U, U, b
time = 1

[Command]
name = "AI4"
command = U, U, U, U, U, U, U, a, U, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI5"
command = D, D, D, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI6"
command = F, F, F, U, U, U, U, U, U, y, U, U, z, y, U, U, U, U, U, U
time = 1

[Command]
name = "AI7"
command = B, B, B, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI8"
command = U, U, U, U, U, U, U, a, U, U, U, U, U, y, y, U, U, U, U, U
time = 1

[Command]
name = "AI9"
command = D, D, D, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI10"
command = F, B, F, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI11"
command = D, U, D, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI12"
command = F, B, F, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI13"
command = B, F, B, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI14"
command = U, D, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI15"
command = D, U, D, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI16"
command = F, B, F, U, U, U, U, U, U, U, F, U, a, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI17"
command = B, F, B, U, U, U, U, a, U, U, B, U, U, U, U, U, c, U, U, b
time = 1

[Command]
name = "AI18"
command = U, D, U, U, U, U, U, z, U, U, U, y, U, y, U, D, U, U, U, U
time = 1

[Command]
name = "AI19"
command = D, U, D, U, U, U, U, U, U, U, U, U, U, U, U, U, D, U, U, U
time = 1

[Command]
name = "AI20"
command = F, B, F, U, U, U, U, U, U, F, B, z, a, U, U, U, D, U, U, U
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
name = "1"
command = D,F,a
time = 10

[command]
name = "2"
command = D,B,a
time = 10

[command]
name = "3"
command = D,F,x
time = 10

[command]
name = "4"
command = D,B,x
time = 10

[command]
name = "5"
command = D,F,z
time = 10

[command]
name = "6"
command = D,B,z
time = 10

[command]
name = "7"
command = D,B,y
time = 10

[command]
name = "8"
command = D,F,y
time = 10

[command]
name = "9"
command = D,F,c
time = 10

[command]
name = "10"
command = D,B,c
time = 10

[command]
name = "11"
command = D,B,b
time = 10

[command]
name = "111"
command = D,F,b
time = 10



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

[State -1,AI KILLER Kisame-V3]
type = VarSet
triggerall = var(50)=1
trigger1 = (command = "a") ^^ (command = "a")
trigger2 = (command = "b") ^^ (command = "b")
trigger3 = (command = "c") ^^ (command = "c")
trigger4 = (command = "x") ^^ (command = "x")
trigger5 = (command = "y") ^^ (command = "y")
trigger6 = (command = "z") ^^ (command = "z")
trigger7 = (command = "start") ^^ (command = "start")
trigger8 = (command = "hold_a") ^^ (command = "hold_a")
trigger9 = (command = "hold_b") ^^ (command = "hold_b")
trigger10 = (command = "hold_c") ^^ (command = "hold_c")
trigger11 = (command = "hold_x") ^^ (command = "hold_x")
trigger12 = (command = "hold_y") ^^ (command = "hold_y")
trigger13 = (command = "hold_z") ^^ (command = "hold_z")
trigger14 = (command = "hold_s") ^^ (command = "hold_s")
trigger15 = (command = "holdfwd") ^^ (command = "holdfwd")
trigger16 = (command = "holdback") ^^ (command = "holdback")
trigger17 = (command = "holdup") ^^ (command = "holdup")
trigger18 = (command = "holddown") ^^ (command = "holddown")
trigger19 = (command = "recovery") ^^ (command = "recovery")
v = 50
value = 1

;---------------------------------------------------------------------------
[STATE ,-1
;---------------------------------------------------------------------------

[State -1,AI ON air attacks]
type = VarSet
triggerall = statetype = A
triggerall = command = "CPU"
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
v = 50
value = 1

[State -1, AI ON stand basic attacks]
type = VarSet
triggerall = statetype = S
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
trigger13 = command = "hold_s"
v = 50
value = 1

[State -1,AI ON stand specials]
type = VarSet
triggerall = statetype = S
triggerall = command = "CPU"
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
v = 50
value = 1

[State -1,AI ON stand super specials]
type = VarSet
triggerall = statetype = S
triggerall = p2statetype = S
triggerall = command = "CPU"
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
v = 50
value = 1

[State -1,AI ON crouch basic attacks]
type = VarSet
triggerall = statetype = C
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
v = 50
value = 1

[State -1,AI ON crouch specials]
type = VarSet
triggerall = statetype = C
triggerall = command = "CPU"
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
v = 50
value = 1

[State -1,AI ON crouch super specials]
type = VarSet
triggerall = statetype = C
triggerall = p2statetype = C
triggerall = command = "CPU"
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
v = 50
value = 1

;---------------------------------------------------------------------------
[STATE ,-1
;---------------------------------------------------------------------------

[State -1, AI RUN]
type = ChangeState
value = 100
triggerall = RoundState = 2
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = var(10) = 0
triggerall = var(10) = 1
triggerall = var(10) = 2
triggerall = var(10) = 3
triggerall = Var(50) = 1
triggerall = p2life > 0
triggerall = p2bodydist X > 420
trigger2 = power >= 0
trigger1 = statetype = S
trigger1 = ctrl

[State -1,AI shurican 1]
type = ChangeState
value = 987
triggerall = RoundState = 2
triggerall = var(10) = 0
triggerall = var(10) = 1
triggerall = var(10) = 2
triggerall = var(10) = 3
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < !500
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI shurican 2]
type = ChangeState
value = 770
triggerall = RoundState = 2
triggerall = var(10) = 0
triggerall = var(10) = 1
triggerall = var(10) = 2
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < !500
trigger1 = statetype = S
trigger1 = ctrl

[State -1,  AI combo1]
type = ChangeState
value = 200
triggerall = RoundState = 2
triggerall = var(10) = 0
triggerall = var(10) = 1
triggerall = var(10) = 2
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl

[State -1,AI combo2]
type = ChangeState
triggerall = RoundState = 2
triggerall = var(10) = 0
triggerall = var(10) = 1
triggerall = var(10) = 2
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
value = 210

[State -1,  AI combo3]
type = ChangeState
triggerall = RoundState = 2
triggerall = var(10) = 0
triggerall = var(10) = 1
triggerall = var(10) = 2
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 210
value = 230

[State -1,  AI combo4]
type = ChangeState
value = 240
triggerall = RoundState = 2
triggerall = var(10) = 0
triggerall = var(10) = 1
triggerall = var(10) = 2
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl

[State -1,AI combo2]
type = ChangeState
triggerall = RoundState = 2
triggerall = var(10) = 0
triggerall = var(10) = 1
triggerall = var(10) = 2
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 240
value = 250

[State -1,  AI combo3]
type = ChangeState
triggerall = RoundState = 2
triggerall = var(10) = 0
triggerall = var(10) = 1
triggerall = var(10) = 2
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 250
value = 260

[State -1, AI CROUCH SPECIAL (S)Enter]
type = ChangeState
VALUE = 999999
triggerall = RoundState = 2
TRIGGERALL = POWER >= 1000
triggerall = var(10) = 0
triggerall = var(10) = 1
triggerall = var(10) = 2
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = c
trigger1 = ctrl

[State -1, AI CROUCH SPECIAL 1]
type = ChangeState
VALUE = 6666
triggerall = RoundState = 2
triggerall = numexplod(62777) < 2
TRIGGERALL = POWER >= 1500
triggerall = var(10) = 0
triggerall = var(10) = 1
triggerall = var(10) = 2
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = C
trigger1 = ctrl

[State -1, AI CROUCH SPECIAL 2]
type = ChangeState
value = 311
triggerall = RoundState = 2
triggerall = power >= 400
triggerall = var(10) = 0
triggerall = var(10) = 1
triggerall = var(10) = 2
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = C
trigger1 = ctrl

[State -1, AI CROUCH SPECIAL 3]
type = ChangeState
value = 83
triggerall = RoundState = 2
triggerall = power >= 1000
triggerall = var(10) = 0
triggerall = var(10) = 1
triggerall = var(10) = 2
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = C
trigger1 = ctrl

[State -1, AI CROUCH SPECIAL 4]
type = ChangeState
value = 72
triggerall = RoundState = 2
triggerall = power >= 1000
triggerall = var(10) = 0
triggerall = var(10) = 1
triggerall = var(10) = 2
triggerall = Var(50) = 1
trigger1 = random <= 20
triggerall = p2life > 0
trigger1 = statetype = C
trigger1 = ctrl

[State -1,AI CROUCH SPECIAL 5]
type = ChangeState
value = 9977
triggerall = RoundState = 2
triggerall = power >= 1500
triggerall = var(10) = 0
triggerall = var(10) = 1
triggerall = var(10) = 2
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = C
trigger1 = ctrl

[State -1, AI CROUCH SPECIAL 6]
type = ChangeState
VALUE = 6036
triggerall = RoundState = 2
TRIGGERALL = POWER >= 500
triggerall = var(10) = 0
triggerall = var(10) = 1
triggerall = var(10) = 2
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2bodydist X < 5
triggerall = p2life > 0
trigger1 = statetype = C
trigger1 = ctrl

[State -1,AI AIR ATTACK 1]
type = ChangeState
Value = 666
triggerall = RoundState = 2
triggerall = var(10) = 0
triggerall = var(10) = 1
triggerall = var(10) = 2
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = A
trigger1 = ctrl

[State -1,AI AIR ATTACK 2]
type = ChangeState
Value = 667
triggerall = RoundState = 2
triggerall = var(10) = 0
triggerall = var(10) = 1
triggerall = var(10) = 2
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = A
trigger1 = ctrl

[State -1,AI AIR ATTACK 3]
type = ChangeState
Value = 668
triggerall = RoundState = 2
triggerall = var(10) = 0
triggerall = var(10) = 1
triggerall = var(10) = 2
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = A
trigger1 = ctrl

[State -1,AI AIR ATTACK 4]
type = ChangeState
Value = 669
triggerall = RoundState = 2
triggerall = power >= 500
triggerall = var(10) = 0
triggerall = var(10) = 1
triggerall = var(10) = 2
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = A
trigger1 = ctrl

[State -1, AI KAWIMI]
type = ChangeState
value = 505
triggerall = RoundState = 2
trigger1 = movetype = H
triggerall = backedgebodydist <= 1 && backedgebodydist > -1
Triggerall = Power >= 200
triggerall = var(10) = 0
triggerall = var(10) = 1
triggerall = var(10) = 2
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = ctrl

[State -1, AI THROW ENEMY]
type = ChangeState
Value = 84211111
triggerall = RoundState = 2
triggerall = var(10) = 2
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist x > 0 && p2bodydist x <= 20
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI Teleport]
type = ChangeState
value = 2022
triggerall = RoundState = 2
triggerall = var(10) = 0
triggerall = var(10) = 1
triggerall = var(10) = 2
triggerall = var(10) = 3
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 100
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI SPECIAL 1]
type = ChangeState
value = 84567
triggerall = RoundState = 2
triggerall = numhelper(84568) < 1
triggerall = power >= 500
triggerall = var(10) = 0
triggerall = var(10) = 1
triggerall = var(10) = 2
triggerall = Var(50) = 1
triggerall = random >= 150 && random < 199 || random >= 250 && random <= 399
triggerall = p2life > 0
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI SPECIAL 2]
type = ChangeState
value = 45674
triggerall = RoundState = 2
triggerall = var(10) = 0
triggerall = var(10) = 1
triggerall = var(10) = 2
triggerall = Var(50) = 1
triggerall = random >= 150 && random < 199 || random >= 250 && random <= 399
triggerall = p2life > 0
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI SPECIAL 3]
type = ChangeState
value = 5676
triggerall = RoundState = 2
Triggerall = numexplod(769) <1
triggerall = power >= 500
triggerall = var(10) = 0
triggerall = var(10) = 1
triggerall = var(10) = 2
triggerall = Var(50) = 1
triggerall = random >= 150 && random < 199 || random >= 250 && random <= 399
triggerall = p2life > 0
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI SPECIAL 4]
type = ChangeState
value = 54674
triggerall = RoundState = 2
triggerall = power >= 100
triggerall = var(10) = 0
triggerall = var(10) = 1
triggerall = var(10) = 2
triggerall = Var(50) = 1
triggerall= p2dist x>=20 && random<50
triggerall = p2life > 0
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI SPECIAL 5]
type = ChangeState
value = 4281
triggerall = RoundState = 2
triggerall = power >= 1000
triggerall = var(10) = 0
triggerall = var(10) = 1
triggerall = var(10) = 2
triggerall = Var(50) = 1
triggerall = random >= 150 && random < 199 || random >= 250 && random <= 399
triggerall = p2life > 0
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI SPECIAL 6]
type = ChangeState
value = 1656
triggerall = RoundState = 2
triggerall = power >= 200
triggerall = var(10) = 0
triggerall = var(10) = 1
triggerall = var(10) = 2
triggerall = Var(50) = 1
triggerall = random >= 150 && random < 199 || random >= 250 && random <= 399
triggerall = p2life > 0
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI SPECIAL 7]
type = ChangeState
value = 61331
triggerall = RoundState = 2
triggerall = power >= 1000
triggerall = var(10) = 0
triggerall = var(10) = 1
triggerall = var(10) = 2
triggerall = Var(50) = 1
triggerall = random >= 150 && random < 199 || random >= 250 && random <= 399
triggerall = p2life > 0
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI SPECIAL 8]
type = ChangeState
value = 76
triggerall = RoundState = 2
triggerall = power >= 800
triggerall = var(10) = 0
triggerall = var(10) = 1
triggerall = var(10) = 2
triggerall = Var(50) = 1
triggerall = random >= 150 && random < 199 || random >= 250 && random <= 399
triggerall = p2life > 0
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI SPECIAL 9]
type = ChangeState
value = 80
triggerall = RoundState = 2
triggerall = power >= 500
triggerall = var(10) = 0
triggerall = var(10) = 1
triggerall = var(10) = 2
triggerall = Var(50) = 1
triggerall = random >= 150 && random < 199 || random >= 250 && random <= 399
triggerall = p2life > 0
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI SPECIAL 10]
type = ChangeState
value = 78
triggerall = RoundState = 2
triggerall = power >= 700
triggerall = var(10) = 0
triggerall = var(10) = 1
triggerall = var(10) = 2
triggerall = Var(50) = 1
triggerall = random >= 150 && random < 199 || random >= 250 && random <= 399
triggerall = p2life > 0
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI SPECIAL 11]
type = ChangeState
value = 74
triggerall = RoundState = 2
triggerall = power >= 1000
triggerall = var(10) = 0
triggerall = var(10) = 1
triggerall = var(10) = 2
triggerall = Var(50) = 1
triggerall = random >= 150 && random < 199 || random >= 250 && random <= 399
triggerall = p2life > 0
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI SPECIAL 12]
type = ChangeState
value = 70
triggerall = RoundState = 2
triggerall = power >= 500
triggerall = var(10) = 0
triggerall = var(10) = 1
triggerall = var(10) = 2
triggerall = Var(50) = 1
triggerall = random >= 150 && random < 199 || random >= 250 && random <= 399
triggerall = p2life > 0
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI shark sawada ocean(S)Enter 2]
type = ChangeState
value = 20450
triggerall = var(10) = 2
triggerall = RoundState = 2
TRIGGERALL = POWER >= 1000
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = c
trigger1 = ctrl

[State -1,  AI combo1 = (LF)]
type = ChangeState
value = 634561
triggerall = RoundState = 2
triggerall = var(10) = 3
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl

[State -1,AI combo2 = (LF)]
type = ChangeState
triggerall = RoundState = 2
triggerall = var(10) = 3
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 634561
value = 634562

[State -1,  AI combo3 = (LF)]
type = ChangeState
triggerall = RoundState = 2
triggerall = var(10) = 3
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 634562
value = 634563

[State -1,  AI combo4 = (LF)]
type = ChangeState
triggerall = RoundState = 2
triggerall = var(10) = 3
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 634563
value = 634564

[State -1,AI combo2 = (LF)]
type = ChangeState
triggerall = RoundState = 2
triggerall = var(10) = 3
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 634564
value = 634565

[State -1, AI CROUCH SPECIAL 1 = (LF)]
type = ChangeState
Value = 10222652
TRIGGERALL = POWER >= 700
triggerall = RoundState = 2
triggerall = var(10) = 3
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = C
trigger1 = ctrl

[State -1, AI CROUCH SPECIAL 2 = (LF)]
type = ChangeState
value = 722278
triggerall = RoundState = 2
triggerall = power >= 700
triggerall = var(10) = 3
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = C
trigger1 = ctrl

[State -1, AI CROUCH SPECIAL 3 = (LF)]
type = ChangeState
value = 31070
triggerall = RoundState = 2
triggerall = power >= 500
triggerall = var(10) = 3
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = C
trigger1 = ctrl

[State -1, AI CROUCH SPECIAL 4 = (LF)]
type = ChangeState
value = 31080
triggerall = RoundState = 2
triggerall = power >= 1500
triggerall = var(10) = 3
triggerall = Var(50) = 1
trigger1 = random <= 20
triggerall = p2life > 0
trigger1 = statetype = C
trigger1 = ctrl

[State -1,AI CROUCH SPECIAL 5 = (LF)]
type = ChangeState
value = 31076
triggerall = RoundState = 2
triggerall = power >= 800
triggerall = var(10) = 3
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = C
trigger1 = ctrl

[State -1, AI CROUCH SPECIAL 6 = (LF)]
type = ChangeState
VALUE = 997719991
triggerall = RoundState = 2
TRIGGERALL = POWER >= 1500
triggerall = var(10) = 3
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2bodydist X < 5
triggerall = p2life > 0
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[STATE ,-1
;---------------------------------------------------------------------------

[State -1,R = Five water defence]
type = ChangeState
value = 84567
triggerall = var(10) = 0
triggerall = numhelper(84568) < 1
triggerall = command = "6"
triggerall = power >= 500
trigger1 = (statetype = s) && ctrl

[State -1,R = remove water shield]
type = ChangeState
value = 45674
triggerall = var(10) = 0
triggerall = command = "111"
trigger1 = (statetype = s) && ctrl

[State -1,R = water shield]
type = ChangeState
value = 5676
triggerall = var(10) = 0
Triggerall = numexplod(769) <1
triggerall = command = "11"
triggerall = power >= 500
trigger1 = (statetype = s) && ctrl

[State -1,R = self water prison]
type = ChangeState
value = 54674
triggerall = var(10) = 0
triggerall = command = "10"
triggerall = power >= 100
trigger1 = (statetype = s) && ctrl

[State -1,R = water shakun release]
type = ChangeState
value = 4281
triggerall = var(10) = 0
triggerall = command = "9"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl

[State -1,R = water rush wave]
type = ChangeState
value = 1656
triggerall = var(10) = 0
triggerall = command = "8"
triggerall = power >= 200
trigger1 = (statetype = s) && ctrl

[State -1,R = sawada rush]
type = ChangeState
value = 61331
triggerall = var(10) = 0
triggerall = command = "7"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl

[State -1,R = WATER SNAKE BIG]
type = ChangeState
value = 76
triggerall = var(10) = 0
triggerall = command = "5"
triggerall = power >= 800
trigger1 = (statetype = s) && ctrl

[State -1,R = small shark]
type = ChangeState
value = 80
triggerall = var(10) = 0
triggerall = command = "4"
triggerall = power >= 500
trigger1 = (statetype = s) && ctrl

[State -1,R = sharks flash ground]
type = ChangeState
value = 78
triggerall = var(10) = 0
triggerall = command = "1"
triggerall = power >= 700
trigger1 = (statetype = s) && ctrl

[State -1,R = WATER KAZU SLAM]
type = ChangeState
value = 74
triggerall = var(10) = 0
triggerall = command = "2"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl

[State -1,R = 15 SMALL SHARKS]
type = ChangeState
value = 70
triggerall = var(10) = 0
triggerall = command = "3"
triggerall = power >= 500
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
[STATE ,-1
;---------------------------------------------------------------------------

[State -1,big sawada 15 small sharks]
type = ChangeState
value = 70
triggerall = var(10) = 1
triggerall = command = "3"
triggerall = power >= 500
trigger1 = (statetype = s) && ctrl

[State -1,big sawada small shark]
type = ChangeState
value = 80
triggerall = var(10) = 1
triggerall = command = "4"
triggerall = power >= 500
trigger1 = (statetype = s) && ctrl

[State -1,big sawada Five water defence]
type = ChangeState
value = 84567
triggerall = var(10) = 1
triggerall = numhelper(84568) < 1
triggerall = command = "6"
triggerall = power >= 500
trigger1 = (statetype = s) && ctrl

[State -1,big sawada water snake]
type = ChangeState
value = 76
triggerall = var(10) = 1
triggerall = command = "5"
triggerall = power >= 800
trigger1 = (statetype = s) && ctrl

[State -1,big sawada sharks flash ground]
type = ChangeState
value = 78
triggerall = var(10) = 1
triggerall = command = "1"
triggerall = power >= 700
trigger1 = (statetype = s) && ctrl

[State -1,big sawada remove water shield]
type = ChangeState
value = 45674
triggerall = var(10) = 1
triggerall = command = "111"
trigger1 = (statetype = s) && ctrl

[State -1,big sawada water shield]
type = ChangeState
value = 5676
triggerall = var(10) = 1
Triggerall = numexplod(769) <1
triggerall = command = "11"
triggerall = power >= 500
trigger1 = (statetype = s) && ctrl

[State -1,big sawada self water prison]
type = ChangeState
value = 54674
triggerall = var(10) = 1
triggerall = command = "10"
triggerall = power >= 100
trigger1 = (statetype = s) && ctrl

[State -1,big sawada water release]
type = ChangeState
value = 104281
triggerall = var(10) = 1
triggerall = command = "9"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl

[State -1,big sawada grap enemy throw]
type = ChangeState
value = 106060
triggerall = var(10) = 1
triggerall = command = "7"
trigger1 = (statetype = s) && ctrl

[State -1,big sawada water rush wave]
type = ChangeState
value = 1656
triggerall = var(10) = 1
triggerall = command = "8"
triggerall = power >= 200
trigger1 = (statetype = s) && ctrl

[State -1,big sawada water kazu slam]
type = ChangeState
value = 1026262
triggerall = var(10) = 1
triggerall = command = "2"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
[STATE ,-1
;---------------------------------------------------------------------------

[State -1,shark sawada Five water defence]
type = ChangeState
value = 84567
triggerall = var(10) = 2
triggerall = numhelper(84568) < 1
triggerall = command = "1"
triggerall = power >= 500
trigger1 = (statetype = s) && ctrl

[State -1,shark sawada 15 SMALL SHARKS]
type = ChangeState
value = 70
triggerall = var(10) = 2
triggerall = command = "2"
triggerall = power >= 500
trigger1 = (statetype = s) && ctrl



[State -1,shark sawada WATER SNAKE BIG]
type = ChangeState
value = 76
triggerall = var(10) = 2
triggerall = command = "5"
triggerall = power >= 800
trigger1 = (statetype = s) && ctrl

[State -1,shark sawada small shark]
type = ChangeState
value = 80
triggerall = var(10) = 2
triggerall = command = "6"
triggerall = power >= 500
trigger1 = (statetype = s) && ctrl

[State -1,shark sawada sharks flash ground]
type = ChangeState
value = 78
triggerall = var(10) = 2
triggerall = command = "9"
triggerall = power >= 700
trigger1 = (statetype = s) && ctrl


[State -1,shark sawada self water prison]
type = ChangeState
value = 54674
triggerall = var(10) = 2
triggerall = command = "10"
triggerall = power >= 100
trigger1 = (statetype = s) && ctrl


[State -1,shark sawada water release 1]
type = ChangeState
value = 104281
triggerall = var(10) = 2
triggerall = command = "7"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl


[State -1,shark sawada water release 2]
type = ChangeState
value = 104281
triggerall = var(10) = 2
triggerall = command = "8"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl

[State -1,shark sawada water release 3]
type = ChangeState
value = 104281
triggerall = var(10) = 2
triggerall = command = "3"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl

[State -1,shark sawada water release 4]
type = ChangeState
value = 104281
triggerall = var(10) = 2
triggerall = command = "4"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl

[State -1,shark sawada water release 5]
type = ChangeState
value = 104281
triggerall = var(10) = 2
triggerall = command = "11"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl

[State -1,shark sawada water release 6]
type = ChangeState
value = 104281
triggerall = var(10) = 2
triggerall = command = "111"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl

;===========================================================================
;---------------------------------------------------------------------------
[STATE ,-1
;---------------------------------------------------------------------------
;--------------------------------------------------------------------------------------;
;--------------------------------------------------------------------------------------;
;--------------------------------------------------------------------------------------;
;$$$$$$$$$$$$$$$$$$$$$$$$$$$$(=CODING-SCHOOL.UCOZ.COM=)$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$;
;--------------------------------------------------------------------------------------;
;--------------------------------------------------------------------------------------;

[state -1,R =  WallRun]
type = changestate
value = 101
triggerall = var(10) = 0
triggerall = stateno = 20 || stateno = 100
triggerall = command = "hold_s" && command = "holdback"
trigger1 = backedgedist < 5
trigger1 = command = "holdback"
trigger2 = frontedgedist < 5
trigger2 = command = "holdfwd"

[state -1,R = WAll Jump ]
type = changestate
value = 45
triggerall = var(10) = 0
triggerall = stateno = 104
triggerall = (ctrl) && (command = "holdup")
trigger1 = pos y <= -170
trigger1 = time > 20
trigger2 = pos y > -170

[State -1,R = AIR 1 SPIKE]
Type = ChangeState
triggerall = var(10) = 0
Triggerall = Command = "c"
Trigger1 = ctrl = 1
Trigger1 = StateType = A
Value = 666

[State -1,R = AIR 2 SPIKE]
Type = ChangeState
triggerall = var(10) = 0
Triggerall = Command = "y"
Trigger1 = ctrl = 1
Trigger1 = StateType = A
Value = 666

[State -1,R = AIR 3 SPIKE]
Type = ChangeState
triggerall = var(10) = 0
Triggerall = Command = "a"
Trigger1 = ctrl = 1
Trigger1 = StateType = A
Value = 667

[State -1,R = AIR 4 SPIKE]
Type = ChangeState
triggerall = var(10) = 0
Triggerall = Command = "b"
Trigger1 = ctrl = 1
Trigger1 = StateType = A
Value = 667

[State -1,R = AIR 5 SPIKE]
Type = ChangeState
triggerall = var(10) = 0
Triggerall = Command = "x"
Trigger1 = ctrl = 1
Trigger1 = StateType = A
Value = 668

[State -1,R = AIR 6 SPIKE]
Type = ChangeState
triggerall = var(10) = 0
Triggerall = Command = "z"
Trigger1 = ctrl = 1
Trigger1 = StateType = A
Value = 668

[State -1,R = AIR 7 SPIKE]
Type = ChangeState
triggerall = var(10) = 0
Triggerall = Command = "start"
TRIGGERALL = POWER >= 500
Trigger1 = ctrl = 1
Trigger1 = StateType = A
Value = 669

[State -1,R = 1c1 a1]
Type = ChangeState
triggerall = var(10) = 0
Triggerall = Command = "a"
Triggerall = Command != "holddown"
Trigger1 = ctrl = 1
Trigger1 = StateType = S
Value = 200

[State -1,R = 2c1 a2]
type = ChangeState
value = 210
triggerall = var(10) = 0
triggerall = stateno = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = time >= 10
trigger1 = movecontact

[State -1,R = 3c1 a3]
type = ChangeState
value = 230
triggerall = var(10) = 0
triggerall = stateno = 210
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = time >= 10
trigger1 = movecontact

[State -1,R = 4c2 a1]
Type = ChangeState
triggerall = var(10) = 0
Triggerall = Command = "x"
Triggerall = Command != "holddown"
Trigger1 = ctrl = 1
Trigger1 = StateType = S
Value = 240

[State -1,R = 5c2 a2]
type = ChangeState
value = 250
triggerall = var(10) = 0
triggerall = stateno = 240
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = time >= 20
trigger1 = movecontact

[State -1,R = 6c2 a3]
type = ChangeState
value = 260
triggerall = var(10) = 0
triggerall = stateno = 250
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = time >= 20
trigger1 = movecontact

[state -1,R = chacra]
type = changestate
value = 195
triggerall = var(10) = 0
Triggerall = command = "hold_a"
Triggerall = command = "hold_b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

[state -1,R = water bunchin]
type = ChangeState
value = 8999
triggerall = var(10) = 0
triggerall = numhelper(20000) < 6
triggerall = power >= 1000
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl

[State -1,R = Kawarimi]
type = ChangeState
value = 505
triggerall = var(10) = 0
TRIGGERALL = POWER >= 500
triggerall = command = "a"
trigger1 = movetype = H ;&& (statetype = S)

[State -1,R = Kawarimi]
type = ChangeState
value = 505
triggerall = var(10) = 0
TRIGGERALL = POWER >= 500
triggerall = command = "b"
trigger1 = movetype = H ;&& (statetype = S)

[State -1,R = DRAGON]
type = ChangeState
value = 450
triggerall = var(10) = 0
triggerall = power >= 1000
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

[state -1,R = teleport 1]
type = changestate
value = 2022
triggerall = var(10) = 0
triggerall = command = "z"
triggerall = command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1,R = shiruken 1]
Type = ChangeState
triggerall = var(10) = 0
Triggerall = Command = "y"
Triggerall = Command != "holddown"
Trigger1 = ctrl = 1
Trigger1 = StateType = s
Value = 987

[State -1,R = shiruken 2]
type = ChangeState
value = 770
triggerall = var(10) = 0
triggerall = stateno = 987
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = time >= 10

[STATE -1,R = TSUNAME]
TYPE = CHANGESTATE
VALUE = 6666
triggerall = var(10) = 0
triggerall = numexplod(62777) < 2
TRIGGERALL = POWER >= 1500
TRIGGERALL = COMMAND = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

[state -1,R = 3 big dragon water]
type = ChangeState
value = 9977
triggerall = var(10) = 0
triggerall = power >= 1500
triggerall = command = "down_a"
trigger1 = statetype = C
trigger1 = ctrl

[STATE -1,R = clone summon jail time]
TYPE = CHANGESTATE
VALUE = 6036
triggerall = var(10) = 0
TRIGGERALL = POWER >= 500
TRIGGERALL = COMMAND = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[state -1,R = 3 RUSHING shark]
type = ChangeState
value = 311
triggerall = var(10) = 0
triggerall = power >= 400
triggerall = command = "down_b"
trigger1 = statetype = C
trigger1 = ctrl

[state -1,R = water crush coffine]
type = changestate
value = 72
triggerall = var(10) = 0
triggerall = power >= 1000
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[state -1,R = giant shark up]
type = changestate
value = 83
triggerall = var(10) = 0
triggerall = power >= 1000
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[STATE -1,R = transform to big sawada 1]
TYPE = CHANGESTATE
VALUE = 999999
trigger1 = var(10) = 0
TRIGGERALL = POWER >= 1000
TRIGGERALL = COMMAND = "start"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

[STATE -1,R = transform to big sawada 2]
TYPE = CHANGESTATE
VALUE = 999999
trigger1 = var(10) = 0
TRIGGERALL = life <= 200
TRIGGERALL = POWER >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
[STATE ,-1
;---------------------------------------------------------------------------

[state -1,big sawada bunchin]
type = ChangeState
value = 8999111
triggerall = var(10) = 1
triggerall = numhelper(320000) < 2
triggerall = power >= 500
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl

[state -1,big sawada WallRun]
type = changestate
value = 2101
triggerall = var(10) = 1
triggerall = stateno = 20 || stateno = 1100
triggerall = command = "hold_s" && command = "holdback"
trigger1 = backedgedist < 5
trigger1 = command = "holdback"
trigger2 = frontedgedist < 5
trigger2 = command = "holdfwd"

[state -1,big sawada WAll Jump ]
type = changestate
value = 4444445
triggerall = var(10) = 1
triggerall = stateno = 2104
triggerall = (ctrl) && (command = "holdup")
trigger1 = pos y <= -170
trigger1 = time > 20
trigger2 = pos y > -170

[state -1,big sawada charge]
type = changestate
value = 195
triggerall = var(10) = 1
Triggerall = command = "hold_a"
Triggerall = command = "hold_b"
triggerall = command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1,big sawada DRAGON]
type = ChangeState
value = 450
triggerall = var(10) = 1
triggerall = power >= 1000
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

[state -1,big sawada teleport 1]
type = changestate
value = 2022
triggerall = var(10) = 1
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1,big sawada Kawarimi]
type = ChangeState
value = 505
triggerall = var(10) = 1
TRIGGERALL = POWER >= 500
triggerall = command = "a"
trigger1 = movetype = H ;&& (statetype = S)

[State -1,big sawada Kawarimi]
type = ChangeState
value = 505
triggerall = var(10) = 1
TRIGGERALL = POWER >= 500
triggerall = command = "b"
trigger1 = movetype = H ;&& (statetype = S)


[State -1,big sawada shiruken 1]
Type = ChangeState
Value = 987
triggerall = var(10) = 1
Triggerall = Command = "y"
Triggerall = Command != "holddown"
Trigger1 = ctrl = 1
Trigger1 = StateType = s


[State -1,big sawada shiruken 2]
type = ChangeState
value = 770
triggerall = var(10) = 1
triggerall = stateno = 987
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = time >= 10


[state -1,big sawada 3 rush shark]
type = ChangeState
value = 311
triggerall = var(10) = 1
triggerall = power >= 400
triggerall = command = "down_b"
trigger1 = statetype = C
trigger1 = ctrl


[state -1,big sawada water coffine]
type = changestate
value = 72
triggerall = var(10) = 1
triggerall = power >= 1000
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[state -1,big sawada giant shark up]
type = changestate
value = 83
triggerall = var(10) = 1
triggerall = power >= 1000
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[state -1,big sawada 3 big dragon]
type = ChangeState
value = 9977
triggerall = var(10) = 1
triggerall = power >= 1500
triggerall = command = "down_a"
trigger1 = statetype = C
trigger1 = ctrl

[STATE -1,big sawada TSUNAME]
TYPE = CHANGESTATE
VALUE = 6666
triggerall = var(10) = 1
TRIGGERALL = POWER >= 1500
TRIGGERALL = COMMAND = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

[State -1,big sawada 1c1 a1]
Type = ChangeState
triggerall = var(10) = 1
Triggerall = Command = "a"
Triggerall = Command != "holddown"
Trigger1 = ctrl = 1
Trigger1 = StateType = S
Value = 200

[State -1,big sawada 2c1 a2]
type = ChangeState
value = 210
triggerall = var(10) = 1
triggerall = stateno = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = time >= 10
trigger1 = movecontact

[State -1,big sawada 3c1 a3]
type = ChangeState
value = 230
triggerall = var(10) = 1
triggerall = stateno = 210
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = time >= 10
trigger1 = movecontact

[State -1,big sawada 4c2 a1]
Type = ChangeState
triggerall = var(10) = 1
Triggerall = Command = "x"
Triggerall = Command != "holddown"
Trigger1 = ctrl = 1
Trigger1 = StateType = S
Value = 240

[State -1,big sawada 5c2 a2]
type = ChangeState
value = 250
triggerall = var(10) = 1
triggerall = stateno = 240
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = time >= 15
trigger1 = movecontact

[State -1,big sawada 6c2 a3]
type = ChangeState
value = 260
triggerall = var(10) = 1
triggerall = stateno = 250
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = time >= 20
trigger1 = movecontact

[STATE -1,big sawada clone jail]
TYPE = CHANGESTATE
VALUE = 160360
triggerall = var(10) = 1
TRIGGERALL = POWER >= 500
TRIGGERALL = COMMAND = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[State -1,big sawada AIR 1 SPIKE]
Type = ChangeState
triggerall = var(10) = 1
Triggerall = Command = "c"
Trigger1 = ctrl = 1
Trigger1 = StateType = A
Value = 666

[State -1,big sawada AIR 2 SPIKE]
Type = ChangeState
triggerall = var(10) = 1
Triggerall = Command = "y"
Trigger1 = ctrl = 1
Trigger1 = StateType = A
Value = 666

[State -1,big sawada AIR 3 SPIKE]
Type = ChangeState
triggerall = var(10) = 1
Triggerall = Command = "a"
Trigger1 = ctrl = 1
Trigger1 = StateType = A
Value = 667

[State -1,big sawada AIR 4 SPIKE]
Type = ChangeState
triggerall = var(10) = 1
Triggerall = Command = "b"
Trigger1 = ctrl = 1
Trigger1 = StateType = A
Value = 667

[State -1,big sawada AIR 5 SPIKE]
Type = ChangeState
triggerall = var(10) = 1
Triggerall = Command = "x"
Trigger1 = ctrl = 1
Trigger1 = StateType = A
Value = 668

[State -1,big sawada AIR 6 SPIKE]
Type = ChangeState
triggerall = var(10) = 1
Triggerall = Command = "z"
Trigger1 = ctrl = 1
Trigger1 = StateType = A
Value = 668

[State -1,big sawada AIR 7 SPIKE]
Type = ChangeState
triggerall = var(10) = 1
Triggerall = Command = "start"
TRIGGERALL = POWER >= 500
Trigger1 = ctrl = 1
Trigger1 = StateType = A
Value = 669

[STATE -1,big sawada transform to shark 1]
TYPE = CHANGESTATE
VALUE = 9999991
trigger1 = var(10) = 1
TRIGGERALL = POWER >= 1000
TRIGGERALL = COMMAND = "start"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

[STATE -1,big sawada transform to shark 2]
TYPE = CHANGESTATE
VALUE = 9999991
trigger1 = var(10) = 1
TRIGGERALL = life <= 200
TRIGGERALL = POWER >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
[STATE ,-1
;---------------------------------------------------------------------------

[state -1,shark sawada WallRun]
type = changestate
value = 32101
triggerall = var(10) = 2
triggerall = stateno = 20 || stateno = 2100
triggerall = command = "hold_s" && command = "holdback"
trigger1 = backedgedist < 5
trigger1 = command = "holdback"
trigger2 = frontedgedist < 5
trigger2 = command = "holdfwd"

[state -1,shark sawada WAll Jump ]
type = changestate
value = 4444445
triggerall = var(10) = 2
triggerall = stateno = 32104
triggerall = (ctrl) && (command = "holdup")
trigger1 = pos y <= -170
trigger1 = time > 20
trigger2 = pos y > -170

[state -1,shark sawada teleport 1]
type = changestate
value = 2022
triggerall = var(10) = 2
triggerall = command = "z"
triggerall = command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1,shark sawada Kawarimi]
type = ChangeState
value = 505
triggerall = var(10) = 2
TRIGGERALL = POWER >= 500
triggerall = command = "a"
trigger1 = movetype = H ;&& (statetype = S)

[State -1,shark sawada Kawarimi]
type = ChangeState
value = 505
triggerall = var(10) = 2
TRIGGERALL = POWER >= 500
triggerall = command = "b"
trigger1 = movetype = H ;&& (statetype = S)

[state -1,shark sawada charge]
type = changestate
value = 195
triggerall = var(10) = 2
Triggerall = command = "hold_a"
Triggerall = command = "hold_b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

[state -1,shark sawada Crouch Punch 1]
type = changestate
value = 20266221
triggerall = var(10) = 2
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

[state -1,shark sawada Crouch Punch 2]
type = changestate
value = 20266222
triggerall = var(10) = 2
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

[State -1,shark sawada AIR 1 SPIKE]
Type = ChangeState
triggerall = var(10) = 2
Triggerall = Command = "b"
Trigger1 = ctrl = 1
Trigger1 = StateType = A
Value = 667

[State -1,shark sawada AIR 2 SPIKE]
Type = ChangeState
triggerall = var(10) = 2
Triggerall = Command = "x"
Trigger1 = ctrl = 1
Trigger1 = StateType = A
Value = 667

[State -1,shark sawada AIR 3 SPIKE]
Type = ChangeState
triggerall = var(10) = 2
Triggerall = Command = "c"
Trigger1 = ctrl = 1
Trigger1 = StateType = A
Value = 667

[State -1,shark sawada 1c1 a1]
Type = ChangeState
triggerall = var(10) = 2
Triggerall = Command = "a"
Triggerall = Command != "holddown"
Trigger1 = ctrl = 1
Trigger1 = StateType = S
Value = 200

[State -1,shark sawada 2c1 a2]
type = ChangeState
value = 210
triggerall = var(10) = 2
triggerall = stateno = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = time >= 10
trigger1 = movecontact

[State -1,shark sawada 3c1 a3]
type = ChangeState
value = 230
triggerall = var(10) = 2
triggerall = stateno = 210
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = time >= 10
trigger1 = movecontact

[State -1,shark sawada 4c2 a1]
Type = ChangeState
triggerall = var(10) = 2
Triggerall = Command = "x"
Triggerall = Command != "holddown"
Trigger1 = ctrl = 1
Trigger1 = StateType = S
Value = 240

;
[State -1,shark sawada 5c2 a2]
type = ChangeState
value = 250
triggerall = var(10) = 2
triggerall = stateno = 240
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = time >= 13
trigger1 = movecontact

;
[State -1,shark sawada 6c2 a3]
type = ChangeState
value = 260
triggerall = var(10) = 2
triggerall = stateno = 250
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = time >= 20
trigger1 = movecontact

[state -1,shark sawada bunchin]
type = ChangeState
value = 8999112
triggerall = var(10) = 2
triggerall = numhelper(4320000) < 2
triggerall = power >= 500
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl

[STATE -1,shark sawada clone jail]
TYPE = CHANGESTATE
VALUE = 260360
triggerall = var(10) = 2
TRIGGERALL = POWER >= 500
TRIGGERALL = COMMAND = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[state -1,shark sawada wave dragon]
type = changestate
value = 3031
triggerall = var(10) = 2
TRIGGERALL = POWER >= 1000
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

[State -1,shark sawada Throw Enemy]
Type = ChangeState
Value = 84211111
triggerall = var(10) = 2
trigger1 = command = "y"
Triggerall = Command != "holddown"
Trigger1 = ctrl = 1
Trigger1 = StateType = S

[State -1,shark sawada WATER RISE]
Type = ChangeState
Value = 10222652
triggerall = var(10) = 2
TRIGGERALL = POWER >= 700
trigger1 = command = "c"
Triggerall = Command = "holddown"
Trigger1 = ctrl = 1
Trigger1 = StateType = C

[State -1,shark sawada water rush]
Type = ChangeState
Value = 201656
triggerall = var(10) = 2
TRIGGERALL = POWER >= 800
trigger1 = command = "z"
Triggerall = Command = "holddown"
Trigger1 = ctrl = 1
Trigger1 = StateType = C

[State -1,shark sawada AIR water 1]
Type = ChangeState
triggerall = var(10) = 2
TRIGGERALL = POWER >= 100
Triggerall = Command = "y"
Trigger1 = ctrl = 1
Trigger1 = StateType = A
Value = 1082762

[State -1,shark sawada AIR water 2]
Type = ChangeState
triggerall = var(10) = 2
TRIGGERALL = POWER >= 100
Triggerall = Command = "a"
Trigger1 = ctrl = 1
Trigger1 = StateType = A
Value = 1082762

[State -1,shark sawada AIR water 3]
Type = ChangeState
triggerall = var(10) = 2
TRIGGERALL = POWER >= 100
Triggerall = Command = "z"
Trigger1 = ctrl = 1
Trigger1 = StateType = A
Value = 1082762

[State -1,shark sawada AIR water 4]
Type = ChangeState
triggerall = var(10) = 2
TRIGGERALL = POWER >= 100
Triggerall = Command = "start"
Trigger1 = ctrl = 1
Trigger1 = StateType = A
Value = 1082762

[State -1,shark sawada big DRAGON]
type = ChangeState
value = 20450
triggerall = var(10) = 2
triggerall = power >= 1000
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1,shark sawada ocean jutsu ]
Type = ChangeState
Value = 2099111
triggerall = var(10) = 2
TRIGGERALL = POWER >= 3000
triggerall = numhelper(2099112) < 3
triggerall = numhelper(2099114) < 1
trigger1 = command = "start"
Triggerall = Command = "holddown"
Trigger1 = ctrl = 1
Trigger1 = StateType = C

[STATE -1,shark sawada transform to last form]
TYPE = CHANGESTATE
VALUE = 4444599
trigger1 = var(10) = 2
TRIGGERALL = life <= 200
TRIGGERALL = POWER >= 1000
trigger1 = statetype = S || statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[STATE ,-1
;---------------------------------------------------------------------------
;--------------------------------------------------------------------------------------;
;--------------------------------------------------------------------------------------;
;$$$$$$$$$$$$$$$$$$$$$$$$$$$$(=CODING-SCHOOL.UCOZ.COM=)$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$;
;--------------------------------------------------------------------------------------;
;--------------------------------------------------------------------------------------;
;---------------------------------------------------------------------------

[state -1,last form WallRun]
type = changestate
value = 332101
triggerall = var(10) = 3
triggerall = stateno = 20 || stateno = 2100
triggerall = command = "hold_s" && command = "holdback"
trigger1 = backedgedist < 5
trigger1 = command = "holdback"
trigger2 = frontedgedist < 5
trigger2 = command = "holdfwd"

[state -1,last form WAll Jump ]
type = changestate
value = 4444445
triggerall = var(10) = 3
triggerall = stateno = 32104
triggerall = (ctrl) && (command = "holdup")
trigger1 = pos y <= -170
trigger1 = time > 20
trigger2 = pos y > -170

[State -1,last form shiruken]
Type = ChangeState
triggerall = var(10) = 3
Triggerall = Command = "y"
Triggerall = Command != "holddown"
Trigger1 = ctrl = 1
Trigger1 = StateType = s
Value = 987

[state -1,last form chacra]
type = changestate
value = 3195
triggerall = var(10) = 3
Triggerall = command = "hold_a"
Triggerall = command = "hold_b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

[state -1,last form teleport]
type = changestate
value = 2022
triggerall = var(10) = 3
triggerall = command = "z"
triggerall = command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1,last form water rise]
Type = ChangeState
Value = 10222652
triggerall = var(10) = 3
TRIGGERALL = POWER >= 700
trigger1 = command = "c"
Triggerall = Command = "holddown"
Trigger1 = ctrl = 1
Trigger1 = StateType = C

[State -1,last form flash ground]
Type = ChangeState
Value = 722278
triggerall = var(10) = 3
TRIGGERALL = POWER >= 700
trigger1 = command = "y"
Triggerall = Command = "holddown"
Trigger1 = ctrl = 1
Trigger1 = StateType = C

[State -1,last form 15 SHARKS]
Type = ChangeState
Value = 31070
triggerall = var(10) = 3
TRIGGERALL = POWER >= 500
trigger1 = command = "x"
Triggerall = Command = "holddown"
Trigger1 = ctrl = 1
Trigger1 = StateType = C

[State -1,last form one SHARKS]
Type = ChangeState
Value = 31080
triggerall = var(10) = 3
TRIGGERALL = POWER >= 500
trigger1 = command = "z"
Triggerall = Command = "holddown"
Trigger1 = ctrl = 1
Trigger1 = StateType = C

[State -1,last form water snake big]
Type = ChangeState
Value = 31076
triggerall = var(10) = 3
triggerall = power >= 800
trigger1 = command = "b"
Triggerall = Command = "holddown"
Trigger1 = ctrl = 1
Trigger1 = StateType = C

[State -1,last form water dragon]
Type = ChangeState
Value = 997719991
triggerall = var(10) = 3
triggerall = power >= 1500
trigger1 = command = "a"
Triggerall = Command = "holddown"
Trigger1 = ctrl = 1
Trigger1 = StateType = C

[State -1,last form 1c1 a1]
Type = ChangeState
triggerall = var(10) = 3
Triggerall = Command = "a"
Triggerall = Command != "holddown"
Trigger1 = ctrl = 1
Trigger1 = StateType = S
Value = 634561

[State -1,last form 2c1 a2]
type = ChangeState
value = 634562
triggerall = var(10) = 3
triggerall = stateno = 634561
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = time >= 10
trigger1 = movecontact

[State -1,last form 3c1 a3]
type = ChangeState
value = 634563
triggerall = var(10) = 3
triggerall = stateno = 634562
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = time >= 12
trigger1 = movecontact

[State -1,last form 4c1 a4]
type = ChangeState
value = 634564
triggerall = var(10) = 3
triggerall = stateno = 634563
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = time >= 16
trigger1 = movecontact

[State -1,last form 4c1 a4]
type = ChangeState
value = 634565
triggerall = var(10) = 3
triggerall = stateno = 634564
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = time >= 30
trigger1 = movecontact

[State -1,last form uppercut]
type = ChangeState
value = 634561
triggerall = var(10) = 3
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
Trigger1 = ctrl = 1

[State -1,last form kick]
type = ChangeState
value = 634562
triggerall = var(10) = 3
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
Trigger1 = ctrl = 1

[State -1,last form thrust punch]
type = ChangeState
value = 634563
triggerall = var(10) = 3
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
Trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[STATE ,-1
;---------------------------------------------------------------------------
;--------------------------------------------------------------------------------------;
;--------------------------------------------------------------------------------------;
;$$$$$$$$$$$$$$$$$$$$$$$$$$$$(=CODING-SCHOOL.UCOZ.COM=)$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$;
;--------------------------------------------------------------------------------------;
;--------------------------------------------------------------------------------------;
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

;--------------------------------------------------------------------------------------;
;--------------------------------------------------------------------------------------;
;--------------------------------------------------------------------------------------;
;$$$$$$$$$$$$$$$$$$$$$$$$$$$$(=CODING-SCHOOL.UCOZ.COM=)$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$;
;--------------------------------------------------------------------------------------;
;--------------------------------------------------------------------------------------;
