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

[Command]
name = "Kikoku Ha"
command = D, DF, F, D, DF, F, y
time = 30

[Command]
name = "Ataque de Sombras A"
command = D, DB, B, D, DB, B, a
time = 30

[Command]
name = "Ataque de Sombras B"
command = D, DB, B, D, DB, B, b
time = 30

[Command]
name = "Rekka Kosoku Ken"
command = D, DF, F, D, DF, F, x
time = 30


;-| Special ki Motions |------------------------------------------------------
[Command]
name = "Tayoken"
command = ~D, DB, B, c
time = 20

[Command]
name = "Hana Gaeshi"
command = ~D, DB, B , a;~F, D, DF, c
time = 15

[Command]
name = "Dodonpa"
command = ~D, DF, F, c
time = 15



;-| Special Motions |------------------------------------------------------
[Command]
name = "Atake de Palmas"
command = ~D, DB, B , y
time = 15

[Command]
name = "Palmas Doble"
command = ~D, DB, B , x
time = 15

[Command]
name = "Palmas Rush"
command = x, x, x
time = 15


[Command]
name =  "Shin Torpedo_stand abajo"
command = ~F, DF, D, DB, B, a
time = 15

[Command]
name =  "Shin Torpedo_stand adelante"
command =  ~F, DF, D, DB, B, b
time = 15


[Command]
name =  "Salto definitivo_corto"
command = ~F, D, DF, a
time = 15

[Command]
name =  "Salto definitivo_largo"
command = ~F, D, DF, b
time = 15


;[Command]
;name =  "Rodillazo final despues del Torpedo"
;command = ~D, DF, F, a
;time = 15

;[Command]
;name =  "Agarre de piernas despues del Torpedo"
;command = ~D, DF, F, b
;time = 15



;-| Comands  |-----------------------------------------------------------

[Command]
name = "Fire Balls"
command = c
time = 15

[Command]
name = "Super Jump"
command = ~D, U
time = 10

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
name = "charge"
command = /a
time = 1

[Command]
name = "charge 1"
command = /x
time = 1

[Command]
name = "fly"
command = b+y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "UU"
command = U, U
time = 10

[Command]
name = "DD"
command = D, D
time = 10



;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
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

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1


[Command]
name = "hold_x"
command = /$x
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

[Command]
name = "hold_z"
command = /$z
time = 1

[Command]
name = "hold_a"
command = /$a
time = 1

[Command]
name = "hold_b"
command = /$b
time = 1

[Command]
name = "hold_c"
command = /$c
time = 1

;---------- Comandos de la Inteligencia Artificial-----------------
; Comandos activadores
;[Command]
;name = "AI Prueba"
;command = a+b ; con el bot A+B activamos la AI
;time = 1

;[Command]
;name = "AI desactivado"
;command = b+c ; Con el boton B+C desactivamos la AI
;time = 1
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

;===================================================================================
;---------------- Supers -----------------------------------------------------------
;===================================================================================

;Nuevo Kikoku Ha
[State -1, Kikoku Ha]
type = ChangeState
value = 3600
triggerall = command = "Kikoku Ha"
triggerall = power >= 1500
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 1500
trigger3 = (stateno = 600) && (movecontact = 1)
trigger4 = (stateno = 610) && (movecontact = 1)
trigger5 = (stateno = 630) && (movecontact = 1)
trigger6 = (stateno = 640) && (movecontact = 1)
trigger7 = (stateno = 500) && (movecontact = 1)
trigger8 = (stateno = 510) && (movecontact = 1)
trigger9 = (stateno = 530) && (movecontact = 1)
trigger10 = (stateno = 540) && (movecontact = 1)
trigger11 = (stateno = 1710)
trigger12 = (stateno = 1725)




