;==============================
;"Cell", from Super Boutuden 2
;==============================

;----------------------------------------
;Author:	The Necromancer
;		flowergirl@cutey.com
;----------------------------------------

;===========================================================================
;-| Notes |-----------------------------------------------------------------
;Nothing.

;-| Hyper Motions |--------------------------------------------------------

[Command]
name = "Makankosappou"
command = ~D, DF, F, D, DF, F, c
time = 25

[Command]
name = "Big Bang + Daichiretsuzan"
command = ~D, DB, B, D, DB, B, c
time = 25

[Command]
name = "Chou KameHameHa"
command = ~D, DB, B, F, c
time = 25

[Command]
name = "Torvellino Infernal"
command = ~D, DF, F, D, DF, F, z
time = 25

[Command]
name = "Giga cell"
command = ~D, DB, B, a+b
time = 25


;-| Special Ki Motions |------------------------------------------------------
[Command]
name = "Ki Barrier"
command = ~D, DB, B, c
time = 20


[Command]
name = "Jishin Ha"
command = ~D,F,D,F, x
time = 20

[Command]
name = "Taiyoken"
command = ~F,B,F, c
time = 20

[Command]
name = "Zanzouken"
command = z
time = 20

[Command]
name = "NanoAtake"
command = ~D, DF, F, c
time = 20

[Command]
name = "Soki Dan + Kienzan"
command = ~D, DB, B, b
time = 20

[Command]
name = "Soki Dan + Kienzan"
command = ~D, DB, B, a
time = 20


;-| Special Motions |------------------------------------------------------

[Command]
name = "Rushing Suki Combo"
command = ~20$B, F, x
time = 20

[Command]
name = "Rushing Suki Combo"
command = ~20$B, F, y
time = 20

[Command]
name = "Bakuretsu Kyaku devil"
command = ~20$B, F, a
time = 20

[Command]
name = "Bakuretsu Kyaku fuerte"
command = ~20$B, F, b
time = 20

[Command]
name = "Geshiki Naraku Otoshi Alto"
command = ~F, D, DF,F, D, DF, x
time = 20

[Command]
name = "Geshiki Naraku Otoshi Largo"
command = ~F, D, DF, y
time = 20

[Command]
name = "Earthquake chico"
command = ~D, F, D, F, a
time = 15

[Command]
name = "Earthquake grande"
command = ~D, F, D, F, b
time = 15


[Command]
name = "Absorver con la cola"
command = ~D,DB,B, x
time = 15


[Command]
name = "Absorver con la cola"
command = ~D,DB,B, y
time = 15

;-| Misc Motions |---------------------------------------------------------

[Command]
name = "EvadeFWD"
command = /F, b+y
time = 12

[Command]
name = "EvadeBWD"
command = /B, b+y
time = 12

[Command]
name = "Super Jump"
command = ~D, U
time = 10

[Command]
name = "Fire Balls"
command = c
time = 15

;-| Double Tap |-----------------------------------------------------------

[Command]
name = "FF"     
command = F, F
time = 12

[Command]
name = "DD"     
command = D, D
time = 12

[Command]
name = "BB"     
command = B, B
time = 12

[Command]
name = "UU"     
command = U, U
time = 12

[Command]
name = "Long Jump"
command = ~D, UF
time = 12

[Command]
name = "Long Jump"
command = ~D, UB
time = 12

[Command]
name = "Super Jump"
command = ~D, U
time = 10

[Command]
name = "fly"
command = b+y
time = 1

;-| 2/3 Button Combination |-----------------------------------------------

[Command]
name = "recovery"
command = x+y
time = 5

[Command]
name = "recovery"
command = y+z
time = 5

[Command]
name = "recovery"
command = x+z
time = 5

[Command]
name = "recovery"
command = x+y+z
time = 5

[Command]
name = "xy"
command = x+y
time = 5

[Command]
name = "yz"
command = y+z
time = 5

[Command]
name = "xz"
command = x+z
time = 5

[Command]
name = "xyz"
command = x+y+z
time = 5

[Command]
name = "ab"
command = a+b
time = 5

[Command]
name = "bc"
command = b+c
time = 5

[Command]
name = "ac"
command = a+c
time = 5

[Command]
name = "abc"
command = a+b+c
time = 5

[Command]
name = "xa"
command = x+a
time = 5

[Command]
name = "by"
command = b+y
time = 5

[Command]
name = "cz"
command = c+z
time = 5

;-| Dir + Button |---------------------------------------------------------

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

;-| Hold Dir |--------------------------------------------------------------

[Command]
name = "holdfwd"
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
name = "holdx" 
command = /y
time = 1

[Command]
name = "holdy" 
command = /x
time = 1

[Command]
name = "holdz" 
command = /z
time = 1

[Command]
name = "holda" 
command = /b
time = 1

[Command]
name = "holdb" 
command = /a
time = 1

[Command]
name = "holdc" 
command = /c
time = 1

[Command]
name = "holds" 
command = /s
time = 1


