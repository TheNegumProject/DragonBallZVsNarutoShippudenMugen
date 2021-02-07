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

;-| AI Motions |--------------------------------------------------------
[Command]
name = "AI1"
command = D,B,D,B,D,B,UF, x+y
time = 1

[Command]
name = "AI2"
command = UF,D,B,D,B,D,B,D,B, y
time = 1

[Command]
name = "AI3"
command = D,B,D,B,D,B,D,B, a
time = 1

[Command]
name = "AI4"
command = UB,D,B,D,B,D,B,D,B, b
time = 1

[Command]
name = "AI5"
command = D,B,D,B,D,B,D,B, c
time = 1

[Command]
name = "AI6"
command = D,B,D,B,D,B,D,B, z
time = 1

[Command]
name = "AI7"
command = D,B,D,B,D,B,D,B, a+b+c+x+y+z
time = 1

[Command]
name = "AI8"
command = UF,D,F,D,F,D,F,D,F, x
time = 1

[Command]
name = "AI9"
command = D,F,D,F,D,F,D,F, y
time = 1

[Command]
name = "AI10"
command = UB,D,F,D,F,D,F,D,F, z
time = 1

[Command]
name = "AI11"
command = D,F,D,F,D,F,D,F, a
time = 1

[Command]
name = "AI12"
command = UF,D,F,D,F,D,F,D,F, b
time = 1

[Command]
name = "AI13"
command = D,F,D,F,D,F,D,F, c
time = 1

[Command]
name = "AI14"
command = UB,D,F,D,F,D,F,D,F, a+b+c+x+y+z
time = 1

[Command]
name = "AI15"
command = D,B,D,F,D,B,D,F, x
time = 1

[Command]
name = "AI16"
command = D,B,D,F,D,B,D,F,UF, y
time = 1

[Command]
name = "AI17"
command = D,B,D,F,D,B,D,F, z
time = 1

[Command]
name = "AI18"
command = D,B,D,F,D,B,D,F,UB, a
time = 1

[Command]
name = "AI19"
command = D,B,D,F,D,B,D,F, b
time = 1

[Command]
name = "AI20"
command = D,B,D,F,D,B,D,F, c
time = 1

[Command]
name = "AI21"
command = D,B,D,F,D,B,D,F, x+y+z+a+b+c
time = 1

[Command]
name = "AI22"
command = B,B,B,B,B,B,B,B, x+y+z+a+b+c
time = 1

[Command]
name = "AI23"
command = F,F,F,F,F,F,F,F, x+y+z+a+b+c
time = 1

[Command]
name = "AI24"
command = B,F,B,F,B,F,B,F, x+y+z+a+b+c
time = 1

[Command]
name = "AI25"
command = D,D,D,D,D,D,D,D, x+y+z+a+b+c
time = 1

[Command]
name = "AI26"
command = U,D,U,D,U,D,U,D, x+y+z+a+b+c
time = 1

[Command]
name = "AI27"
command = U,F,U,D,B,F,B,D, x+y+z+a+b+c
time = 1

[Command]
name = "AI28"
command = F,D,F,D,U,D,U,D, x+y+z+a+b+c
time = 1

[Command]
name = "AI29"
command = DF,D,D,F,U,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI30"
command = B,D,D,F,UF,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI31"
command = B,B,BD,F,DF,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI32"
command = D,F,F,F,D,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI33"
command = DF,D,DF,UF,DB,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI34"
command = D,D,D,F,DB,DF,a+b+c+x+y+z
time = 1

[Command]
name = "AI35"
command = D,D,UF,DF,UB,UF,a+b+c+x+y+z
time = 1

[Command]
name = "AI36"
command = D,DF,DF,DF,DF,F,a+b+c+x+y,z
time = 1

[Command]
name = "AI37"
command = D,D,DB,UF,DF,UF,a+b+c+x,y,z
time = 1

[Command]
name = "AI38"
command = F,U,F,F,F,F,a,b+c,x,y,z
time = 1

[Command]
name = "AI39"
command = DF,UF,D,DF,U,F,a+b,c+x,y,z
time = 1

