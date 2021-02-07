;$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$;
;---------------------------------------------------------------------------;
;---------------------------------------------------------------------------;
;----------------------------;CLIFF-Kabutomaru-Cliff_A;---------------------;
;------------------------------;<----------------->-------------------------;
;---------------------------------------------------------------------------;
;---------------------------------------------------------------------------;
;------------------------------------|Cmd file|-----------------------------;
;--------------------------------<------------>-----------------------------;
;---------------------------------------------------------------------------;
;$$$$$$$$$$$$$$$$$$$$$$$$$$$$$(=CSMUGEN.UCOZ.COM=)$$$$$$$$$$$$$$$$$$$$$$$$$$;
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
;-| AI Activators|-;;-| AI Activators|-;;-| AI Activators|-;
; The CMD file.
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
;-| AI Activators|-;;-| AI Activators|-;;-| AI Activators|-;

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

;-| AI Activators|-;;-| AI Activators|-;;-| AI Activators|-;



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
name = "sword striker"
command = D,B,y
time = 15

[Command]
name = "sword striker2"
command = D,F,y
time = 15

[Command]
name = "transformation"
command = D,B,c
time = 15

[Command]
name = "SEAL"
command = D,F,c
time = 15

[Command]
name = "SNAKEBARRAGE"
command = D,F,a
time = 15

[Command]
name = "RUSH"
command = D,B,a
time = 15

[Command]
name = "big snake"
command = D,B,b
time = 15

[Command]
name = "miniture snakes"
command = D,F,b
time = 15

[Command]
name = "SANJU RASHMMON"
command = D,F,x
time = 15

[Command]
name = "dark coufine death pull"
command = D,B,x
time = 15

[Command]
name = "impure world summon"
command = a+b
time = 15

;-| Special Motions |------------------------------------------------------

[Command]
name = "Super Jump"
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
[Command]
name = "combo"
command = ~a
time = 15

[Command]
name = "SCOMBO"
command = ~b
time = 15

[Command]
name = "TELEPORT"
command = ~c
time = 15

[Command]
name = "THROW"
command = ~x
time = 15

[Command]
name = "EXTRA"
command = ~y
time = 15

[Command]
name = "SWORD"
command = ~s
time = 15


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

[State -1,AI Killer Kabutomaru]
type = VarSet
triggerall = statetype = S
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
v = 50
value = 1

