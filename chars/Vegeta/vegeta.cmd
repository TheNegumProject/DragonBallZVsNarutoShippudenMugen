;=====================================
;"Vegeta_DGZ", from Super Botuden 2 (edit)
;=====================================

;----------------------------------------
;Author: Mugenfan2005 D-GENERACION Z Team
;Foro:	http://caballerosz.metropoliglobal.com/phpBB2/index.php
;----------------------------------------

;===========================================================================

;===========================================================================

; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)

;-| Super Ataques de Ki |--------------------------------------------------------

[Command]
name =  "Big_Bang_attack"
command = ~F, D, F, a 
time = 20

[Command]
name =  "Final"
command = a+z
time = 20

[Command]
name =  "Big_Bang_attack_Air"
command = ~B, F, a 
time = 20

[Command]
name =  "Final_Flash"
command = ~F, D, F, b 
time = 20

[Command]
name =  "Explosion"
command = ~B, D, B, x
time = 20

[Command]
name =  "garlic_gun"
command = ~F, D, F, z
time = 20

;-| Ataques de Ki |------------------------------------------------------


[Command]
name = "kiensan"
command =  D, B, a

[Command]
name = "tower"
command = ~D, B, y


;--|Puños/Patadas |-----------------------------------------------------------

[Command]
name = "Rodillazo_x"
command = ~F, D, F, x

[Command]
name = "Diagonal_Kicking"
command = ~B, F, x

[Command]
name = "Elbow_Smash"
command = ~D, B, b

[Command]
name = "Rodillazo_y"
command = ~F, D, F, y 

[Command] 
name = "air_kick"
command =  ~D, F, x

[Command] 
name = "Pisoton"
command =  D, x


;--| Doble presion |-----------------------------------------------------------
[Command]
name = "FF"     ;Dash adelante
command = F, F
time = 10

[Command]
name = "BB"     ;Dash atras
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "fly" 
command = b+y 
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
name = "hijump"
command = ~$D, $U
time = 8


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
name = "ki_blast"
command = c

[Command]
name = "ki_blast_air"
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
name = "charge"
command = /a

[Command]
name = "charge 1"
command = /x

[Command]
name = "Agarrando"
command = /F,a

;-| Inteligencia artificial |--------------------------------------------------------------

IA;

[Command]
name = "CPU_1"
command = F, F, F, F, F, F
time = 1

[Command]
name = "CPU_2"
command = b, b, b, b, b, b
time = 1

[Command]
name = "CPU_3"
command = D, U, D, U, D, U 
time = 1

[Command]
name = "CPU_4"
command = a, b, b, a, a, b 
time = 1

[Command]
name = "CPU_5"
command = y, y, y, y, y, y 
time = 1

[Command]
name = "CPU_6"
command = x, a, x, a, x, a 
time = 1

[Command]
name = "CPU_7"
command = B, B, B, B, B, B
time = 1


[Command]
name = "CPU_8"
command = z, z, z, z, z 
time = 1

[Command]
name = "CPU_9"
command = c, c, c, c, c, c 
time = 1


[Command]
name = "CPU_10"
command = ~D, B, F, a
time = 1

[Command]
name = "CPU_11"
command = ~D, B, a
time = 1

[Command]
name = "CPU_12"
command = ~D, B, F, b
time = 1

[Command]
name = "CPU_13"
command = ~D, DB, B, y
time = 1

[Command]
name = "CPU_14"
command = ~D, DB, B, x
time = 1


[Command]
name = "CPU_15"
command = ~F, DF, F, y
time = 1

[Command]
name = "CPU_16"
command = ~D, F, y
time = 1
;---------------------------------------------------------------------------
; 2. State entry
;---------------------------------------------------------------------------


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;BASICS ( basicos)
;===========================================================================