[Command]
name = "AI40"
command = D,D,D,D,F,D,a+b,c,x,y+z
time = 1

[Command]
name = "AI41"
command = D,D,D,F,F,F,a+b+c+x+y+z,a
time = 1

[Command]
name = "AI42"
command = D,D,D,F,F,U,a+b+c+x+y+z,b
time = 1

[Command]
name = "AI43"
command = D,D,D,F,F,UF,a+b+c+x+y+z,c
time = 1

[Command]
name = "AI44"
command = D,D,D,F,F,D,a+b+c+x+y+z,x
time = 1

[Command]
name = "AI45"
command = D,D,D,F,F,DF,a+b+c+x+y+z,y
time = 1

[Command]
name = "AI46"
command = D,D,D,F,F,B,a+b+c+x+y+z,z
time = 1

[Command]
name = "AI47"
command = D,D,D,F,F,DB,a+b+c+x+y+z,a+b
time = 1

[Command]
name = "AI48"
command = D,D,D,F,F,UB,a+b+c+x+y+z,a+c
time = 1

[Command]
name = "AI49"
command = D,D,D,F,U,F,a+b+c+x+y+z,b+c
time = 1

[Command]
name = "AI50"
command = D,D,D,F,UF,F,a+b+c+x+y+z,x+z
time = 1

;-| Special Motions |------------------------------------------------------
[Command]
name = "Explosive Kunais"
command = D,DF,F,y
time = 15

[command]
name = "Makibishi"
command = ~D, DB, B, y
time = 15

[command]
name = "Wind kunai"
command = B,F,y
time = 15

[command]
name = "Rock"
command = D,DF,F,a
time = 15

[command]
name = "Rock-shield"
command = D,DB,B,a
time = 15

[command]
name = "Speed_Combo"
command = D,DF,F,x
time = 15

[command]
name = "Seal"
command = D,DB,B,x
time = 15

[command]
name = "Frog"
command = D,DF,F,b
time = 15

[command]
name = "Gamabunta"
command = D,DB,B,b
time = 15

[command]
name = "Shiki Fuujin No Jutsu"
command = D,DF,F,s
time = 15

[command]
name = "Fuuton"
command = D,DB,s
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

[Command]
name = "DD"     ;Required (do not remove)
command = D, D
time = 10

[Command]
name = "High Jump"
command = ~$D, U
time = 5
buffer.time = 2

[Command]
name = "High Jump Forward"
command = ~$D, UF
time = 5
buffer.time = 2

[Command]
name = "High Jump Back"
command = ~$D, UB
time = 5
buffer.time = 2

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
name = "recovery"
command = s
time = 1

;-| Dir + Button |---------------------------------------------------------
;[Command]
;name = "back_x"
;command = /$B,x
;time = 1

;[Command]
;name = "back_y"
;command = /$B,y
;time = 1

;[Command]
;name = "back_z"
;command = /$B,z
;time = 1

;[Command]
;name = "down_x"
;command = /$D,x
;time = 1

;[Command]
;name = "down_y"
;command = /$D,y
;time = 1

;[Command]
;name = "down_z"
;command = /$D,z
;time = 1

;[Command]
;name = "fwd_x"
;command = /$F,x
;time = 1

;[Command]
;name = "fwd_y"
;command = /$F,y
;time = 1

;[Command]
;name = "fwd_z"
;command = /$F,z
;time = 1

;[Command]
;name = "up_x"
;command = /$U,x
;time = 1

;[Command]
;name = "up_y"
;command = /$U,y
;time = 1

;[Command]
;name = "up_z"
;command = /$U,z
;time = 1

;[Command]
;name = "back_a"
;command = /$B,a
;time = 1

;[Command]
;name = "back_b"
;command = /$B,b
;time = 1

;[Command]
;name = "back_c"
;command = /$B,c
;time = 1

;[Command]
;name = "down_a"
;command = /$D,a
;time = 1

;[Command]
;name = "down_b"
;command = /$D,b
;time = 1

;[Command]
;name = "down_c"
;command = /$D,c
;time = 1

;[Command]
;name = "fwd_a"
;command = /$F,a
;time = 1