[State -1,AI Killer Basic's 1]
type = VarSet
triggerall = statetype = S
triggerall = p2statetype = S
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
v = 50
value = 1

[State -1,AI Killer Basic's 2]
type = VarSet
triggerall = statetype = A
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
v = 50
value = 1

;---------------------------------------------------------------------------
[STATE ,-1
;---------------------------------------------------------------------------

[State -1, AI Run]
type = ChangeState
value = 100
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = Var(50) = 1
triggerall = p2life > 0
triggerall = p2bodydist X > 320
trigger2 = power >= 0
trigger1 = statetype = S
trigger1 = ctrl

[State -1,  AI Combo1]
type = ChangeState
value = 200
triggerall = var(10) = 0
triggerall = var(10) = 1
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl

[State -1,AI Combo2]
type = ChangeState
triggerall = var(10) = 0
triggerall = var(10) = 1
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
value = 210

[State -1,AI Combo3]
type = ChangeState
triggerall = var(10) = 0
triggerall = var(10) = 1
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 210
value = 220

[State -1,  AI Combo4]
type = ChangeState
triggerall = var(10) = 0
triggerall = var(10) = 1
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 220
value = 230

[State -1,  AI Combo5]
type = ChangeState
triggerall = var(10) = 0
triggerall = var(10) = 1
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger2 = stateno = 230
trigger1 = ctrl
value = 240


[State -1,  AI Combo1]
type = ChangeState
value = 250
triggerall = var(10) = 0
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl

[State -1,AI Combo2]
type = ChangeState
triggerall = var(10) = 0
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 250
value = 260

[State -1,AI Combo3]
type = ChangeState
triggerall = var(10) = 0
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 260
value = 270

[State -1,  AI Combo1]
type = ChangeState
value = 290
triggerall = var(10) = 0
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl

[State -1,AI Combo2]
type = ChangeState
triggerall = var(10) = 0
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 290
value = 300

[State -1,AI Combo3]
type = ChangeState
triggerall = var(10) = 0
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 300
value = 310

[State -1,  AI Combo4]
type = ChangeState
triggerall = var(10) = 0
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 310
value = 320

[State -1, AI Sword 1]
type = ChangeState
VALUE = 330
triggerall = var(10) = 0
TRIGGERALL =power>=1000
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = C
trigger1 = ctrl

[State -1, AI Snake Rampage]
type = ChangeState
value = 360
triggerall = var(10) = 0
triggerall = power >= 1000
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = C
trigger1 = ctrl

[State -1, AI Snake Scatter]
type = ChangeState
VALUE = 1997
triggerall = var(10) = 0
TRIGGERALL = POWER >= 500
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = C
trigger1 = ctrl

[State -1, AI Snake Tail Mass]
type = ChangeState
value = 1998
triggerall = var(10) = 0
triggerall = power >= 800
triggerall = Var(50) = 1
triggerall = p2life > 0
trigger1 = random <= 20
trigger1 = statetype = C
trigger1 = ctrl

[State -1, AI Snake White Small]
type = ChangeState
value = 32763331
triggerall = var(10) = 0
triggerall = numhelper(32763332) < 1
triggerall = power >= 500
triggerall = Var(50) = 1
triggerall = p2life > 0
trigger1 = random <= 20
trigger1 = statetype = C
trigger1 = ctrl

[State -1,AI Bunshin]
type = ChangeState
value =38889
triggerall = var(10) = 0
triggerall = numhelper(0) < 2
triggerall = power >= 500
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = C
trigger1 = ctrl

[State -1, AI Snake Grabble]
type = ChangeState
value = 1999999
triggerall = var(10) = 0
triggerall = power >= 700
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2bodydist X < 5
triggerall = p2life > 0
trigger1 = statetype = C
trigger1 = ctrl

[State -1,AI AIR Kunai 1]
type = ChangeState
Value = 341
triggerall = var(10) = 0
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = A
trigger1 = ctrl

[State -1,AI AIR Speed Marage 1]
type = ChangeState
Value = 340
triggerall = var(10) = 0
triggerALL = power >= 200
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = A
trigger1 = ctrl

[State -1,AI AIR Punch 1]
type = ChangeState
Value = 350
triggerall = var(10) = 0
triggerALL = power >= 50
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = A
trigger1 = ctrl

[State -1, AI Rashmon]
type = ChangeState
value = 390
triggerall = var(10) = 0
triggerall = numhelper(391) < 1
triggerall = numhelper(392) < 1
triggerall = numhelper(393) < 1
triggerall = power > 1500
triggerall = Var(50) = 1
triggerall = random >= 150 && random < 199 || random >= 250 && random <= 399
triggerall = p2life > 0
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI Rush]
type = ChangeState
value = 395
triggerall = var(10) = 0
triggerALL = power > 1000
triggerall = Var(50) = 1
triggerall = random >= 150 && random < 199 || random >= 250 && random <= 399
triggerall = p2life > 0
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI Snake Barrage]
type = ChangeState
value = 370
triggerall = var(10) = 0
triggerALL = power >= 1000
triggerall = numhelper(3811) < 3
triggerall = numhelper(381) < 1
triggerall = Var(50) = 1
triggerall = random >= 150 && random < 199 || random >= 250 && random <= 399
triggerall = p2life > 0
trigger1 = statetype = S
trigger1 = ctrl


[State -1, AI Big Snake]
type = ChangeState
value = 577490
triggerall = var(10) = 0
triggerALL = power >= 1000
triggerall = numhelper(3811) < 3
triggerall = numhelper(381) < 1
triggerall = Var(50) = 1
triggerall = random >= 150 && random < 199 || random >= 250 && random <= 399
triggerall = p2life > 0
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI Sealing Jutsu]
type = ChangeState
value = 577490
triggerall = var(10) = 0
triggerall = power >= 1000
triggerall = Var(50) = 1
triggerall = random >= 150 && random < 199 || random >= 250 && random <= 399
triggerall = p2life > 0
trigger1 = statetype = S
trigger1 = ctrl