;Rekka Kosoku Ken
[State -1, Rekka Kosoku Ken]
type = ChangeState
value = 3400
triggerall = command = "Rekka Kosoku Ken"
triggerall = power >= 1500
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 330) && (movecontact = 1) || (stateno = 310) && (movecontact = 1)
trigger8 = (stateno = 400) && (movecontact = 1)
trigger9 = (stateno = 410) && (movecontact = 1)
trigger10 = (stateno = 430) && (movecontact = 1)
trigger11 = (stateno = 1602)
trigger12 = (stateno = 1670) && (movecontact = 1)
trigger13 = (stateno = 1705)


;Ataque de Sombras
[State -1, Ataque de Sombras]
type = ChangeState
value = 3200
triggerall = command = "Ataque de Sombras A" || command = "Ataque de Sombras B"
triggerall = var(4) = 0
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1

;Kikoku Ha
[State -1, Kikoku Ha]
type = ChangeState
value = 3000
triggerall = command = "Kikoku Ha"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 330) && (movecontact = 1) || (stateno = 310) && (movecontact = 1)
trigger8 = (stateno = 400) && (movecontact = 1)
trigger9 = (stateno = 410) && (movecontact = 1)
trigger10 = (stateno = 430) && (movecontact = 1)
trigger11 = (stateno = 1602)
trigger12 = (stateno = 1670) && (movecontact = 1)
trigger13 = (stateno = 1705)








                  
                  

;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
var(1) = 1


;===================================================================================
;---------------- Specials Ki-------------------------------------------------------
;===================================================================================
;Tayoken
[State -1, Tayoken]
type = ChangeState
value = 2000
triggerall = command = "Tayoken"
triggerall = numhelper(2101) = 0
triggerall = numexplod(2102) = 0
triggerall = power >= 500
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = 1600) && (movecontact = 1)
trigger3 = (stateno = 1601) && (movecontact = 1)
trigger4 = (stateno != 1602) && (movecontact = 1)
trigger5 = (stateno = 1680) && (movecontact = 1) && (time > 8)

;Dodonpa
[State -1, Dodonpa]
type = ChangeState
value = 2500
triggerall = command = "Dodonpa"
triggerall = power >= 200
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 330) && (movecontact = 1) || (stateno = 310) && (movecontact = 1)
trigger8 = (stateno = 400) && (movecontact = 1)
trigger9 = (stateno = 410) && (movecontact = 1)
trigger10 = (stateno = 430) && (movecontact = 1)
trigger11 = (stateno = 1602)
trigger12 = (stateno = 1670) && (movecontact = 1)
trigger13 = (stateno = 1705)


;Hana Gaeshi
[State -1, Hana Gaeshi]
type = ChangeState
value = 2600
triggerall = command = "Hana Gaeshi"
triggerall = power >= 100
trigger1 = statetype = S
trigger1 = ctrl = 1


;Dodonpa en el aire
[State -1, Dodonpa en el aire]
type = ChangeState
value = 2700
triggerall = (power >= 300)
triggerall = !var(7)
triggerall = command = "Dodonpa"
trigger1 = statetype = A
triggerall = Pos Y <= -20
trigger1 = ctrl
trigger2 = stateno = 1500
trigger3 = (stateno = 600) && (movecontact = 1)
trigger4 = (stateno = 610) && (movecontact = 1)
trigger5 = (stateno = 630) && (movecontact = 1)
trigger6 = (stateno = 640) && (movecontact = 1)
trigger7 = (stateno = 500) && (movecontact = 1)
trigger8 = (stateno = 510) && (movecontact = 1)
trigger9 = (stateno = 530) && (movecontact = 1)
trigger10 = (stateno = 540) && (movecontact = 1)
trigger11 = (stateno = 1710)
trigger12 = (stateno = 1725)


;===================================================================================
;---------------- Specials ---------------------------------------------------------
;===================================================================================
;Atake de Palmas
[State -1, Atake de Palmas]
type = ChangeState
value = 1600
triggerall = command = "Atake de Palmas"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 330) && (movecontact = 1) || (stateno = 310) && (movecontact = 1)
trigger8 = (stateno = 400) && (movecontact = 1)
trigger9 = (stateno = 410) && (movecontact = 1)
trigger10 = (stateno = 430) && (movecontact = 1)
trigger11 = (stateno = 2000)