;[Command]
;name = "fwd_b"
;command = /$F,b
;time = 1

;[Command]
;name = "fwd_c"
;command = /$F,c
;time = 1

;[Command]
;name = "up_a"
;command = /$U,a
;time = 1

;[Command]
;name = "up_b"
;command = /$U,b
;time = 1

;[Command]
;name = "up_c"
;command = /$U,c
;time = 1

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
[State -1, Снять плащ]
type = ChangeState
value = 195
triggerall = command = "s"
triggerall = statetype != A
triggerall = statetype = C
triggerall = ctrl
triggerall = var(7) = 0
trigger1 = life <= lifemax/2
trigger4 = roundno = 2
trigger2 = time > TicksPerSecond
trigger2 = var(51) > 0
trigger2 = random = [5,900]
trigger3 = life <= lifemax/2
trigger3 = var(51) > 0
trigger3 = random = [100,900]
;---------------------------------------------------------------------------
[State -1, Третий прыжок в воздухе (Без плаща)]
type = ChangeState
value = 45
triggerall = var(7) = 1000
trigger1 = command = "up"
triggerall = statetype = A
triggerall = ctrl
trigger1 = var(5) < 2
triggerall = stateno != 45

;---------------------------------------------------------------------------
[State -1, Копление чакры]
type = ChangeState
value = 197
triggerall = command != "Shiki Fuujin No Jutsu"
triggerall = command != "Fuuton"
triggerall = power < powermax
triggerall = command = "s"
triggerall = statetype = S
triggerall = ctrl
trigger1 = var(51) = 0
trigger2 = power < 2000
trigger2 = random <= 500

;---------------------------------------------------------------------------
[State -1, Высокий прыжок вверх]
type = ChangeState
value = 1170
triggerall = command = "High Jump"
triggerall = statetype != A
trigger1   = ctrl

[State -1, Высокий прыжок вперёд]
type = ChangeState
value = 1160
triggerall = command = "High Jump Forward"
triggerall = statetype != A
trigger1   = ctrl
trigger2   = stateno = 100
trigger2   = animelemtime(3) >= 0

[State -1, Высокий прыжок назад]
type = ChangeState
value = 1165
triggerall = command = "High Jump Back"
triggerall = statetype != A
trigger1   = ctrl
trigger2   = stateno = 100
trigger2   = animelemtime(3) >= 0

;---------------------------------------------------------------------------
[State -1, Быстрое приземление]
type = ChangeState
value = 46
triggerall = stateno != 105
triggerall = movetype != H
trigger1 = command = "DD"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Бег вперёд]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
triggerall = var(7) = 0

[State -1, Отпрыгнуть назад]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
triggerall = var(7) = 0

;---------------------------------------------------------------------------
[State -1, "Прыжок" без плаща вперёд]
type = ChangeState
value = 1100
triggerall = var(7) > 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, "Прыжок" без плаща назад]
type = ChangeState
value = 1105
triggerall = var(7) > 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Комбо 1 (В плаще)]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command != "Rock"
triggerall = command != "Rock-shield"
triggerall = var(7) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 101
trigger2 = time >= 5

[State -1, Комбо 1 (Без плаща)]
type = ChangeState
value = 1200
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command != "Rock"
triggerall = command != "Rock-shield"
triggerall = var(7) > 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 101
trigger2 = time >= 5

;---------------------------------------------------------------------------
[State -1, Удар снизу вверх]
type = ChangeState
value = 220
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = command != "Rock"
triggerall = command != "Rock-shield"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
trigger2 = time >= 5

;---------------------------------------------------------------------------
[State -1, Удар в прыжке 1]
type = ChangeState
value = 310
triggerall = command = "a"
triggerall = command != "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl
triggerall = !ishelper

;---------------------------------------------------------------------------
[State -1, Удар в прыжке 2]
type = ChangeState
value = 300
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl
triggerall = !ishelper

;---------------------------------------------------------------------------
[State -1, Удар в прыжке 3]
type = ChangeState
value = 320
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = command != "holdfwd"
trigger1 = statetype = A
trigger1 = ctrl
triggerall = !ishelper