[State -1, AI Sword Striker]
type = ChangeState
value = 332
triggerall = var(10) = 0
triggerall = numhelper(334) < 1
triggerall = numhelper(335) < 1
triggerall = numhelper(336) < 1
triggerall = power >= 1000
triggerall = Var(50) = 1
triggerall = random >= 150 && random < 199 || random >= 250 && random <= 399
triggerall = p2life > 0
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI Edo Tensie Madara]
type = ChangeState
value = 1000008
triggerall = var(10) = 0
triggerall = var(40) = 0
triggerall = Var(50) = 1
triggerall = numhelper(20000) < 1
triggerall = power >= 1000
triggerall = random >= 150 && random < 199 || random >= 250 && random <= 399
triggerall = p2life > 0
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI Edo Tensie Death Pull]
type = ChangeState
value = 253451
triggerall = var(10) = 0
triggerall = numhelper(2534661) < 1
triggerALL = power > 1500
triggerall = Var(50) = 1
triggerall = random >= 150 && random < 199 || random >= 250 && random <= 399
triggerall = p2life > 0
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI Edo Tensie Death]
type = ChangeState
value = 999667
triggerall = var(10) = 0
triggerall = !isHelper
triggerall = numhelper(0) < 1
triggerALL = power > 1000
triggerall = Var(50) = 1
triggerall = random >= 150 && random < 199 || random >= 250 && random <= 399
triggerall = p2life > 0
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI Transformation To Snake Mode]
type = ChangeState
value = 1000000000
triggerall = var(10) = 0
triggerALL = power > 1000
triggerall = Var(50) = 1
triggerall = random >= 150 && random < 199 || random >= 250 && random <= 399
triggerall = p2life > 0
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI Transformation Back To Normal]
type = ChangeState
value = 1000111111
triggerall = var(10) = 1
triggerALL = power >= 500
triggerall = Var(50) = 1
triggerall = random >= 150 && random < 199 || random >= 250 && random <= 399
triggerall = p2life > 0
trigger1 = statetype = S
trigger1 = ctrl


[State -1,AI Kabuto Snake Rapped]
type = ChangeState
value = 10290
triggerALL = power > 400
triggerall = var(10) = 1
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = C
trigger1 = ctrl

[State -1, AI Kabuto Snake Genjutsu]
type = ChangeState
value = 107551
triggerALL = power > 1000
triggerall = Var(50) = 1
triggerall = random >= 150 && random < 199 || random >= 250 && random <= 399
triggerall = p2life > 0
trigger1 = statetype = C
trigger1 = ctrl


[State -1, AI Kabuto Snake Tail Mass]
type = ChangeState
value = 10755
triggerALL = power >= 800
triggerall = var(10) = 1
triggerall = Var(50) = 1
triggerall = random >= 150 && random < 199 || random >= 250 && random <= 399
triggerall = p2life > 0
trigger1 = statetype = C
trigger1 = ctrl


[State -1, AI Kabuto snake rap]
type = ChangeState
value = 10290
triggerALL = power >= 400
triggerall = var(10) = 1
triggerall = Var(50) = 1
triggerall = random >= 150 && random < 199 || random >= 250 && random <= 399
triggerall = p2life > 0
trigger1 = statetype = C
trigger1 = ctrl

[State -1,AI Kabuto Snake Hit 1]
type = ChangeState
value = 10250
triggerall = var(10) = 1
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = S
trigger1 = ctrl

[State -1,AI Kabuto Snake Hit 2]
type = ChangeState
value = 10260
triggerall = var(10) = 1
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = S
trigger1 = ctrl