;correr adelante
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;correr atras
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Dash aire adelante
[State -1, Fwd]
type = ChangeState
value = 60
trigger1 = command = "FF" 
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno = 50
trigger1 = Vel X >= 0
;---------------------------------------------------------------------------
;Dash aire atras
[State -1, Back]
type = ChangeState
value = 65
trigger1 = command = "BB" 
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno = 50
trigger1 = Vel X >= 0
;===========================================================================
;ESTADOS ESPECIALES  ( special states)
;===========================================================================

;Kung Fu Throw
; Agarrando
[State -1]
type = ChangeState
value = 800
trigger1 = command = "Agarrando"
trigger1 = statetype = S
trigger1 = stateno != 100
trigger1 = p2movetype != H
trigger1 = p2statetype != A
trigger1 = ctrl = 1
trigger1 = P2bodydist X <= 10

;------------------------------------------------------------------------

;Volar
[State -1]
type = ChangeState
value = 900 ; numero do state no cns
triggerall = command = "fly" ; comando lá de cima 
trigger1 = statetype = A ; pode ser feito no Ar
trigger1 = ctrl = 1 ; o seu char voa sem controle para cima 

; volar
[State -1]
type = ChangeState
value = 910 ; numero do state no cns
triggerall = command = "fly" ; comando lá de cima 
trigger1 = statetype != A ; nao precisa ser só no A por isto o !
trigger1 = ctrl = 1 ; seu char para no alto 
;-----------------------------------------------------------------
;Cargar ki
[State -1]
type = ChangeState
value = 830
triggerall = ctrl = 1
trigger1 = command = "charge"
trigger1 = command = "charge 1"
trigger1 = statetype = S
;===========================================================================
;Puños/Patadas
;===========================================================================

;Stand puño debil
[State -1, Stand puño debil]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command != "kiensan"
triggerall = command != "Big_Bang_attack"
triggerall = command != "Big_Bang_attack_Air"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 900

;---------------------------------------------------------------------------
;Stand puño fuerte
[State -1, Stand puño fuerte]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = command != "Final_Flash"
triggerall = command != "Elbow_Smash"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 900

;---------------------------------------------------------------------------
;Stand Rodillazo
[State -1, Stand Rodillazo]
type = ChangeState
value = 230
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command != "Explosion"
triggerall = command != "Rodillazo_x"
triggerall = command != "Diagonal_Kicking"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 900
trigger3 = (stateno = 200) && time > 7

;---------------------------------------------------------------------------
;Standing  patada fuerte
[State -1,Stand patada fuerte]
type = ChangeState
value = 240
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = command != "tower"
triggerall = command != "Rodillazo_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 900
trigger3 = (stateno = 200) && time > 5

-------------------------------------------------
; Saludo
[State -1, Saludo]
type =NULL; ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Puño debil agachado
[State -1, Puño debil agachado]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Puño fuerte agachado
[State -1, Puño fuerte agachado]
type = ChangeState
value = 400
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;patada debil agachado
[State -1, patada debil agachado]
type = ChangeState
value = 430
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
; Patada fuerte agachado
[State -1,  Patada fuerte agachado]
type = ChangeState
value = 430
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; puño debil saltando
[State -1, puño debil saltando]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Puño fuerte saltando
[State -1, Puño fuerte saltando]
type = ChangeState
value = 600
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;Patada  debil saltando
[State -1,Patada  debil saltando]
type = ChangeState
value = 630
triggerall = command = "x"
triggerall = command != "air_kick"
triggerall = command != "Pisoton"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Patada fuerte saltando
[State -1, Patada fuerte saltando]
type = ChangeState
value = 640
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;===========================================================================
;Especiales Puños/Patadas
;===========================================================================