;---------- Comandos de la Inteligencia Artificial-----------------
;Comandos activadores
;[Command]
;name = "AI Prueba"
;command = b+c ; con el botón A+B activamos la AI
;time = 10

;[Command]
;name = "AI desactivado"
;command = y+z ; Con el boton B+C desactivamos la AI
;time = 10

;---------- comandos para que la PC active la IA -------------------------
[command]
name = "AI1"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = 1

[command]
name = "AI2"
command = b,c,b,c,b,c,b,c,b,c,b,c,c,b,c,b,c,b,c,b,c,b,c
time = 1

[command]
name = "AI3"
command = b,c,b,c,b,c,b,c,b,c,b,c,b,c,b,c,b,c,b,c,b
time = 1

[command]
name = "AI4"
command = a,b,a,b,a,b,a,b,a,b,a,b,a,b,a,b,a,b,a,b,a
time = 1

[command]
name = "AI5"
command = b,a,b,a,b,a,b,a,b,a,b,a,b,a,b,a,b,a,b,a,b
time = 1

[command]
name = "AI6"
command = b,b,b,b,z,b,z,b,z,z,z,b,b,b,z,b,z,b,z,z,z
time = 1

[command]
name = "AI7"
command = b,x,b,b,x,b,b,b,b,b,x,x,b,b,x,b,b,b,b,b,x
time = 1

[command]
name = "AI8"
command = x,y,b,b,b,y,b,b,b,b,y,b,y,b,b,b,y,b,b,b,b,y
time = 1

[command]
name = "AI9"
command = a,b,b,b,s,z,y,x,c,b,a,b,b,b,b,s,z,y,x,c,b,a
time = 1

[command]
name = "AI10"
command = z,b,x,y,b,b,c,b,b,b,a,z,b,x,y,b,b,c,b,b,b,a
time = 1

[command]
name = "AI11"
command = c,x,b,b,x,b,b,b,b,b,z,c,x,b,b,x,b,b,b,b,b,z
time = 1

[command]
name = "AI12"
command = x,y,b,s,b,y,b,b,b,b,y,y,b,s,b,y,b,b,b,b,y
time = 1

[command]
name = "AI13"
command = y,b,b,z,s,z,y,x,c,b,a,b,b,b,z,s,z,y,x,c,b,a
time = 1

[command]
name = "AI14"
command = z,b,x,y,b,b,c,b,b,c,a,z,b,x,y,b,b,c,b,b,c,a
time = 1





;---------------------------------------------------------------------------

[Statedef -1]

;===========================================================================
;-| Misc |------------------------------------------------------------------

;---------------------------------------------------------------------------

;Long Jump
[State -1: 		Super Jump]
type 			= ChangeState
value 		= 60
triggerall 		= (Command = "Super Jump")
trigger1		= (StateType = S) && (Ctrl)

;Long Jump
[State -1: 		Long Jump]
type 			= ChangeState
value 		= 40
triggerall 		= (Command = "Long Jump")
trigger1		= (StateType = S) && (Ctrl)

;---------------------------------------------------------------------------
;Run Fwd
[State -1: 		Run Fwd]
type 			= ChangeState
value 		= 100
triggerall 		= (Command = "FF") && (StateNo != [100,106])
trigger1		= (StateType = S) && (Ctrl)

;Run Fwd en el aire
[State -1: 		Run Fwd]
type 			= ChangeState
value 		        = 107
triggerall 		= (Command = "FF")
trigger1		= (StateType = A) && (Ctrl)

;---------------------------------------------------------------------------
;Run Back
[State -1: 		Run Back]
type 			= ChangeState
value 		= 105
triggerall 		= (Command = "BB") && (StateNo != [100,106])
trigger1		= (StateType = S) && (Ctrl)

;Run Back en el aire
[State -1: 		Run Back]
type 			= ChangeState
value 		        = 108
triggerall 		= (Command = "BB")
trigger1		= (StateType = A) && (Ctrl)


;---------------------------------------------------------------------------
;Evade Forward
[State -1: 		EvadeFWD]
type 			= ChangeState
value 		= 7010
triggerall 		= (Command = "EvadeFWD")
trigger1		= ((StateType = S) && (Ctrl)) || ((Power >= 500) && ((StateNo = 150) || (StateNo = 152)))

;---------------------------------------------------------------------------
;Evade Backward
[State -1: 		EvadeBWD]
type 			= ChangeState
value 		= 7020
triggerall 		= (Command = "EvadeBWD")
trigger1		= (StateType = S) && (Ctrl)

;---------------------------------------------------------------------------
;Ki Charge
[State -1: 		Ki Charge]
type 			= ChangeState
value 		= 7030
triggerall 		= (Command = "holdy") && (Command = "holdb") && (Command != "holdfwd") && (Command != "holdback") && (Var(2) <= 0)
trigger1		= (StateType = S) && (Ctrl)
triggerall = (power < 3000)
;===========================================================================
;-| Hyper |-----------------------------------------------------------------