;Atake de Palmas  2nd
[State -1]
type = ChangeState
value = 1601
triggerall = command = "Atake de Palmas"
triggerall = stateno = 1600 && time >= 14
trigger1 = statetype = S


;Atake de Palmas  3rd
[State -1]
type = ChangeState
value = 1602
triggerall = command = "Atake de Palmas"
triggerall = stateno = 1601 && time >= 14
trigger1 = statetype = S


;-------------------------------------------------
;=================================================
;Palmas Doble - Special
[State -1, Palmas Doble - Special]
type = ChangeState
value = 1670
triggerall = command = "Palmas Doble"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 330) && (movecontact = 1)
trigger8 = (stateno = 400) && (movecontact = 1)
trigger9 = (stateno = 410) && (movecontact = 1)
trigger10 = (stateno = 430) && (movecontact = 1)
trigger11 = stateno = 1600 && time >= 14
trigger12 = stateno = 1601 && time >= 14
trigger13 = (stateno = 2000)


;-------------------------------------------------
;=================================================
;Palmas Rush
[State -1, Palmas Rush]
type = ChangeState
value = 1680
triggerall = command = "Palmas Rush"
trigger1 = statetype = S
trigger2 = (stateno = 1600) && (movecontact = 1)
trigger3 = (stateno = 1601) && (movecontact = 1)
trigger4 = (stateno != 1602) && (movecontact = 1)
trigger5 = (stateno = 1680) && (movecontact = 1) && (time > 8)
trigger6 = (stateno = 2000)



;-------------------------------------------------
;=================================================
;Shin Torpedo - stand abajo
[State -1, Shin Torpedo_stand abajo]
type = ChangeState
value = 1700
triggerall = command = "Shin Torpedo_stand abajo"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 330) && (movecontact = 1)  || (stateno = 310) && (movecontact = 1)
trigger8 = (stateno = 400) && (movecontact = 1)
trigger9 = (stateno = 410) && (movecontact = 1)
trigger10 = (stateno = 430) && (movecontact = 1)
trigger11 = (stateno = 1602) && (movecontact = 1)
trigger12 = (stateno = 1670) && (movecontact = 1)
trigger13 = (stateno = 2000)

;Shin Torpedo - stand aarriba
[State -1, Shin Torpedo_stand arriba]
type = ChangeState
value = 1720
triggerall = command = "Shin Torpedo_stand adelante"
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 330) && (movecontact = 1) || (stateno = 310) && (movecontact = 1)
trigger8 = (stateno = 400) && (movecontact = 1)
trigger9 = (stateno = 410) && (movecontact = 1)
trigger10 = (stateno = 430) && (movecontact = 1)
trigger11 = (stateno = 600) && (movecontact = 1)
trigger12 = (stateno = 610) && (movecontact = 1)
trigger13 = (stateno = 630) && (movecontact = 1)
trigger14 = (stateno = 640) && (movecontact = 1)
trigger15 = (stateno = 500) && (movecontact = 1)
trigger16 = (stateno = 510) && (movecontact = 1)
trigger17 = (stateno = 530) && (movecontact = 1)
trigger18 = (stateno = 540) && (movecontact = 1)
trigger19 = stateno = 1500
trigger20 = (stateno = 1710)
trigger21 = (stateno = 1725)
trigger22 = (stateno = 1670) && (movecontact = 1)
trigger23 = (stateno = 2000)