;---------------------------------------------------------------------------
[State -1, Особый кунай]
type = ChangeState
value = 1500
triggerall = command = "b"
triggerall = time >= 10
triggerall = command != "holddown" || var(17) = 0
triggerall = helper(1501), stateno != 1502
triggerall = helper(1501), stateno != 1501
triggerall = helper(1501), stateno != 523
triggerall = helper(1501), stateno != 524
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = var(17) < 1
triggerall = stateno != 1600
triggerall = stateno != 1601
triggerall = stateno != 1602
triggerall = !ishelper

[State -1, Особый кунай в воздухе]
type = ChangeState
value = 522
triggerall = command = "b"
triggerall = time >= 10
triggerall = command != "holddown" || var(17) = 0
triggerall = helper(1501), stateno != 1502
triggerall = helper(1501), stateno != 1501
triggerall = helper(1501), stateno != 523
triggerall = helper(1501), stateno != 524
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = var(17) < 1
triggerall = stateno != 1600
triggerall = stateno != 1601
triggerall = stateno != 1602
triggerall = !ishelper

;---------------------------------------------------------------------------
[State -1, Хирашин]
type = ChangeState
value = 1600
triggerall = time >= 10
triggerall = command != "holddown"
triggerall = command = "b"
trigger1 = helper(1501),stateno = 1502
trigger2 = helper(1501),stateno = 524
triggerall = abs(helper(1501),pos x) > abs(p2bodydist x) - abs(pos x)
triggerall = !ishelper

;---------------------------------------------------------------------------
[State -1, Телепорт к кунаю]
type = ChangeState
value = 708
triggerall = command = "holddown"
triggerall = command = "b"
trigger1 = helper(1501),stateno = 1501
trigger2 = helper(1501),stateno = 1502
trigger3 = helper(1501),stateno = 1503
trigger4 = helper(1501),stateno = 523
trigger5 = helper(1501),stateno = 524
trigger6 = helper(1501),stateno = 713
trigger7 = helper(1501),stateno = 714
triggerall = !ishelper

;---------------------------------------------------------------------------
[State -1, Кунай]
type = ChangeState
value = 500
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = command != "Wind kunai"
triggerall = command != "Makibishi"
triggerall = command != "Explosive Kunais"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = var(18) < 20
triggerall = !ishelper

[State -1, Кунай в воздухе]
type = ChangeState
value = 520
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = command != "Wind kunai"
triggerall = command != "Makibishi"
triggerall = command != "Explosive Kunais"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = var(18) < 20

;---------------------------------------------------------------------------
[State -1, Кунай с чакрой ветра]
type = ChangeState
value = 502
triggerall = command = "Wind kunai"
trigger1 = power >= 100
triggerall = statetype = S
triggerall = ctrl
trigger1 = var(18) < 20

;-------------------------------------------------------------------------------
[state -1, Рассыпать макибиси]
type = changestate
trigger1 = command = "Makibishi"
triggerall = var(15) < 3
trigger1 = ctrl && statetype != A
value = 504

[state -1, Рассыпать макибиси в воздухе]
type = changestate
triggerall = var(15) < 3
trigger1 = command = "Makibishi"
trigger1 = ctrl && statetype = A
value = 505

;---------------------------------------------------------------------------
[State -1, Взрывной кунай]
type = ChangeState
value = 506
trigger1 = command = "Explosive Kunais"
trigger1 = statetype = S
trigger1 = ctrl
triggerall = var(10) < 2

[State -1, Взрывной кунай в воздухе]
type = ChangeState
value = 511
trigger1 = command = "Explosive Kunais"
trigger1 = statetype = A
trigger1 = ctrl
triggerall = var(10) < 2

;-------------------------------------------------------------------------------
[state -1, Кинуть дымовую шашку]
type = Changestate
trigger1 = command = "y"
trigger1 = statetype = C
triggerall = var(16) < 1
trigger1 = ctrl && statetype != A
value = 515

[state -1, Кинуть дымовую шашку в воздухе]
type = Changestate
triggerall = var(16) < 1
trigger1 = command = "y"
trigger1 = command = "holddown"
trigger1 = ctrl && statetype = A
value = 516