;---------------------------------------------------------------------------
;Makankosappou
[State -1: 		Makankosappou]
type 			= ChangeState
value 		= 3000
triggerall = (Command = "Makankosappou") && (Power >= 1000)
trigger1 = ((StateType != A) && (Ctrl))
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 210) && (movecontact = 1)
trigger4 = (stateno = 221) && (movecontact = 1)
trigger5 = (stateno = 225) && (movecontact = 1)
trigger6 = (stateno = 230) && (movecontact = 1)
trigger7 = (stateno = 240)  && (movecontact = 1)
trigger8 = (stateno = 400)  && (movecontact = 1)
trigger9 = (stateno = 410)  && (movecontact = 1)
trigger10 = (stateno = 415)  && (movecontact = 1)
trigger11 = (stateno = 420)  && (movecontact = 1)
trigger12 = (stateno = 430)  && (movecontact = 1)
trigger13 = (stateno = 1012)  && (movecontact = 1)
trigger14 = (stateno = 1020)  ;&& (movecontact = 1)
trigger15 = (stateno = 1031)  && (movecontact = 1)
trigger16 = (stateno = 2000)  && (time > 10)
trigger17 = (stateno = 1050)  && (time > 10)
trigger18 = (stateno = 1055)  && (time > 10)

;---------------------------------------------------------------------------
;Big Bang Attack
[State -1: 		Big Bang Attack]
type 		= ChangeState
value 		= 3100
triggerall 	= (Command = "Big Bang + Daichiretsuzan") && (Power >= 1000)
trigger1	= ((StateType = A) && (Ctrl))
trigger2 = (stateno = 500) && (movecontact = 1)
trigger3 = (stateno = 510) && (movecontact = 1)
trigger4 = (stateno = 520) && (movecontact = 1)
trigger5 = Stateno = 991
trigger6 = (stateno = 1040) && (movecontact = 1)
trigger7 = (stateno = 1045) && (movecontact = 1)
;---------------------------------------------------------------------------
;Chou KameHameHa
[State -1: 		Chou KameHameHa]
type = ChangeState
value = 3200
triggerall = (Command = "Chou KameHameHa") && (Power >= 2000)
trigger1 = ((StateType != A) && (Ctrl))
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 210) && (movecontact = 1)
trigger4 = (stateno = 221) && (movecontact = 1)
trigger5 = (stateno = 225) && (movecontact = 1)
trigger6 = (stateno = 230) && (movecontact = 1)
trigger7 = (stateno = 240)  && (movecontact = 1)
trigger8 = (stateno = 400)  && (movecontact = 1)
trigger9 = (stateno = 410)  && (movecontact = 1)
trigger10 = (stateno = 415)  && (movecontact = 1)
trigger11 = (stateno = 420)  && (movecontact = 1)
trigger12 = (stateno = 430)  && (movecontact = 1)
trigger13 = (stateno = 1012)  && (movecontact = 1)
trigger14 = (stateno = 1020)  ;&& (movecontact = 1)
trigger15 = (stateno = 1031)  && (movecontact = 1)
trigger16 = (stateno = 2000)  && (time > 10)
trigger17 = (stateno = 1050)  && (time > 10)
trigger18 = (stateno = 1055)  && (time > 10)
;---------------------------------------------------------------------------
;Chou KameHameHa Aire
[State -1: 		Chou KameHameHa Aire]
type = ChangeState
value = 3300
triggerall = (Command = "Chou KameHameHa") && (Power >= 2000)
trigger1 = ((StateType = A) && (Ctrl))
trigger2 = (stateno = 500) && (movecontact = 1)
trigger3 = (stateno = 510) && (movecontact = 1)
trigger4 = (stateno = 520) && (movecontact = 1)
trigger5 = Stateno = 991
trigger6 = (stateno = 1040) && (movecontact = 1)
trigger7 = (stateno = 1045) && (movecontact = 1)

;---------------------------------------------------------------------------
;Giga Cell
[State -1: Giga Cell]
type = ChangeState
value = 3500
triggerall = (Command = "Giga cell") && (Power >= 2000)
trigger1 = ((StateType != A) && (Ctrl))
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 210) && (movecontact = 1)
trigger4 = (stateno = 221) && (movecontact = 1)
trigger5 = (stateno = 225) && (movecontact = 1)
trigger6 = (stateno = 230) && (movecontact = 1)
trigger7 = (stateno = 240)  && (movecontact = 1)
trigger8 = (stateno = 400)  && (movecontact = 1)
trigger9 = (stateno = 410)  && (movecontact = 1)
trigger10 = (stateno = 415)  && (movecontact = 1)
trigger11 = (stateno = 420)  && (movecontact = 1)
trigger12 = (stateno = 430)  && (movecontact = 1)
trigger13 = (stateno = 1012)  && (movecontact = 1)
trigger14 = (stateno = 1020)  ;&& (movecontact = 1)
trigger15 = (stateno = 1031)  && (movecontact = 1)
trigger16 = (stateno = 2000)  && (time > 10)
trigger17 = (stateno = 1050)  && (time > 10)
trigger18 = (stateno = 1055)  && (time > 10)