;Shin Torpedo - Aire Diagonal
[State -1, Shin Torpedo_Aire Diagonal]
type = ChangeState
value = 1750
triggerall = command = "Shin Torpedo_stand abajo"
trigger1 = statetype = A ;S
trigger1 = ctrl = 1
trigger2 = stateno = 1500
trigger3 = (stateno = 600) && (movecontact = 1)
trigger4 = (stateno = 610) && (movecontact = 1)
trigger5 = (stateno = 630) && (movecontact = 1)
trigger6 = (stateno = 640) && (movecontact = 1)
trigger7 = (stateno = 500) && (movecontact = 1)
trigger8 = (stateno = 510) && (movecontact = 1)
trigger9 = (stateno = 530) && (movecontact = 1)
trigger10 = (stateno = 540) && (movecontact = 1)
trigger11 = (stateno = 1710)
trigger12 = (stateno = 1725)


;-------------------------------------------------
;=================================================
;Salto definitivo - corto
[State -1, Rodillazo final - corto]
type = ChangeState
value = 1800
triggerall = command = "Salto definitivo_corto"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 330) && (movecontact = 1) || (stateno = 310) && (movecontact = 1)
trigger8 = (stateno = 400) && (movecontact = 1)
trigger9 = (stateno = 410) && (movecontact = 1)
trigger10 = (stateno = 430) && (movecontact = 1)
trigger11 = (stateno = 2000)

;Salto definitivo -  Largo
[State -1, Rodillazo final - Largo]
type = ChangeState
value = 1801
triggerall = command = "Salto definitivo_largo"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 330) && (movecontact = 1) || (stateno = 310) && (movecontact = 1)
trigger8 = (stateno = 400) && (movecontact = 1)
trigger9 = (stateno = 410) && (movecontact = 1)
trigger10 = (stateno = 430) && (movecontact = 1)
trigger11 = (stateno = 2000)



;===================================================================================
;---------------- Comands -------------------------------------------------------
;===================================================================================
;Fire Balls
[State -1, Fire Balls]
type = ChangeState
value = 1000
triggerall = power >= 50
trigger1 = command = "Fire Balls"
trigger1 = statetype = S
trigger1 = ctrl = 1

;charge ki
[State -1]
type = ChangeState
value = 730
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = (power < 3000)
trigger1 = command = "charge"
trigger1 = command = "charge 1"
trigger2 = stateno = 1500


;Flying Start
[State -1]
type = ChangeState
value = 1510
trigger1 = command = "fly"
trigger1 = ctrl = 1
trigger1 = statetype = A

;Super Jump
[State -1:      Super Jump]
type            = ChangeState
value      = 60
triggerall      = command = "Super Jump"
trigger1        = (statetype = S) && (ctrl)

;zanzoken
[State -1, zanzoken]
type = ChangeState
value = 10000
triggerall = command = "z"
triggerall = (power > 400)
triggerall = alive = 1
trigger1 = ctrl = 1
trigger1 = stateno >= 150
trigger2 = Stateno <= 153
trigger3 = stateno = 5000
trigger4 = stateno = 5001
trigger5 = stateno = 5002
trigger6 = stateno = 5010
trigger7 = stateno = 5011
trigger8 = stateno = 5012
trigger9 = stateno = 5020
trigger10 = stateno = 5021
trigger11 = stateno = 5022
trigger12 = stateno = 5110
trigger13 = stateno = 5120
trigger14 = stateno = 5110
trigger15 = stateno = 5035
trigger16 = stateno = 5030
trigger17 = stateno = 5050
trigger18 = stateno = 5040
trigger19 = stateno = 5071
trigger20 = stateno = 1500

;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
;[State -1, Kung Fu Throw]
;type = ChangeState
;value = 800
;triggerall = command = "y"
;triggerall = statetype = S
;triggerall = ctrl
;triggerall = stateno != 100
;trigger1 = command = "holdfwd"
;trigger1 = p2bodydist X < 3
;trigger1 = (p2statetype = S) || (p2statetype = C)
;trigger1 = p2movetype != H
;trigger2 = command = "holdback"
;trigger2 = p2bodydist X < 5
;trigger2 = (p2statetype = S) || (p2statetype = C)
;trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;Comand - Palmas Doble
[State -1, Comand - Palmas Doble]
type = ChangeState
value = 310
triggerall = (command = "holdfwd") || (command = "holddown") && (command = "holdfwd")
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 241) && (movecontact = 1)
trigger8 = (stateno = 400) && (movecontact = 1)
trigger9 = (stateno = 410) && (movecontact = 1)
trigger10 = (stateno = 430) && (movecontact = 1)

