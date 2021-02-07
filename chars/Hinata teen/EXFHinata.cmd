[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s
;-| Default Values |-------------------------------------------------------
[command]
name = "Shugo Hakke Rokujuuyonshou"
command = D,B,y
time = 15
[command]
name = "Dodge"
command = s
time = 15
[command]
name = "Kunai Dupla"
command = b
time = 15
[Command]
name = "segura_x"
command = /x
[Command]
name = "segura_y"
command = /y
[command]
name = "Hakke Kuushou"
command = B,F,y
time = 15
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
[command]
name = "64 Palms"
command = D,F,y
time = 15
command.time = 30
; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
[command]
name = "Life Recover"
command = D,F,z
time = 15
command.buffer.time = 1
;-| Super Motions |--------------------------------------------------------
;-| Special Motions |------------------------------------------------------
[Command]
name = "QCB_x"
command = D, DB, B, x
time = 20
[Command]
name = "QCF_x"
command = D, DF, F, x
time = 20
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "Run"     ;Required (do not remove)
command = F,F
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
[Statedef -1]
[State -1,Byakugan]
Type = ChangeState
Value = 250
triggerall = var(0) = 0
Triggerall = Command = "a"
triggerall = power >= 1
Trigger1 = StateType = S
Trigger1 = ctrl
;--------------------------------------------------------------
[State -1,Byakugan Off]
Type = ChangeState
Value = 251
triggerall = var(0) = 1
Triggerall = Command = "a"
Trigger1 = StateType = S
Trigger1 = ctrl
; Stand Kaiten
[State -1, Stand Kaiten]
type = ChangeState
value = 1000
triggerall = command = "c"
triggerall = power >= 200
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
;Dodge
[State -1, Dodge]
type=ChangeState
value=3055
triggerall=statetype=S&&ctrl
trigger1=command="Dodge"
;Shugo Hakke Rokujuuyonshou
[State -1, Shugo Hakke Rokujuuyonshou]
type = ChangeState
value = 2000
triggerall = command = "Shugo Hakke Rokujuuyonshou"
triggerall = power >= 2000
trigger1 = (statetype = s) && ctrl
;Power Charge
[State -1, Power Charge]
type = ChangeState
value = 900
triggerall = Power < 3000 ;evita que continue carregando quando já está com o power cheio
triggerall = (command = "segura_x"&&command = "segura_y") ;lembre-se de unir os dois comandos criados acima
trigger1 = statetype != A
trigger1 = ctrl
;Kunai Dupla
[State -1, Kunai Dupla]
type = ChangeState
value = 200
triggerall = command = "Kunai Dupla"
trigger1 = (statetype = s) && ctrl
; Stand Teleport
[State -1, Stand Teleport]
type = ChangeState
value = 4000
triggerall = command = "x" && command != "QCB_x"
trigger1 = statetype = S || statetype = C
trigger1 = command != "holddown"
trigger1 = ctrl
; Jump Teleport
[State -1, Jump Teleport]
type = ChangeState
value = 4100
triggerall = command = "x" && command != "QCB_x"
trigger1 = statetype = A
trigger1 = ctrl
;Hakke Kuushou
[State -1, Hakke Kuushou]
type = ChangeState
value = 3000
triggerall = command = "Hakke Kuushou"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl
; Stand Kawarimi
[State -1, Kawarimi]
type = ChangeState
value = 700
triggerall = command = "a"
triggerall = power >= 100
triggerall = statetype = S || statetype = c
trigger1 = stateno = [5000,5110]
; Jump Kawarimi
[State -1, Kawarimi]
type = ChangeState
value = 710
triggerall = command = "a"
triggerall = power >= 100
triggerall = statetype = A
trigger1 = stateno = [5000,5110]
;64 Palms
[State -1, 64 Palms]
type = ChangeState
value = 270
triggerall = command = "64 Palms"
triggerall = power >= 2500
trigger1 = (statetype = s) && ctrl
;Life Recover
[State -1, Life Recover]
type = ChangeState
value = 260
triggerall = command = "Life Recover"
trigger1 = (statetype = s) && ctrl
;===========================================================================
;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
[State -1, Wall Jump]
type = ChangeState
value = 46
triggerall = backedgebodydist <= 1 && backedgebodydist > -1
triggerall = command = "holdfwd"
triggerall = var(0) = 0
triggerall = Pos Y < -30
trigger1 = StateType = A
trigger1 = Ctrl
trigger1 = Vel X <= 0
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "Run"
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
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Combo1
[State -1, Combo1]
type = ChangeState
value = 220
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210
trigger1 = time >= 5
;---------------------------------------------------------------------------
;Combo2
[State -1, Combo2]
type = ChangeState
value = 230
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 220
trigger1 = time >= 10
;---------------------------------------------------------------------------
; Hakke
[State -1, Hakke]
type = ChangeState
value = 240
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Down Kunai
[State -1, Down Kunai]
type = ChangeState
value = 400
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
; Uppercut
[State -1, Uppercut]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
; Soco Áereo
[State -1, Soco Áereo]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;-------------------------------------------------------------------------
; Air Shurikens
[State -1, Air Shurikens]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