[State -1,AI Kabuto Snake Hit 3]
type = ChangeState
value = 10270
triggerALL = power > 800
triggerall = var(10) = 1
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI Kabuto Snake Edo Tensie]
type = ChangeState
value = 999667
triggerall = var(10) = 1
triggerall = !isHelper
triggerall = numhelper(20000) < 1
triggerALL = power > 1000
triggerall = Var(50) = 1
triggerall = random >= 150 && random < 199 || random >= 250 && random <= 399
triggerall = p2life > 0
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[STATE ,-1
;---------------------------------------------------------------------------

[State -1, Kabuto Snake Edo Tensie]
type = ChangeState
value = 999667
triggerall = var(10) = 1
triggerall = !isHelper
triggerall = numhelper(20000) < 1
triggerALL = power >= 1000
triggerALL = command = "impure world summon"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1,Transformation To Snake Mode]
type = ChangeState
value = 1000000000
triggerall = var(10) = 0
triggerALL = power >= 1000
triggerall = command = "s"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1,Transformation Back To Normal]
type = ChangeState
value = 1000111111
triggerall = var(10) = 1
triggerALL = power >= 500
triggerall = command = "s"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1,Edo Tensie]
type = ChangeState
value = 999667
triggerall = var(10) = 0
triggerall = !isHelper
triggerall = numhelper(20000) < 1
triggerALL = power >= 1000
triggerALL = command = "impure world summon"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1,Edo Tensie Madara]
type = ChangeState
value = 1000008
triggerall = var(10) = 0
triggerall = var(40) = 0
triggerall = numhelper(20000) < 1
triggerall = power >= 1000
triggerALL = command = "sword striker2"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1, Edo Tensie Death Pull]
type = ChangeState
value = 253451
triggerall = var(10) = 0
triggerall = numhelper(2534661) < 1
triggerALL = power >= 1500
triggerALL = command = "dark coufine death pull"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1, Snake White Small]
type = ChangeState
value = 32763331
triggerall = var(10) = 0
triggerall = numhelper(32763332) < 1
triggerall = power >= 800
triggerALL = command = "transformation"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1, Miniture Snakes]
type = ChangeState
value = 3710
triggerall = var(10) = 0
triggerALL = power >= 1000
triggerall = numhelper(3811) < 3
triggerall = numhelper(381) < 1
triggerALL = command = "miniture snakes"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1, Snake Barrage]
type = ChangeState
value = 370
triggerall = var(10) = 0
triggerALL = power >= 1000
triggerALL = command = "SNAKEBARRAGE"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1, Rush]
type = ChangeState
value = 395
triggerall = var(10) = 0
triggerALL = power >= 1000
triggerALL = command = "RUSH"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1, Big Snake]
type = ChangeState
value = 380
triggerall = var(10) = 0
triggerALL = power >= 1000
triggerall = numhelper(3811) < 3
triggerall = numhelper(381) < 1
triggerALL = command = "big snake"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1, Rashmon]
type = ChangeState
value = 390
triggerall = var(10) = 0
triggerall = numhelper(391) < 1
triggerall = numhelper(392) < 1
triggerall = numhelper(393) < 1
triggerALL = command = "SANJU RASHMMON"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
triggerALL = power >= 1500

[State -1, Sealing Jutsu]
type = ChangeState
value = 577490
triggerall = var(10) = 0
triggerall = power >= 1000
triggerALL = command = "SEAL"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1, Sword Striker 1]
type = ChangeState
value = 332
triggerall = var(10) = 0
triggerall = numhelper(334) < 1
triggerall = numhelper(335) < 1
triggerall = numhelper(336) < 1
triggerall = power >= 1000
triggerALL = command = "sword striker"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
[STATE ,-1
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Wall Jump
[State -1, Wall Jump]
type = ChangeState
value = 56
triggerall = var(10) = 0
triggerall = backedgebodydist <= 1 && backedgebodydist > -1
triggerall = command = "holdfwd"
triggerall = Pos Y < -30
triggerALL = StateType = A
trigger1 = ctrl = 1
trigger1 = Vel X <= 0
;---------------------------------------------------------------------------

[State -1, Stand On Manda 2 Summon ]
type = ChangeState
value = 6532111
triggerall = var(10) = 0
trigger1 = command = "s"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
triggerALL = power >= 1000

[State -1, Stand On Snake Summon 2]
type = ChangeState
value = 6553332
triggerall = var(10) = 0
trigger1 = command = "s"
trigger1 = statetype = A
trigger1 = ctrl = 1
triggerALL = power >= 1000
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerALL = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerALL = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Super Jump
[State -1,Super Jump]
type = ChangeState
value = 39
triggerall = var(10) = 0
triggerall = command = "Super Jump"
trigger1 = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Teleport
[State -1, Teleport]
type = ChangeState
value = 110
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
; Taunt
[State -1, Chacra Charge]
type = ChangeState
value = 195
triggerall = power != 3000
triggerall = var(10) = 0
triggerall = command = "hold_z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
;-------------------------------------------------------------------------------
[State -1, Kunai]
type = ChangeState
value = 280
triggerall = var(10) = 0
triggerall = command = "THROW"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1


;-------------------------------------------------------------------------

;Wall Run
[state -1, WallRun]
type = changestate
value = 101
triggerall = var(10) = 0
triggerall = stateno = 20 || stateno = 100
triggerall = command = "hold_s" && command = "holdback"
trigger1 = backedgedist < 1
trigger1 = command = "holdback"
trigger2 = frontedgedist < 1
trigger2 = command = "holdfwd"

;Wall Jump
[state -1, WAll Jump ]
type = changestate
value = 45
triggerall = var(10) = 0
triggerall = stateno = 104
triggerall = (ctrl) && (command = "holdup")
trigger1 = pos y <= -170
trigger1 = time > 20
trigger2 = pos y > -170

;-------------------------------------------------------------------------------
[State -1, Combo1]
type = ChangeState
value = 200
triggerall = command = "combo"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Combo2]
type = ChangeState
value = 210
triggerall = command = "combo"
triggerall = command != "holddown"
triggerALL = movecontact
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = time >= 7
trigger2 = stateno = 200

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Combo3]
type = ChangeState
value = 220
triggerALL = movecontact
triggerall = command = "combo"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = time >= 7
trigger2 = stateno = 210

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Combo4]
type = ChangeState
value = 230
triggerALL = movecontact
triggerall = command = "combo"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = time >= 7
trigger2 = stateno = 220

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Combo5]
type = ChangeState
value = 240
triggerALL = movecontact
triggerall = command = "combo"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = time >= 7
trigger2 = stateno = 230