;"Elbow Smash"
[State -1,Elbow Smash]
type = ChangeState
value = 1300
triggerall = command = "Elbow_Smash"
trigger1 = statetype = S
trigger1 = ctrl = 1
;----------------------------------
;"Diagonal_Kicking"
[State -1, Diagonal_Kicking]
type =  ChangeState
value =  1100
triggerall = command = "Diagonal_Kicking"
trigger1 = statetype = S 
trigger1 = ctrl = 1
;-------------------------------
; "air_kick"
[State -1, air_kick ]
type 	= ChangeState
value 	= 860
triggerall = Command =  "air_kick"
trigger1 = statetype = A
trigger1 = ctrl = 1
ignorehitpause = 1
;------------------------------
; "Pisoton"
[State -1, Pisoton]
type 	= ChangeState
value 	= 1400
triggerall = Command ="Pisoton"
trigger1 = statetype = A
trigger1 = ctrl = 1
ignorehitpause = 1
trigger2 = stateno = 900
;-------------------------------------
; "Rodillazo_x"
[State -1, Rodillazo_x]
type 	= ChangeState
value 	= 1700
triggerall = Command ="Rodillazo_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
ignorehitpause = 1
;---------------------------------------
; "Rodillazo_y"
[State -1, Rodillazo_y]
type 	= ChangeState
value 	= 1750
triggerall = Command ="Rodillazo_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
ignorehitpause = 1

;===========================================================================
;Ataques de Ki ( Ki atacks)
;===========================================================================

;"ki_blast"
[State -1, ki_blast]
type = ChangeState
value = 1000 
triggerall = command = "ki_blast"
triggerall = power >= 1
trigger1 = statetype = S 
trigger1 = ctrl = 1
;trigger2 = stateno = 900
;------------------------------------------
;"ki_blast_air"
[State -1, ki_blast_air]
type = ChangeState
value = 1010
triggerall = command = "ki_blast_air"
triggerall = power >= 1
trigger1 = statetype = A 
trigger1 = ctrl = 1
trigger2 = stateno = 900
;------------------------------------------
;"kiensan"
[State -1, ki_blast]
type = ChangeState
value = 1200 
triggerall = command = "kiensan"
triggerall = power >= 1
trigger1 = statetype = S 
trigger1 = ctrl = 1
;-------------------------------------------------

;"tower"
[State -1, ki_blast]
type = ChangeState
value = 1600 
triggerall = command = "tower"
triggerall = power >= 1
trigger1 = statetype = S 
trigger1 = ctrl = 1
;===========================================================================
;Super Ataques de Ki
;===========================================================================
;"Final_Flash"
[State -1,Final_Flash]
type = ChangeState
value = 4000
triggerall = command = "Final_Flash"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
;===========================================================================
;"Final"
[State -1,Final]
type = ChangeState
value = 6555
triggerall = command = "Final"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
;-----------------------------------------------
;"Garlic_gun"
[State -1,Garlic gun]
type = ChangeState
value = 2500
triggerall = command = "garlic_gun"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
;-----------------------------------------------
;"Big_Bang_attack"
[State -1,Big_Bang_attack]
type = ChangeState
value = 3000
triggerall = command = "Big_Bang_attack"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
;-----------------------------------------
;"Big_Bang_attack_Air"
[State -1,Big_Bang_attack_Air]
type = ChangeState
value = 2000
triggerall = command = "Big_Bang_attack_Air"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 900
;-------------------------------------------
;"Explosion"
[State -1,Explosion]
type = ChangeState
value = 4500
triggerall = command = "Explosion"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl = 1

;===========================================================================
;Inteligencia artificial
;===========================================================================

[State -1]
type = VarSet
trigger1 = command = "CPU_1"
trigger2 = command = "CPU_2"
trigger3 = command = "CPU_3"
trigger4 = command = "CPU_4"
trigger5 = command = "CPU_5"
trigger6 = command = "CPU_6"
trigger7 = command = "CPU_7"
trigger8 = command = "CPU_8"
trigger9 = command = "CPU_9"
trigger10 = command = "CPU_10"
trigger11 = command = "CPU_11"
trigger12 = command = "CPU_12"
trigger13 = command = "CPU_13"          
trigger14 = command = "CPU_14"
trigger15 = command = "CPU_15"
trigger16 = command = "CPU_16"
v = 59
value = 1