;---------------------------------------------------------------------------
[State -1, Телепорт]
type = ChangeState
value = ifelse(var(7)=1000,700,ifelse(var(51)>0,700,707))
triggerall = command = "c"
trigger1 = movetype != H
triggerall = ctrl
trigger1 = power >= 100

;---------------------------------------------------------------------------
[State -1, Каварими]
type = ChangeState
value = 701
triggerall = statetype = S
triggerall = power >= 500
triggerall = stateno != 120
triggerall = stateno != 130
triggerall = stateno != 131
triggerall = stateno != 132
triggerall = stateno != 140
triggerall = stateno != 150
triggerall = stateno != 151
triggerall = stateno != 152
triggerall = stateno != 153
triggerall = stateno != 154
triggerall = stateno != 155
triggerall = stateno != 5150
triggerall = stateno != 5110
Triggerall = command = "c"
trigger1 = movetype = H
triggerall = var(7) = 0
triggerall = !ishelper

[State -1, Каварими в воздухе]
type = ChangeState
value = 702
triggerall = statetype = A
triggerall = power >= 500
triggerall = stateno != 120
triggerall = stateno != 130
triggerall = stateno != 131
triggerall = stateno != 132
triggerall = stateno != 140
triggerall = stateno != 150
triggerall = stateno != 151
triggerall = stateno != 152
triggerall = stateno != 153
triggerall = stateno != 154
triggerall = stateno != 155
triggerall = stateno != 5150
triggerall = stateno != 5110
Triggerall = command = "c"
trigger1 = movetype = H
triggerall = var(7) = 0
triggerall = !ishelper

[State -1, Побег]
type = ChangeState
value = 706
triggerall = power >= 500
triggerall = stateno != 120
triggerall = stateno != 130
triggerall = stateno != 131
triggerall = stateno != 132
triggerall = stateno != 140
triggerall = stateno != 150
triggerall = stateno != 151
triggerall = stateno != 152
triggerall = stateno != 153
triggerall = stateno != 154
triggerall = stateno != 155
triggerall = stateno != 5150
triggerall = stateno != 5110
Triggerall = command = "c"
trigger1 = movetype = H
triggerall = var(7) = 1000

;---------------------------------------------------------------------------
[State -1, Контр удар]
type = ChangeState
value = 832
trigger1 = command = "x"
triggerall = command != "Speed_Combo"
triggerall = command != "Seal"
triggerall = statetype = S
triggerall = ctrl
trigger2 = var(51) = 1
trigger2 = random = [300,600]
trigger2 = p2dist x < 30
trigger2 = enemy,movetype = A

;---------------------------------------------------------------------------
[State -1, Скала]
type = changestate
value = 800
triggerall = command = "Rock"
triggerall = power >= 1300
trigger1 = ctrl
trigger1 = statetype != A

;---------------------------------------------------------------------------
[State -1, Защитная скала]
type = changestate
value = 802
triggerall = command = "Rock-shield"
triggerall = power >= 1000
trigger1 = ctrl
trigger1 = statetype != A

;---------------------------------------------------------------------------
[State -1, Призыв лягушки]
type = changestate
value = 812
triggerall = command = "Frog"
triggerall = power >= 500
trigger1 = ctrl
trigger1 = statetype != A

[State -1, Падающая лягушка]
type = ChangeState
value = 822
triggerall = power >= 500
triggerall = command = "s"
triggerall = statetype = A
triggerall = ctrl
trigger1 = var(51) = 0
trigger2 = random = [500,1000]

;---------------------------------------------------------------------------
[State -1, Призыв Гамабунты]
type = changestate
value = 824
triggerall = command = "Gamabunta"
triggerall = power >= 1100
triggerall = numhelper(826) = 0
trigger1 = ctrl
trigger1 = statetype != A

;---------------------------------------------------------------------------
[State -1, Быстрое комбо]
type = changestate
value = ifelse(var(7)=0,810,833)
triggerall = command = "Speed_Combo"
triggerall = power >= ifelse(var(7)=0,1000,3000)
trigger1 = ctrl
trigger1 = statetype != A