;---------------------------------------------------------------------------
;Torvellino Infernal
[State -1: Torvellino Infernal]
type = ChangeState
value = 3600
triggerall = (Command = "Torvellino Infernal") && (Power >= 2000)
triggerall = p3name = "Freezer 4th Form OS"
trigger1 = ((StateType != A) && (Ctrl))
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 210) && (movecontact = 1)
trigger4 = (stateno = 221) && (movecontact = 1)
trigger5 = (stateno = 225) && (movecontact = 1)
trigger6 = (stateno = 230) && (movecontact = 1)
trigger7 = (stateno = 240)  && (movecontact = 1)
trigger8 = (stateno = 400)  && (movecontact = 1)
trigger9 = (stateno = 410)  && (movecontact = 1)
trigger10 = (stateno = 415)  && (movecontact = 1)
trigger11 = (stateno = 420)  && (movecontact = 1)
trigger12 = (stateno = 430)  && (movecontact = 1)
trigger13 = (stateno = 1012)  && (movecontact = 1)
trigger14 = (stateno = 1020)  ;&& (movecontact = 1)
trigger15 = (stateno = 1031)  && (movecontact = 1)
trigger16 = (stateno = 2000)  && (time > 10)
trigger17 = (stateno = 1050)  && (time > 10)
trigger18 = (stateno = 1055)  && (time > 10)

;[State -1, Torvellino Infernal - Esclavo]
;type = ChangeState
;value = 3700
;triggerall = Stateno != 3700
;triggerall = partner, name = "Freezer 4th Form OS";statetype = S
;trigger1 = (stateno >= 0) && (Stateno < 3000) && (partner, numhelper(8237) = 1) && (partner, Life > 0)


;===========================================================================
;-| Speciales de Ki|---------------------------------------------------------------
;---------------------------------------------------------------------------
;Ki Barrier
[State -1: 		Ki Barrier]
type 			= ChangeState
value 		= 2000
triggerall 		= (Command = "Ki Barrier")
triggerall              = power >= 200
trigger1		= ((StateType = S) && (Ctrl))
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 210) && (movecontact = 1)
trigger4 = (stateno = 221) && (movecontact = 1)
trigger5 = (stateno = 225) && (movecontact = 1)
trigger6 = (stateno = 230) && (movecontact = 1)
trigger7 = (stateno = 240)  && (movecontact = 1)
trigger8 = (stateno = 400)  && (movecontact = 1)
trigger9 = (stateno = 410)  && (movecontact = 1)
trigger10 = (stateno = 415)  && (movecontact = 1)
trigger11 = (stateno = 420)  && (movecontact = 1)
trigger12 = (stateno = 430)  && (movecontact = 1)
trigger13 = (stateno = 1012)  && (movecontact = 1)
trigger14 = (stateno = 1020)  && (movecontact = 1)
trigger15 = (stateno = 1031)  && (movecontact = 1)
;---------------------------------------------------------------------------
;Jishin Ha
[State -1: 		Jishin Ha]
type 			= ChangeState
value 		        = 2100
triggerall 		= (Command = "Jishin Ha")
trigger1		= ((StateType = S) && (Ctrl))
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 210) && (movecontact = 1)
trigger4 = (stateno = 221) && (movecontact = 1)
trigger5 = (stateno = 225) && (movecontact = 1)
trigger6 = (stateno = 230) && (movecontact = 1)
trigger7 = (stateno = 240)  && (movecontact = 1)
trigger8 = (stateno = 400)  && (movecontact = 1)
trigger9 = (stateno = 410)  && (movecontact = 1)
trigger10 = (stateno = 415)  && (movecontact = 1)
trigger11 = (stateno = 420)  && (movecontact = 1)
trigger12 = (stateno = 430)  && (movecontact = 1)
trigger13 = (stateno = 1012)  && (movecontact = 1)
trigger14 = (stateno = 1020)  && (movecontact = 1)
trigger15 = (stateno = 1031)  && (movecontact = 1)

;----------------------------------------------------------------------------
;RR Shield
[State -1, RR Shield]
type = ChangeState
value = 2200
triggerall = power > 200
triggerall = command = "holdx"
triggerall = command = "holdy"
trigger1 = ((StateType = S) && (Ctrl))


;RR Shield en el aire
[State -1, RR Shield]
type = ChangeState
value = 2250
triggerall = command = "holdx"
triggerall = command = "holdy"
trigger1 = ((StateType = A) && (Ctrl))
trigger2 = Stateno = 991