;---------------------------------------------------------------------------
;Comand - Patada arriba
[State -1, Comand - Patada arriba]
type = ChangeState
value = 330
triggerall = (command = "holddown") && (command = "holdfwd")
triggerall = command = "b"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 230) && (movecontact = 1)
trigger5 = (stateno = 241) && (movecontact = 1)
trigger6 = (stateno = 400) && (movecontact = 1)
trigger7 = (stateno = 410) && (movecontact = 1)
trigger8 = (stateno = 430) && (movecontact = 1)


;===================================================================================
;---------------- Corriendo --------------------------------------------------------
;===================================================================================



;===================================================================================
;---------------- B疽icos ----------------------------------------------------------
;===================================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;Stand Light Punch - 2nd hit
[State -1, Stand Light Punch, 2nd hit]
type = ChangeState
value = 201
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact = 1)


;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 230) && (movecontact = 1)
trigger5 = (stateno = 241) && (movecontact = 1)
trigger6 = (stateno = 330) && (movecontact = 1)

;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)

;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 400)  && (movecontact = 1)
trigger7 = (stateno = 430)  && (movecontact = 1)
trigger7 = (stateno = 431)  && (movecontact = 1)



;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400)  && (movecontact = 1)
trigger3 = (stateno = 430)  && (movecontact = 1)
trigger4 = (stateno = 230) && (movecontact = 1)

;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400)


;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400)  && (movecontact = 1)
trigger3 = (stateno = 430)  && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)


;===========================================================================
;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 630) && (movecontact = 1)
trigger3 = (stateno = 300) && (movecontact = 1)
trigger4 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact = 1)
trigger3 = stateno = 1350 ;Air blocking
trigger4 = (stateno = 630) && (movecontact = 1)
trigger5 = (stateno = 300) && (movecontact = 1)

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact = 1)
trigger2 = (stateno = 610) && (movecontact = 1)
trigger3 = (stateno = 630) && (movecontact = 1)
trigger4 = (stateno = 300) && (movecontact = 1)
trigger5 = stateno = 1350 ;Air blocking


;===========================================================================
;---------------------------------------------------------------------------
;Fly Light Punch
[State -1, Fly Light Punch]
type = ChangeState
value = 500
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 530) && (movecontact = 1)
trigger3 = stateno = 1350 ;Air blocking
trigger4 = Stateno = 1500 || Stateno = 1501 || Stateno = 1502 || Stateno = 1503 || Stateno = 1504

;---------------------------------------------------------------------------
;Fly Strong Punch
[State -1, Fly Strong Punch]
type = ChangeState
value = 510
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 500) && (movecontact = 1)
trigger3 = (stateno = 530) && (movecontact = 1)
trigger4 = stateno = 1350 ;Air blocking
trigger5 = Stateno = 1500 || Stateno = 1501 || Stateno = 1502 || Stateno = 1503 || Stateno = 1504
;---------------------------------------------------------------------------
;Fly Light Kick
[State -1, Fly Light Kick]
type = ChangeState
value = 530
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking
trigger3 = Stateno = 1500 || Stateno = 1501 || Stateno = 1502 || Stateno = 1503 || Stateno = 1504
;---------------------------------------------------------------------------
;Fly Strong Kick
[State -1, Fly Strong Kick]
type = ChangeState
value = 540
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 500) && (movecontact = 1)
trigger3 = (stateno = 510) && (movecontact = 1)
trigger4 = (stateno = 530) && (movecontact = 1)
trigger5 = stateno = 1350 ;Air blocking
trigger6 = Stateno = 1500 || Stateno = 1501 || Stateno = 1502 || Stateno = 1503 || Stateno = 1504