;---------------------------------------------------------------------------
[State -1, Запечатать чакру врага]
type = changestate
value = 814
triggerall = numhelper(815) = 0
triggerall = command = "Seal"
triggerall = power = powermax
trigger1 = ctrl
trigger1 = statetype != A

;---------------------------------------------------------------------------
[State -1, Расенган]
type = ChangeState
value = 900
triggerall = command = "hold_x"
triggerall = command != "Speed_Combo"
triggerall = command != "Seal"
trigger1 = statetype = C
triggerall = ctrl
trigger1 = power >= 500
triggerall = numhelper (902) = 0
triggerall = stateno != 900

[State -1, Расенган в воздухе]
type = ChangeState
value = 899
triggerall = pos y <= 20
triggerall = command = "x"
trigger1 = power >= 500
trigger1 = statetype = A
trigger1 = ctrl
triggerall = numhelper (812) = 0

;---------------------------------------------------------------------------
[State -1, Катон Гокакью]
type = changestate
value = 816
trigger1 = command = "hold_z"
trigger1 = var(51) = 0
trigger2 = var(51) > 0
trigger2 = random = [300,600]
triggerall = power >= powermax/50
triggerall = ctrl
triggerall = statetype = C
triggerall = numhelper (817) = 0

;---------------------------------------------------------------------------
[State -1, Катон Хоусенка]
type = changestate
value = 818
trigger1 = command = "hold_z"
trigger1 = var(51) = 0
triggerall = power >= powermax/50
triggerall = ctrl
triggerall = statetype = S
trigger2 = var(51) > 0
trigger2 = random = [300,600]

[State -1, Катон Хоусенка в воздухе]
type = changestate
value = 819
triggerall = command = "hold_z"
triggerall = power >= powermax/50
trigger1 = ctrl
trigger1 = statetype = A

;---------------------------------------------------------------------------
[State -1, Футон]
type = changestate
value = 835
trigger1 = command = "Fuuton"
triggerall = power >= 300
triggerall = ctrl
triggerall = statetype = S
trigger2 = var(51) > 0
trigger2 = random = [300,600]

;---------------------------------------------------------------------------
[State -1, Призыв Бога Смерти]
type = changestate
value = 827
trigger1 = command = "Shiki Fuujin No Jutsu"
trigger2 = roundno >= 3
trigger2 = enemy,name != "Namikaze Minato (Yellow Flash)"
trigger1 = power = powermax
triggerall = ctrl
triggerall = statetype != A
triggerall = numhelper (829) = 0

[State -1, Запечатывание души]
type = changestate
value = 828
trigger1 = command = "Shiki Fuujin No Jutsu"
triggerall = ctrl
triggerall = statetype != A
triggerall = numhelper (829) = 1

;---------------------------------------------------------------------------

[State -1, Activation AI]
type = VarSet
triggerall = var(51) != 1
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
trigger21 = command = "AI21"
trigger22 = command = "AI22"
trigger23 = command = "AI23"
trigger24 = command = "AI24"
trigger25 = command = "AI25"
trigger26 = command = "AI26"
trigger27 = command = "AI27"
trigger28 = command = "AI28"
trigger29 = command = "AI29"
trigger30 = command = "AI30"
trigger31 = command = "AI31"
trigger32 = command = "AI32"
trigger33 = command = "AI33"
trigger34 = command = "AI34"
trigger35 = command = "AI35"
trigger36 = command = "AI36"
trigger37 = command = "AI37"
trigger38 = command = "AI38"
trigger39 = command = "AI39"
trigger40 = command = "AI40"
trigger41 = command = "AI41"
trigger42 = command = "AI42"
trigger43 = command = "AI43"
trigger44 = command = "AI44"
trigger45 = command = "AI45"
trigger46 = command = "AI46"
trigger47 = command = "AI47"
trigger48 = command = "AI48"
trigger49 = command = "AI49"
trigger50 = command = "AI50"
v = 51
value = 1


[state -1,AI Crouch]
type = changestate
triggerall = var(51) = 1
triggerall = roundstate = 2
triggerall = P2Life > 0
trigger1 = statetype != A
trigger1 = pos Y = 0
trigger1 = ctrl
trigger1 = random <= 5
value = 11