;---------------------------------------------------------------------------
;Taiyoken
[State -1: 		Taiyoken]
type 			= ChangeState
value 		= 2300
triggerall 		= (Command = "Taiyoken")
trigger1		= ((StateType = S) && (Ctrl))
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 210) && (movecontact = 1)
trigger4 = (stateno = 221) && (movecontact = 1)
trigger5 = (stateno = 225) && (movecontact = 1)
trigger6 = (stateno = 230) && (movecontact = 1)
trigger7 = (stateno = 240)  && (movecontact = 1)
trigger8 = (stateno = 400)  && (movecontact = 1)
trigger9 = (stateno = 410)  && (movecontact = 1)
trigger10 = (stateno = 415)  && (movecontact = 1)
trigger11 = (stateno = 420)  && (movecontact = 1)
trigger12 = (stateno = 430)  && (movecontact = 1)
trigger13 = (stateno = 1012)  && (movecontact = 1)
trigger14 = (stateno = 1020)  && (movecontact = 1)
trigger15 = (stateno = 1031)  && (movecontact = 1)



;---------------------------------------------------------------------------
;Soki Dan + Kienzan
[State -1: 		Soki Dan + Kienzan]
type 			= ChangeState
value 		= 2400
triggerall 	= (Command = "Soki Dan + Kienzan")
trigger1	= ((StateType = S) && (Ctrl))
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 210) && (movecontact = 1)
trigger4 = (stateno = 221) && (movecontact = 1)
trigger5 = (stateno = 225) && (movecontact = 1)
trigger6 = (stateno = 230) && (movecontact = 1)
trigger7 = (stateno = 240)  && (movecontact = 1)
trigger8 = (stateno = 400)  && (movecontact = 1)
trigger9 = (stateno = 410)  && (movecontact = 1)
trigger10 = (stateno = 415)  && (movecontact = 1)
trigger11 = (stateno = 420)  && (movecontact = 1)
trigger12 = (stateno = 430)  && (movecontact = 1)
trigger13 = (stateno = 1012)  && (movecontact = 1)
trigger14 = (stateno = 1020)  && (movecontact = 1)
trigger15 = (stateno = 1031)  && (movecontact = 1)

;---------------------------------------------------------------------------
;Nano Atake
[State -1: 		NanoAtake]
type 			= ChangeState
value 		= ifelse(numhelper(2552) = 1, 2501, ifelse(numhelper(2551)=1,2502, ifelse(numhelper(2550)=1,2501+(random%2), 2500)))
triggerall 	= (Command = "NanoAtake")
triggerall      = Power >= 300
trigger1	= ((StateType = S) && (Ctrl))
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 210) && (movecontact = 1)
trigger4 = (stateno = 221) && (movecontact = 1)
trigger5 = (stateno = 225) && (movecontact = 1)
trigger6 = (stateno = 230) && (movecontact = 1)
trigger7 = (stateno = 240)  && (movecontact = 1)
trigger8 = (stateno = 400)  && (movecontact = 1)
trigger9 = (stateno = 410)  && (movecontact = 1)
trigger10 = (stateno = 415)  && (movecontact = 1)
trigger11 = (stateno = 420)  && (movecontact = 1)
trigger12 = (stateno = 430)  && (movecontact = 1)
trigger13 = (stateno = 1012)  && (movecontact = 1)
trigger14 = (stateno = 1020)  && (movecontact = 1)
trigger15 = (stateno = 1031)  && (movecontact = 1)


;---------------------------------------------------------------------------
;Zanzouken
[State -1: 		Zanzouken]
type 	= ChangeState
value 	= 1090
triggerall = (Command = "Zanzouken")
triggerall = (power > 200)
triggerall = alive = 1
trigger1 = ctrl = 1
trigger2 = stateno = 990 || stateno = 991 || stateno = 992 || stateno = 994 || stateno = 995
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
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 210) && (movecontact = 1)
trigger4 = (stateno = 221) && (movecontact = 1)
trigger5 = (stateno = 225) && (movecontact = 1)
trigger6 = (stateno = 230) && (movecontact = 1)
trigger7 = (stateno = 240)  && (movecontact = 1)
trigger8 = (stateno = 400)  && (movecontact = 1)
trigger9 = (stateno = 410)  && (movecontact = 1)
trigger10 = (stateno = 415)  && (movecontact = 1)
trigger11 = (stateno = 420)  && (movecontact = 1)
trigger12 = (stateno = 430)  && (movecontact = 1)
trigger13 = (stateno = 1012)  && (movecontact = 1)
trigger14 = (stateno = 1020)  && (movecontact = 1)
trigger15 = (stateno = 1031)  && (movecontact = 1)



;---------------------------------------------------------------------------

;Flying Start
[State -1]
type = ChangeState
value = 990
trigger1 = command = "fly"
trigger1 = ctrl = 1
trigger1 = statetype = s

;Flying Start
[State -1]
type = ChangeState
value = 990
trigger1 = command = "fly"
trigger1 = ctrl = 1
trigger1 = statetype = A
;===========================================================================
;-| Speciales de Ki|---------------------------------------------------------------