;===========================================================================
; A.I.Super Ataques de Ki
;===========================================================================
; A.I. "Explosion"
[State -1, AI Explosion]
type = ChangeState
triggerall = power >= 3000
trigger1 = Ctrl 
trigger1 = RoundState = 2
trigger1 = var(59) != 0 
trigger1 = p2bodydist X >= 40
trigger1 = Random <= 400
trigger1 = statetype = S 
trigger1 = p2statetype != C
value    = 4500

; A.I."Big_Bang_attack"
[State -1, AI Big_Bang_attack]
type = ChangeState
triggerall = power >= 1000
trigger1 = Ctrl 
trigger1 = RoundState = 2
trigger1 = var(59) != 0 
trigger1 = p2bodydist X >= 80
trigger1 = Random <= 400
trigger1 = statetype = S 
trigger1 = p2statetype != C
value    = 3000

; A.I."Final Flash"
[State -1, AI Final Flash]
type = ChangeState
triggerall = power >= 2000
trigger1 = Ctrl 
trigger1 = RoundState = 2
trigger1 = var(59) != 0 
trigger1 = p2bodydist X >= 80
trigger1 = Random <= 400
trigger1 = statetype = S 
trigger1 = p2statetype != C
value    = 4000


;===========================================================================
; A.I.Ataques de Ki ( Ki atacks)
;===========================================================================

; A.I. "ki_blast"
[State -1, AI ki_blast]
type = ChangeState
trigger1 = Ctrl 
trigger1 = RoundState = 2
trigger1 = var(59) != 0 
trigger1 = p2bodydist X >= 90
trigger1 = Random <= 400
trigger1 = statetype = S 
trigger1 = p2statetype != C
value    = 1000
;---------------------------------------
; A.I. "ki_blast_arriba"
[State -1, AI ki_blast hacia arriba]
type = ChangeState
trigger1 = Ctrl 
trigger1 = RoundState = 2
trigger1 = var(59) != 0 
trigger1= p2bodydist Y < -40
trigger1= p2bodydist x < -10
trigger1 = Random <= 1000
trigger1 = statetype = S 
trigger1 = p2statetype != C
value    = 1000

;----------------------------------
; A.I. "ki_blast_abajo"
[State -1, AI ki_blast hacia abajo]
type = ChangeState
trigger1 = Ctrl 
trigger1 = RoundState = 2
trigger1 = var(59) != 0 
trigger1= p2bodydist Y < 60
trigger1= p2bodydist x < -10
trigger1 = Random <= 800
trigger1 = statetype = A 
trigger1 = p2statetype != C
value    = 1010
;-------------------------------------

; A.I."kiensan"
[State -1, AI kiensan]
type = ChangeState
trigger1 = Ctrl 
trigger1 = RoundState = 2
trigger1 = var(59) != 0 
trigger1 = p2bodydist X >= 140
trigger1 = Random <= 400
trigger1 = statetype = S 
trigger1 = p2statetype != C
value    = 1200

;===========================================================================
; A.I. Especiales Puños/Patadas
;===========================================================================

; A.I."Diagonal_Kicking"
[State -1, AI Diagonal_Kicking]
type = ChangeState
trigger1 = Ctrl 
trigger1 = RoundState = 2
trigger1 = var(59) != 0 
trigger1 = p2bodydist X >= 20
trigger1 = Random <= 400
trigger1 = statetype = S 
trigger1 = p2statetype != C
value    = 1100
;----------------------------------------

; A.I. "Elbow Smash"
[State -1, AI Elbow Smash]
type = ChangeState
trigger1 = Ctrl 
trigger1 = RoundState = 2
trigger1 = var(59) != 0 
trigger1 = p2bodydist X >= 70
trigger1 = Random <= 400
trigger1 = statetype = S 
trigger1 = p2statetype != C
value    = 1300
;---------------------------------------------

; A.I. "Rodillazo"
[State -1, AI Rodillazo]
type = ChangeState
trigger1 = Ctrl 
trigger1 = RoundState = 2
trigger1 = var(59) != 0 
trigger1 = p2bodydist X >= 20
trigger1 = Random <= 400
trigger1 = statetype = S 
trigger1 = p2statetype != C
value    = 1700