[state -1,AI S Guard]
type = changestate
triggerall = var(51) = 1
triggerall = roundstate = 2
triggerall = P2Life > 0
trigger1 = p2bodydist X = [-1,75]
trigger1 = p2movetype = A
trigger1 = statetype = S
trigger1 = movetype != A
trigger1 = random <= 150
trigger1 = ctrl
value = 130

[state -1,AI S Explosion]
type = changestate
triggerall = var(51) = 1
triggerall = roundstate = 2
triggerall = P2Life > 0
trigger1 = p2bodydist X >= 120
trigger1 = statetype = S
trigger1 = movetype != A
trigger1 = p2statetype = S
trigger1 = p2stateno != [120,155]
trigger1 = random <= 10
trigger1 = ctrl
value = 200011

[state -1,AI S Explosion]
type = changestate
triggerall = var(51) = 1
triggerall = roundstate = 2
triggerall = P2Life > 0
trigger1 = p2bodydist X <= 25
trigger1 = statetype = S
trigger1 = movetype != A
trigger1 = p2statetype = S
trigger1 = p2stateno != [120,155]
trigger1 = random <= 10
trigger1 = ctrl
value = 20001

[state -1,AI Stand Light Punch]
type = ChangeState
triggerall = var(51) = 1
triggerall = roundstate = 2
triggerall = P2Life > 0
triggerall = p2Bodydist X <= 20
triggerall = statetype = S
trigger1 = ctrl
trigger1 = random <= 350
value = 200

[state -1,AI Stand Medium Punch]
type = ChangeState
triggerall = var(51) = 1
triggerall = roundstate = 2
triggerall = P2Life > 0
triggerall = random <= 350
triggerall = p2Bodydist X <= 20
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 250 && time >= 10
trigger3 = stateno = 230 && time >= 10
trigger4 = stateno = 240 && time >= 10
trigger5 = stateno = 200 && time >= 10
value = 210

[State -1,AI Stand Strong Punch]
type = ChangeState
triggerall = var(51) = 1
triggerall = roundstate = 2
triggerall = P2Life > 0
triggerall = random <= 350
triggerall = p2Bodydist X <= 20
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 240 && time >= 10
trigger3 = stateno = 200 && time >= 10
trigger4 = stateno = 250 && time >= 10
trigger5 = stateno = 230 && time >= 10
value = 220

[State -1,AI Stand Light Kick]
type = ChangeState
triggerall = var(51) = 1
triggerall = roundstate = 2
triggerall = P2Life > 0
triggerall = random <= 350
triggerall = p2Bodydist X <= 20
triggerall = statetype = S
trigger1 = ctrl
value = 230

[State -1,AI Хирашин]
type = ChangeState
value = 1600
triggerall = time >= 10
trigger1 = helper(1501),stateno = 1502
trigger2 = helper(1501),stateno = 524
triggerall = abs(helper(1501),pos x) > abs(p2bodydist x) - abs(pos x)
triggerall = !ishelper
triggerall = var(51) = 1
triggerall = roundstate = 2
triggerall = random <= 20

[State -1,AI Телепорт к кунаю]
type = ChangeState
value = 708
trigger1 = helper(1501),stateno = 1501
trigger2 = helper(1501),stateno = 1502
trigger3 = helper(1501),stateno = 1503
trigger4 = helper(1501),stateno = 523
trigger5 = helper(1501),stateno = 524
trigger6 = helper(1501),stateno = 713
trigger7 = helper(1501),stateno = 714
triggerall = !ishelper
triggerall = var(51) = 1
triggerall = roundstate = 2
triggerall = random <= 60

[State -1,AI Быстрый разрез]
type = changestate
value = 820
triggerall = var(7) = 1000
triggerall = var(17) = 0
triggerall = power >= 1
triggerall = ctrl
triggerall = statetype != A
trigger1 = var(51) = 1
trigger1 = random = [100,500]

[State -1,AI Снять плащ]
type = ChangeState
value = 195
triggerall = statetype != A
triggerall = ctrl
triggerall = var(7) = 0
trigger1 = life <= lifemax/2
triggerall = random <= 85