;-------------------------------------------------------------------------------
[State -1, Combo1]
type = ChangeState
value = 250
triggerall = var(10) = 0
triggerall = command = "SCOMBO"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Combo2]
type = ChangeState
value = 260
triggerall = var(10) = 0
triggerall = command = "SCOMBO"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = time >= 8
triggerALL = movecontact
trigger2 = stateno = 250

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Combo3]
type = ChangeState
value = 270
triggerall = var(10) = 0
triggerall = command = "SCOMBO"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = time >= 20
triggerALL = movecontact
trigger2 = stateno = 260


;-------------------------------------------------------------------------------
[State -1, Combo1]
type = ChangeState
value = 290
triggerall = var(10) = 0
triggerall = command = "EXTRA"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Combo2]
type = ChangeState
value = 300
triggerall = var(10) = 0
triggerall = command = "EXTRA"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
triggerALL = movecontact
trigger2 = stateno = 290

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Combo3]
type = ChangeState
value = 310
triggerall = var(10) = 0
triggerall = command = "EXTRA"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
triggerALL = movecontact
trigger2 = stateno = 300

;-------------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Combo4]
type = ChangeState
value = 320
triggerall = var(10) = 0
triggerall = command = "EXTRA"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
triggerALL = movecontact
trigger2 = stateno = 310


;-------------------------------------------------------------------------------
;SWORD
[State -1, Sword 1]
type = ChangeState
value = 330
triggerall = var(10) = 0
triggerall = power >= 1000
triggerall = command = "down_z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;-------------------------------------------------------------------------------
[State -1, AIR Kunai 1]
type = ChangeState
value = 341
triggerall = var(10) = 0
triggerALL = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1
;-------------------------------------------------------------------------------
[State -1, AIR Kunai 2]
type = ChangeState
value = 341
triggerall = var(10) = 0
triggerALL = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
;-------------------------------------------------------------------------------
[State -1, AIR Speed Marage 1]
type = ChangeState
value = 340
triggerall = var(10) = 0
triggerALL = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
triggerALL = power >= 200
;-------------------------------------------------------------------------------
[State -1, AIR Speed Marage 2]
type = ChangeState
value = 340
triggerall = var(10) = 0
triggerALL = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
triggerALL = power >= 200
;-------------------------------------------------------------------------------
[State -1, AIR Punch 1]
type = ChangeState
value = 350
triggerall = var(10) = 0
triggerALL = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1
triggerALL = power >= 50
;-------------------------------------------------------------------------------
[State -1, AIR Punch 2]
type = ChangeState
value = 350
triggerall = var(10) = 0
triggerALL = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
triggerALL = power >= 50

;-------------------------------------------------------------------------------
[State -1, Snake Rampage]
type = ChangeState
value = 360
triggerall = var(10) = 0
triggerALL = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
triggerALL = power >= 1000
;---------------------------------------------------------------------------

[State -1, Kawarimi]
type = ChangeState
value = 8099
triggerall = stateno = [5000,5999]
TRIGGERALL = power >= 20
triggerall = command = "a"
trigger1 = movetype = H
;---------------------------------------------------------------------------

[State -1, Snake Scatter]
type = ChangeState
value = 1997
triggerall = var(10) = 0
triggerALL = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
triggerALL = power >= 500
;---------------------------------------------------------------------------