;---------------------------------------------------------------------------
;Rushing Suki Combo
[State -1: 		Rushing Suki Combo]
type 			= ChangeState
value 		= 1010
triggerall 		= (Command = "Rushing Suki Combo")
trigger1		= ((StateType != A) && (Ctrl))
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 210) && (movecontact = 1)
trigger4 = (stateno = 221) && (movecontact = 1)
trigger5 = (stateno = 225) && (movecontact = 1)
trigger6 = (stateno = 230) && (movecontact = 1)
trigger7 = (stateno = 240)  && (movecontact = 1)
trigger8 = (stateno = 400)  && (movecontact = 1)
trigger9 = (stateno = 410)  && (movecontact = 1)
trigger10 = (stateno = 415)  && (movecontact = 1)
trigger11 = (stateno = 420)  && (movecontact = 1)
trigger12 = (stateno = 430)  && (movecontact = 1)

;---------------------------------------------------------------------------
;Bakuretsu Kyaku devil
[State -1: 		Bakuretsu Kyaku]
type 			= ChangeState
value 		= 1020
triggerall 		= (Command = "Bakuretsu Kyaku devil")
trigger1		= ((StateType != A) && (Ctrl))
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 210) && (movecontact = 1)
trigger4 = (stateno = 221) && (movecontact = 1)
trigger5 = (stateno = 225) && (movecontact = 1)
trigger6 = (stateno = 230) && (movecontact = 1)
trigger7 = (stateno = 240)  && (movecontact = 1)
trigger8 = (stateno = 400)  && (movecontact = 1)
trigger9 = (stateno = 410)  && (movecontact = 1)
trigger10 = (stateno = 415)  && (movecontact = 1)
trigger11 = (stateno = 420)  && (movecontact = 1)
trigger12 = (stateno = 430)  && (movecontact = 1)
trigger13 = (stateno = 1050)  && (time > 10)
trigger14 = (stateno = 1055)  && (time > 10)

;Bakuretsu Kyaku fuerte
[State -1: 		Bakuretsu Kyaku]
type 			= ChangeState
value 		= 1030
triggerall 		= (Command = "Bakuretsu Kyaku fuerte")
trigger1		= ((StateType != A) && (Ctrl))
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 210) && (movecontact = 1)
trigger4 = (stateno = 221) && (movecontact = 1)
trigger5 = (stateno = 225) && (movecontact = 1)
trigger6 = (stateno = 230) && (movecontact = 1)
trigger7 = (stateno = 240)  && (movecontact = 1)
trigger8 = (stateno = 400)  && (movecontact = 1)
trigger9 = (stateno = 410)  && (movecontact = 1)
trigger10 = (stateno = 415)  && (movecontact = 1)
trigger11 = (stateno = 420)  && (movecontact = 1)
trigger12 = (stateno = 430)  && (movecontact = 1)
trigger13 = (stateno = 1050)  && (time > 10)
trigger14 = (stateno = 1055)  && (time > 10)

;---------------------------------------------------------------------------
;Geshiki Naraku Otoshi Alto
[State -1: 		Geshiki Naraku Otoshi Alto]
type 			= ChangeState
value 		= 1040
triggerall 		= (Command = "Geshiki Naraku Otoshi Alto")
trigger1		= ((StateType != A) && (Ctrl))
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 210) && (movecontact = 1)
trigger4 = (stateno = 221) && (movecontact = 1)
trigger5 = (stateno = 225) && (movecontact = 1)
trigger6 = (stateno = 230) && (movecontact = 1)
trigger7 = (stateno = 240)  && (movecontact = 1)
trigger8 = (stateno = 400)  && (movecontact = 1)
trigger9 = (stateno = 410)  && (movecontact = 1)
trigger10 = (stateno = 415)  && (movecontact = 1)
trigger11 = (stateno = 420)  && (movecontact = 1)
trigger12 = (stateno = 430)  && (movecontact = 1)
trigger13 = (stateno = 1012)  && (movecontact = 1)
trigger14 = (stateno = 1020)  && (movecontact = 1)
trigger15 = (stateno = 1031)  && (movecontact = 1)
trigger16 = (stateno = 2000)  && (time > 10)
trigger17 = (stateno = 1050)  && (time > 10)
trigger18 = (stateno = 1055)  && (time > 10)

;Geshiki Naraku Otoshi Largo
[State -1: 		Geshiki Naraku Otoshi Largo]
type 			= ChangeState
value 		= 1045
triggerall 		= (Command = "Geshiki Naraku Otoshi Largo")
trigger1		= ((StateType != A) && (Ctrl))
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 210) && (movecontact = 1)
trigger4 = (stateno = 221) && (movecontact = 1)
trigger5 = (stateno = 225) && (movecontact = 1)
trigger6 = (stateno = 230) && (movecontact = 1)
trigger7 = (stateno = 240)  && (movecontact = 1)
trigger8 = (stateno = 400)  && (movecontact = 1)
trigger9 = (stateno = 410)  && (movecontact = 1)
trigger10 = (stateno = 415)  && (movecontact = 1)
trigger11 = (stateno = 420)  && (movecontact = 1)
trigger12 = (stateno = 430)  && (movecontact = 1)
trigger13 = (stateno = 1012)  && (movecontact = 1)
trigger14 = (stateno = 1020)  && (movecontact = 1)
trigger15 = (stateno = 1031)  && (movecontact = 1)
trigger16 = (stateno = 2000)  && (time > 10)
trigger17 = (stateno = 1050)  && (time > 10)
trigger18 = (stateno = 1055)  && (time > 10)

