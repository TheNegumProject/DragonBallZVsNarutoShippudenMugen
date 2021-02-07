;The CMD file.

;-| Button Remapping |-----------------------------------------------------

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------


;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------| Commandos de I.A |---------------------------------
;-| Special Motions |-----------------------------------------------------------

[command]
name = "Ganchazo"
command = D,B,y
time = 15

[command]
name = "espadazo"
command = ~D, DB, B, D, DB, B, z
time = 25

[command]
name = "espadazos"
command = ~D, DB, B, D, DB, B, c
time = 25

[command]
name = "kiblast"
command = ~D, DF, F, D, DF, F, z
time = 25

[Command]
name = "Masenko"
command = ~D, DB, B, D, DB, B, a
time = 25

[Command]
name = "Kame Ha"
command = ~D, DB, B, D, DB, B, x
time = 25

[Command]
name = "Puñetazo"
command = ~D,DF, F, a

[Command]
name = "PatadaNappa"
command = ~D,DF, F, x

[Command]
name = "Combo Con Teletransportacion"
command = ~D,DF, F, b

[Command]
name = "Combo Patadas"
command = ~D,DF, F, y

[Command]
name = "Patada"
command = ~D, DB, B, x





[Command]
name = "Gancho"
command = ~D, DB, B, a

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

[Command]
name = "FF_c"
command = F, F, c

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "DD"
command = D, D
time = 10

[Command]
name = "UU"
command = U, U
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "Fly"
command = a+b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "Super Jump"
command = ~D, U
time = 10

[Command]
name = "agarre"
command = /F,x
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
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "holZ"
command = /$z
time = 1

[Command]
name = "Charge"
command = /a

[Command]
name = "Charge1"
command = /x

[Command]
name = "Furioso"
command = /x

[Command]
name = "Furioso1"
command = /y


;-------------------------------------------------------------------------------
; 2. State entry
;--------------

[Statedef -1]

;Ganchazo
[State -1, Ganchazo]
type = ChangeState
value = 462
triggerall = command = "Ganchazo"
trigger1 = (statetype = s) && ctrl
Trigger1 = Power >1000


;espadazo
[State -1, espadazo]
type = ChangeState
value = 555
triggerall = command = "espadazo"
trigger1 = (statetype = s) && ctrl
Trigger1 = Power >1000


;espadazos
[State -1, espadazos]
type = ChangeState
value = 888
triggerall = command = "espadazos"
trigger1 = (statetype = s) && ctrl
Trigger1 = Power >1000



;------------------------------------------------------------------------------

;kiblast
[State -1, kiblast]
type = ChangeState
value = 777
triggerall = command = "kiblast"
trigger1 = (statetype = s) && ctrl
Trigger1 = Power >1000



;===============================================================================
;-------------------------------------------------------------------------------