[State -1, Snake Tail Mass]
type = ChangeState
value = 1998
triggerall = var(10) = 0
triggerALL = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
triggerALL = power >= 800

;---------------------------------------------------------------------------

[State -1,Bunshin]
type = ChangeState
value = 38889
triggerall = var(10) = 0
triggerall = numhelper(0) < 1
triggerall = command = "y"
triggerall = power >= 500
trigger1 = statetype = C
trigger1 = ctrl = 1



;---------------------------------------------------------------------------

[State -1, Snake Grabble]
type = ChangeState
value = 1999999
triggerall = var(10) = 0
triggerALL = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
triggerALL = power >= 700


;---------------------------------------------------------------------------
[STATE ,-1
;---------------------------------------------------------------------------


[State -1, Damage 1]
type = poweradd
trigger1 = NumHelper(9393)
trigger1 = Helper(9393),gethitvar(hitcount)=1
value = -Helper(9393),GetHitVar(Damage)*9
kill = 1

[State -1,Assertspecial ]
type = assertspecial
trigger1 = stateno = 6553333
flag = noairguard
flag2 = nostandguard
flag3 = nocrouchguard

[State -1, Player NotHit 1]
type = HitBy
trigger1 = NumHelper(9393) || NumHelper(9394)
trigger2 = var(30)=1
triggerall = stateno = 6553333
value = SCA,AT

[State -1, SprPriority 1]
type = SprPriority
trigger1 = movetype=I
trigger2 = var(30)=1
triggerall = stateno = 6553333
value = -1

[State -1, Attack Taker]
type = Helper
triggerall = !NumHelper(9393)
trigger1 = MoveType != H
triggerall = stateno = 6553333
stateno = 9393
id = 9393

[State -1,Assertspecial ]
type = assertspecial
trigger1 = stateno = 65533111
flag = noairguard
flag2 = nostandguard
flag3 = nocrouchguard

[State -1, Player NotHit 1]
type = HitBy
trigger1 = NumHelper(9393) || NumHelper(9394)
trigger2 = var(30)=2
triggerall = stateno = 65533111
value = SCA,AT

[State -1, SprPriority 1]
type = SprPriority
trigger1 = movetype=I
trigger2 = var(30)=2
triggerall = stateno = 65533111
value = -1

[State -1, Attack Taker]
type = Helper
triggerall = !NumHelper(9393)
trigger1 = MoveType != H
triggerall = stateno = 65533111
stateno = 9393
id = 9393


;---------------------------------------------------------------------------
[STATE ,-1
;---------------------------------------------------------------------------

;-------------------------------------------------------------------------------
[State -1, Kabuto Snake Hit 1]
type = ChangeState
value = 10250
triggerall = var(10) = 1
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
;-------------------------------------------------------------------------------
[State -1, Kabuto Snake Hit 2]
type = ChangeState
value = 10260
triggerall = var(10) = 1
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
;-------------------------------------------------------------------------------
[State -1, Kabuto Snake Hit 3]
type = ChangeState
value = 10270
triggerALL = power >= 800
triggerall = var(10) = 1
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
;-------------------------------------------------------------------------------
[State -1,Kabuto Snake Chacra Charge]
type = ChangeState
value = 195
triggerall = power != 3000
triggerall = var(10) = 1
triggerall = command = "hold_z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
;-------------------------------------------------------------------------------
[State -1, Kabuto Snake Rapped 1]
type = Changestate
value = 10290
triggerALL = power >= 400
triggerall = var(10) = 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

[State -1, Kabuto snake rap 2]
type = ChangeState
value = 10290
triggerALL = power >= 400
triggerall = var(10) = 1
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
;-------------------------------------------------------------------------------
[State -1, Kabuto Snake Tail Mass 1]
type = ChangeState
value = 10755
triggerALL = power >= 800
triggerall = var(10) = 1
triggerALL = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

[State -1, Kabuto Snake Tail Mass 2]
type = ChangeState
value = 10755
triggerALL = power >= 800
triggerall = var(10) = 1
triggerALL = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
;-------------------------------------------------------------------------------
[State -1, Kabuto Snake Genjutsu 1]
type = ChangeState
value = 107551
triggerALL = power >= 1000
triggerall = var(10) = 1
triggerALL = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

[State -1, Kabuto Snake Genjutsu 2]
type = ChangeState
value = 107551
triggerALL = power >= 1000
triggerall = var(10) = 1
triggerALL = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
;-------------------------------------------------------------------------------



