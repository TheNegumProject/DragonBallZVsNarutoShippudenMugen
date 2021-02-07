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
name = "soco voando"
command = B,F,y
time = 20

[command]
name = "bola de energia"
command = c
time = 1

[command]
name = "super colisão"
command = /F,a

[command]
name = "chute giratorio"
command = /B,b

[command]
name = "super pulo"
command = ~D,U

[command]
name = "explosão de ki"
command = B,F,z
time = 25

[command]
name = "sequencia contra goku"
command = B,F,y
time = 30

[command]
name = "finish ball"
command = B,F,a
time = 20

[command]
name = "sec"
command = D,DF,F,z
time = 20

AI
[command]
name = "ai1"
command = x,c,c,s,a,z
time = 1

[command]
name = "ai2"
command = z,a,a,a,a,a,a,a,a,a,a,a,a,a,B
time = 1

[command]
name = "magia"
command = c

[command]
name = "sequencia contra bu2"
command = D,DF,F,x
time = 15

[command]
name = "sequencia contra buu"
command = x
time = 20

[command]
name = "seq"
command = F,B,F,B,a
time = 30

[command]
name = "anel de energia"
command = D,F,y
time = 15

[command]
name = "Ultimo Resplendor Final"
command = F,DF,D,DB,B,x
time = 30

[command]
name = "sequencia especial 2"
command = B,F,B,F,b
time = 30

[command]
name = "sequencia especial 1"
command = B,F,B,F,x
time = 30

[command]
name = "fly"
command = y+x
time = 1

[command]
name = "laser"
command = B,F,b
time = 20

[Command]
name = "charge"
command = /a
time = 1

[Command]
name = "charge 1"
command = /b
time = 1

[command]
name = "RAPIDEZ"
command = B,a+x
time = 30

[command]
name = "rapidez"
command = a+x
time = 30

[command]
name = "sequencia 3"
command = D,DF,F,b
time = 20

[command]
name = "sequencia 2"
command = D,DF,F,z
time = 30

[command]
name = "sequencia 1"
command = D,DF,F,y
time = 20

[Remap]
[command]
name = "Ataque Big Bang"
command = D,DF,F,a
time = 25

x = x
[command]
name = "sequencia"
command = D,DB,z
time = 25

y = y
[command]
name = "big bang no ar"
command = F,B,z
time = 30

z = z


a = a
[command]
name = "Final Flash"
command = D,DB,B,F,x
time = 30

b = b
[command]
name = "explosão"
command = D,DB,B,D,DB,B,a
time = 30

;-| Super Motions |--------------------------------------------------------

;-| Special Motions |------------------------------------------------------

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "F"     ;Required (do not remove)
command = F
time = 10

[Command]
name = "B"     ;Required (do not remove)
command = B
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
name = "fwd_a"
command = /F, a
time = 1

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

;soco voando
[State -1, soco voando]
type = ChangeState
value = 2323
triggerall = command = "soco voando"
trigger1 = (statetype = s) && ctrl

;bola de energia
[State -1, bola de energia]
type = ChangeState
value = 1889
triggerall = command = "bola de energia"
trigger1 = (statetype = A) && ctrl

---------------------------------------------------------------------
;magia
[State -1, magia]
type = ChangeState
value = 4442 ;numero do fire ball no cns
triggerall = command = "magia"; nome do comand acima
triggerall = var(7) = 0
trigger1 = statetype = S ; pode ser tambem A , no ar , ou C abaixado
trigger1 = power > 50
trigger1 = ctrl = 1
trigger2 = stateno = 1900
---------------------------------------------------------------------
;super colisão
[State -1, suer colisão]
type = ChangeState
value = 260
triggerall = command = "super colisão"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 1900

-----------------------------------------------------------------------
;chute giratorio
[State -1, chute giratorio]
type = ChangeState
value = 241
triggerall = command = "chute giratorio"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 1900

------------------------------------------------------------------------
;super pulo
[State -1, super pulo]
type = ChangeState
value = 707
triggerall = command = "super pulo"
triggerall = alive
triggerall =!win
trigger1 = statetype != A
trigger1 = ctrl = 1

----------------------------------------------------------------------
;sequencia contra goku
[State -1, sequencia contra goku]
type = ChangeState
value = 1449
triggerall = command = "sequencia contra goku"
trigger1 = (statetype = s) && ctrl

-----------------------------------------------------------------------


------------------------------------------------------------------------
;finish ball
[State -1, finish ball]
type = ChangeState
value = 1888
triggerall = command = "finish ball"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 1900

-------------------------------------------------------------------------
;explosão de ki
[State -1, explosão de ki]
type = ChangeState
value = 156
triggerall = command = "explosão de ki"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 1900