;---------------------------------------------------------------------------
;Earthquake
[State -1: Earthquake chico]
type = ChangeState
value = 1050
triggerall = command = "Earthquake chico"
trigger1 = statetype!=A && (stateno=[0,40])
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 210) && (movecontact = 1)
trigger4 = (stateno = 221) && (movecontact = 1)
trigger5 = (stateno = 225) && (movecontact = 1)
trigger6 = (stateno = 230) && (movecontact = 1)
trigger7 = (stateno = 240)  && (movecontact = 1)
trigger8 = (stateno = 400)  && (movecontact = 1)
trigger9 = (stateno = 410)  && (movecontact = 1)
trigger10 = (stateno = 415)  && (movecontact = 1)
trigger11 = (stateno = 420)  && (movecontact = 1)
trigger12 = (stateno = 430)  && (movecontact = 1)
trigger13 = (stateno = 1012)  && (movecontact = 1)
trigger14 = (stateno = 1020)  && (movecontact = 1)
trigger15 = (stateno = 1031)  && (movecontact = 1)


;Earthquake
[State -1: Earthquake chico]
type = ChangeState
value = 1055
triggerall = command = "Earthquake grande"
trigger1 = statetype!=A && (stateno=[0,40])
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 210) && (movecontact = 1)
trigger4 = (stateno = 221) && (movecontact = 1)
trigger5 = (stateno = 225) && (movecontact = 1)
trigger6 = (stateno = 230) && (movecontact = 1)
trigger7 = (stateno = 240)  && (movecontact = 1)
trigger8 = (stateno = 400)  && (movecontact = 1)
trigger9 = (stateno = 410)  && (movecontact = 1)
trigger10 = (stateno = 415)  && (movecontact = 1)
trigger11 = (stateno = 420)  && (movecontact = 1)
trigger12 = (stateno = 430)  && (movecontact = 1)
trigger13 = (stateno = 1012)  && (movecontact = 1)
trigger14 = (stateno = 1020)  && (movecontact = 1)
trigger15 = (stateno = 1031)  && (movecontact = 1)

;Absorver con la cola
[State -1: Absorver con la cola]
type = ChangeState
value = 1080
triggerall = command = "Absorver con la cola"
trigger1 = ((StateType != A) && (Ctrl))
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 210) && (movecontact = 1)
trigger4 = (stateno = 221) && (movecontact = 1)
trigger5 = (stateno = 225) && (movecontact = 1)
trigger6 = (stateno = 230) && (movecontact = 1)
trigger7 = (stateno = 240)  && (movecontact = 1)
trigger8 = (stateno = 400)  && (movecontact = 1)
trigger9 = (stateno = 410)  && (movecontact = 1)
trigger10 = (stateno = 415)  && (movecontact = 1)
trigger11 = (stateno = 420)  && (movecontact = 1)
trigger12 = (stateno = 430)  && (movecontact = 1)
trigger13 = (stateno = 1012)  && (movecontact = 1)
trigger14 = (stateno = 1020)  && (movecontact = 1)
trigger15 = (stateno = 1031)  && (movecontact = 1)




;===========================================================================
;-| Basic |-----------------------------------------------------------------

;---------------------------------------------------------------------------
;Throw001
[State -1: 		Throw]
type 			= ChangeState
value 		= 800
triggerall 		= (Command = "xa") && ((Command = "holdback") || (Command = "holdfwd")) && (Var(2) <= 0)
trigger1		= (StateType = S) && (Ctrl) && (StateNo != [100,105])

;===============================================================================
[State -1, Stand Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;-------------------------------------------------------------------------------
[State -1, Stand Punch 2]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 210) && (movecontact = 1)

;-------------------------------------------------------------------------------
[State -1, Stand command Kick]
type = ChangeState
value = 220
triggerall = command = "a" && command = "holdback"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 210) && (movecontact = 1)
trigger4 = (stateno = 215) && (movecontact = 1)
trigger5 = (stateno = 225) && (movecontact = 1)
trigger6 = (stateno = 400) && (movecontact = 1)
trigger7 = (stateno = 410) && (movecontact = 1)
trigger8 = (stateno = 420) && (movecontact = 1)
trigger9 = (stateno = 430) && (movecontact = 1)

;-------------------------------------------------------------------------------
[State -1, Stand Kick]
type = ChangeState
value = 225
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 210) && (movecontact = 1)