[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact
var(1) = 1

;===============================================================================
;-------------------------------------------------------------------------------
; Kame-Ha
[State -1, Kame Ha]
type = ChangeState
value = 4000
triggerall = command = "Kame Ha" && (Power >= 1500)
trigger1 = statetype = S && ctrl
;-------------------------------------------------------------------------------
;Masenko
[State -1, Masenko]
type = ChangeState
value = 3000
triggerall = (command = "Masenko") &&  (Power >= 1500)
trigger1 = statetype = S && ctrl

;-------------------------------------------------------------------------------
;Puñetazo
[State -1,Puñetazo]
type = ChangeState
value = 660
triggerall = (command = "Puñetazo") && (Power >= 250)
trigger1 = statetype = S && ctrl

;-------------------------------------------------------------------------------
;Patada a Nappa
[State -1,Patada Nappa]
type = ChangeState
value = 670
triggerall = (command = "PatadaNappa") && (Power >= 250)
trigger1 = statetype = S && ctrl
;-------------------------------------------------------------------------------
;Combo Con Teletransportacion
[State -1,]
type = ChangeState
value = 700
triggerall = (command = "Combo Con Teletransportacion") && (Power >= 550)
trigger1 = statetype = S && ctrl
;-------------------------------------------------------------------------------
;Combo Patadas
[State -1,]
type = ChangeState
value = 540
triggerall = (command = "Combo Patadas") && (Power >= 550)
trigger1 = statetype = S && ctrl
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;Puño B
[State -1, Gancho]
type = ChangeState
value = 460
triggerall = command = "Gancho"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 640) && (movecontact = 1) && Statetype = A
;-------------------------------------------------------------------------------
; Patada A
[State -1, Patada A]
type = ChangeState
value = 240
triggerall = command = "Patada"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 640) && (movecontact = 1) && Statetype = A
trigger3 = (stateno = 438) && (movecontact = 1) && Statetype = A
;-------------------------------------------------------------------------------
;Super Jump
[State -1, Super Jump]
type            = ChangeState
value      = 60
triggerall      = command = "Super Jump"
trigger1        = (statetype = S) && (ctrl)
;-------------------------------------------------------------------------------
;Correr
[State -1, Correr]
type = ChangeState
value = 100
triggerall = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------------------------------------------------------
;Retroceder
[State -1, Retroceder]
type = ChangeState
value = 105
triggerall = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------------------------------------------------------
;Saludo
[State -1, Saludo]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;-------------------------------------------------------------------------------
;Puño Derecho
[State -1, Puño Derecho]
type = ChangeState
value = 200
triggerall = (command = "a") && (command != "holddown")
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 210) && (movecontact = 1)
trigger2 = (stateno = 220) && (movecontact = 1)
trigger2 = (stateno = 230) && (movecontact = 1)
;-------------------------------------------------------------------------------
;Puño Izquierdo
[State -1, Puño Izquierdo]
type = ChangeState
value = 210
triggerall = (command = "b") && (command != "holddown")
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 220) && (movecontact = 1)
trigger2 = (stateno = 230) && (movecontact = 1)
;-------------------------------------------------------------------------------
;Patada Derecha
[State -1, Patada Derecha]
type = ChangeState
value = 220
triggerall = (command = "x") && (command != "holddown")
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 230) && (movecontact = 1)
;-------------------------------------------------------------------------------
;Patada Izquierda
[State -1, Patada Izquierda]
type = ChangeState
value = 230
triggerall = (command = "y") && (command != "holddown")
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------------------------------------------------------
;Puño Agachado Derecho
[State -1, Puño Agachado Derecho]
type = ChangeState
value = 400
triggerall = (command = "a") && (command = "holddown")
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 410) && (movecontact = 1)
trigger3 = (stateno = 420) && (movecontact = 1)
trigger4 = (stateno = 430) && (movecontact = 1)
;-------------------------------------------------------------------------------
;Puño Agachado Izquierdo
[State -1, Puño Agachado Izquierdo]
type = ChangeState
value = 410
triggerall = (command = "b") && (command = "holddown")
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 420) && (movecontact = 1)
trigger3 = (stateno = 430) && (movecontact = 1)
;-------------------------------------------------------------------------------
; Patada Agachado
[State -1, Patada Agachado]
type = ChangeState
value = 420
triggerall = (command = "x") && (command = "holddown")
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 430) && (movecontact = 1)
;-------------------------------------------------------------------------------
;Patada Agachado 2
[State -1, Patada Agachado 2]
type = ChangeState
value = 430
triggerall = (command = "y") && (command = "holddown")
trigger1 = statetype = C
trigger1 = ctrl
;-------------------------------------------------------------------------------
;Puño Aereo
[State -1, Puño Aereo]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A || stateno = 1100
trigger1 = ctrl
trigger3 = stateno = 1350 ;Air blocking
;-------------------------------------------------------------------------------
;Patada Aerea
[State -1, Patada Aerea]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger3 = stateno = 1350 ;Air blocking
;-------------------------------------------------------------------------------
;Patada Aerea 2
[State -1, Patada Aerea 2]
type = ChangeState
value = 620
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking
trigger4 = (stateno = 630) && (movecontact = 1)
;-------------------------------------------------------------------------------
; Patada Aerea 3
[State -1, Patada Aerea 3]
type = ChangeState
value = 630
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger3 = stateno = 1350 ;Air blocking
;-------------------------------------------------------------------------------
;FireBall
[State -1, Fireball]
type = ChangeState
value = 250
triggerall = (command = "c") && (Power >= 200)
trigger1 = statetype != A
trigger1 = ctrl
;-------------------------------------------------------------------------------
;Cargar ki
[State -1, Cargar Ki]
type = ChangeState
value = 1000
triggerall = (command = "Charge") && (command = "Charge1") && (Power < 2950)
trigger1 = (ctrl = 1) && (statetype = S)
;------------------------------------------------------------------------------
[State -1, Furioso]
type = ChangeState
value = 6000
triggerall = (command = "Furioso") && (command = "Furioso1") && power >= 2000
triggerall = var(18) = 0
triggerall = win = 0
triggerall = lose = 0
trigger1 = (ctrl = 1) && (statetype = S)