--------------------------------------------------------------------------
;AI
[state -1, AI]
type = null;varset
value = var (59) = 1
trigger1 = command = "ai1"
trigger2 = command = "ai2"
trigger3 = AnimElem = 12
trigger4 = AnimElem = 14
trigger5 = AnimElem = 16
trigger6 = AnimElem = 18
trigger7 = AnimElem = 20
trigger8 = AnimElem = 22
trigger9 = AnimElem = 24
trigger10 = AnimElem = 26
trigger11 = AnimElem = 28
trigger12 = AnimElem = 30
trigger13 = AnimElem = 32
trigger14 = AnimElem = 34
trigger15 = AnimElem = 36
trigger16 = AnimElem = 38
trigger17 = animelem = 40
trigger18 = animelem = 42
trigger19 = animelem = 44
trigger20 = animelem = 46
trigger21 = animelem = 48
trigger22 = animelem = 50
trigger23 = animelem = 55
trigger24 = animelem = 54

;ai1
[state -1, ai1]
type = null;changestate
triggerall = command = "ai1"
triggerall = var (59) =1
trigger1 = statetype = s
value = 2028
;ai2
[state -1, ai2]
type = null;changestate
triggerall = command = "ai2"
triggerall = var (59) =1
trigger1 = statetype = s
value = 2042

----------------------------------------------------------------------------
;sequencia contra bu2
[State -1, sequencia contra bu2]
type = ChangeState
value = 3400
triggerall = command = "sequencia contra bu2"
trigger1 = (statetype = s) && ctrl

-----------------------------------------------------------------------------
;sequencia contra buu
[State -1, sequencia contra buu]
type = null;hangeState
value = 2042
triggerall = command = "sequencia contra buu"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 1900

------------------------------------------------------------------------------
;anel de energia
[State -1, anel de energia]
type = ChangeState
value = 2032
triggerall = command = "anel de energia"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 1900
------------------------------------------------------------------------------
;Ultimo Resplendor Final
[State -1, Ultimo Resplendor Final]
type = ChangeState
value = 2028
triggerall = command = "Ultimo Resplendor Final"
trigger1 = (statetype = s) && ctrl
trigger2 = p2stateno = 5300

----------------------------------------------------------------------------
;sequencia especial 2
[State -1, sequencia especial 2]
type = null;ChangeState
value = 2017
triggerall = command = "sequencia especial 2"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 1900

----------------------------------------------------------------------------
;sequencia especial 1
[State -1, sequencia especial 1]
type = ChangeState
value = 2016
triggerall = command = "sequencia especial 1"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 1900

---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Voar
[State -1]
type = ChangeState
value = 1800
trigger1 = statetype = S
trigger1 = ctrl = 1
triggerall = command = "fly"

;---------------------------------------------------------------------------
; Voar ( no pulo )
[State -1]
type = ChangeState
value = 1900
trigger1 = statetype = A
trigger1 = ctrl = 1
triggerall = command = "fly"

;---------------------------------------------------------------------------
;laser
[State -1, laser]
type = changestate
value = 2555
triggerall = command = "laser"
trigger1 = statetype = s && ctrl
trigger2 = stateno = 1900

;--------------------------------------------------------------------
; CHARGE
[State -1]
type = ChangeState
value = 730
triggerall = statetype = S
triggerall = Power < 3000
triggerall = ctrl = 1
trigger1 = command = "charge"
trigger1 = command = "charge 1"

;--------------------------------------------------------------------
;RAPIDEZ
[State -1, RAPIDEZ]
type = ChangeState
value = 703
triggerall = command = "RAPIDEZ"
trigger1 = statetype = s && Ctrl
trigger2 = stateno = 1900
;--------------------------------------------------------------------
;rapidez
[State -1, rapidez]
type = ChangeState
value = 702
triggerall = command = "rapidez"
trigger1 = statetype = s && Ctrl
trigger2 = stateno = 1900
;-----------------------------------------------------------------------
;Ataque Big Bang
[State -1, Ataque Big Bang]
type = ChangeState
value = 1754
triggerall = command = "Ataque Big Bang"
trigger1 = (statetype = s) && ctrl

;------------------------------------------------------------------------
;sequencia
[State -1, sequencia]
type =  ChangeState
value = 9999
triggerall = command = "sequencia"
trigger1 = statetype = s
trigger2 = stateno = 1900

;---------------------------------------------------------------------------
;big bang no ar
[State -1, big bang no ar]
type = ChangeState
value = 8878
triggerall = command = "big bang no ar"
trigger1 = statetype = A
trigger2 = stateno = 1900

;-----------------------------------------------------------------------------
;Final Flash
[State -1, Final Flash]
type = ChangeState
value = 1222
triggerall = command = "Final Flash"
trigger1 = statetype = s  && ctrl
trigger2 = stateno = 1900

;----------------------------------------------------------------------------
;explosão
[State -1, explosão]
type = ChangeState
value = 5555
triggerall = command = "explosão"
trigger1 = (statetype = s) && ctrl

;===========================================================================
;---------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "F"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "B"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
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
trigger2 = movecontact
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
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1900

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1900

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = null;ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1900

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1900

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1900

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = null; ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1900

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = null;ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = null;ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = null;ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = null;ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