;-------------------------------------------------------------------------------
[State -1, Standing Kick 2]
type = ChangeState
value = 230
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 210) && (movecontact = 1)
trigger4 = (stateno = 215) && (movecontact = 1)
trigger5 = (stateno = 225) && (movecontact = 1)
trigger6 = (stateno = 221) && (movecontact = 1)

;-------------------------------------------------------------------------------
[State -1, Crouch Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;-------------------------------------------------------------------------------
[State -1, Crouch Punch fuerte]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && (movecontact = 1)
trigger3 = (stateno = 420) && (movecontact = 1)

;-------------------------------------------------------------------------------
[State -1, Crouch Kick]
type = ChangeState
value = 420
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && (movecontact = 1)

;-------------------------------------------------------------------------------
[State -1, Crouch Kick 2]
type = ChangeState
value = 430
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && (movecontact = 1)
trigger3 = (stateno = 410) && (movecontact = 1)
trigger4 = (stateno = 420) && (movecontact = 1)
;---------------------------------------------------------------------------
;Jump Weak Punch
[State -1: 		JWP]
type 			= ChangeState
value 		= 600
triggerall 		= (Command = "x") && (Var(2) <= 0)
trigger1		= (StateType = A) && (Ctrl)

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1: 		JSP]
type 			= ChangeState
value 		= 610
triggerall 		= (Command = "y") && (Var(2) <= 0)
trigger1		= (StateType = A) && (Ctrl)

;---------------------------------------------------------------------------
;Jump Weak Kick
[State -1: 		JWK]
type 			= ChangeState
value 		= 620
triggerall 		= (Command = "a") && (Var(2) <= 0)
trigger1		= (StateType = A) && (Ctrl)

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1: 		JSK]
type 			= ChangeState
value 		= 630
triggerall 		= (Command = "b") && (Var(2) <= 0)
trigger1		= (StateType = A) && (Ctrl)
trigger2		= (StateNo = 620) && (MoveContact) && (AnimElemTime(1) = [5,12])

;---------------------------------------------------------------------------
;Fire Balls
[State -1, Fire Balls]
type = ChangeState
triggerall = power >= 50
triggerall = command = "c" && (Command != "holddown")
triggerall = Numhelper(2250) = 0
value = 900
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 220) && (movecontact = 1)
trigger6 = (stateno = 230)  && (movecontact = 1)
trigger7 = (stateno = 400)  && (movecontact = 1)
trigger8 = (stateno = 410)  && (movecontact = 1)
trigger9 = (stateno = 420)  && (movecontact = 1)
trigger10 = (stateno = 430)  && (movecontact = 1)
trigger11 = (stateno = 440) && (movecontact = 1)


;------------------------------------------------------------------------

;Fly Light Punch
[State -1, Fly Light Punch]
type = ChangeState
value = 500
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 530) && (movecontact = 1)
trigger3 = Stateno = 991
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
trigger4 = Stateno = 991
;---------------------------------------------------------------------------
;Fly Light Kick
[State -1, Fly Light Kick]
type = ChangeState
value = 520
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = 991

;---------------------------------------------------------------------------
;Fly Strong Kick
[State -1, Fly Strong Kick]
type = ChangeState
value = 530
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 500) && (movecontact = 1)
trigger3 = (stateno = 510) && (movecontact = 1)
trigger4 = (stateno = 520) && (movecontact = 1)
trigger5 = Stateno = 991
;---------------------------------------------------------------------------

;Fire Balls Aire
[State -1, Fire Balls Aire]
type = ChangeState
value = 920
triggerall = power >= 50
triggerall = command = "Fire Balls"
triggerall = Numhelper(2250) = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = 600) && (movecontact = 1)
trigger3 = (stateno = 610) && (movecontact = 1)
trigger4 = (stateno = 620) && (movecontact = 1)
trigger5 = (stateno = 630) && (movecontact = 1)
trigger6 = (stateno = 510)  && (movecontact = 1)
trigger7 = (stateno = 520)  && (movecontact = 1)
trigger8 = (stateno = 530)  && (movecontact = 1)
trigger9 = (stateno = 540)  && (movecontact = 1)
trigger10 = (stateno = 991)
trigger11 = (stateno = 1200) && (time >= 16)
trigger12 = (stateno = 1250) && (time >= 16)


;Super Jump
[State -1:      Super Jump]
type            = ChangeState
value      = 60
triggerall      = command = "Super Jump"
trigger1        = (statetype = S) && (ctrl)

;--------------------------------------------------------------------------------
; con esto la pc activa la IA

[State -2, AI activada por la PC]
type = VarSet
trigger1 = (command = "AI1") ||(Command = "AI2") || (Command = "AI3") || (Command = "AI4") || (Command = "AI5")
trigger2 = (Command = "AI6") || (Command = "AI7") || (Command = "AI8") || (Command = "AI9") || (Command = "AI10")
trigger4 = (Command = "AI11") || (Command = "AI12") || (Command = "AI13") || (Command = "AI14")
var(9) = 1


