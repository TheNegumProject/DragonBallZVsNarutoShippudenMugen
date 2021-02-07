;==============================
;"Goku", from Super Boutuden 2
;==============================

;----------------------------------------
;Author:	The Necromancer
;		flowergirl@cutey.com
;----------------------------------------

;===========================================================================
;-| Notes |-----------------------------------------------------------------
;Nothing.

;-| Super Motions |--------------------------------------------------------


[Command]
name = "Genkidama"
command = ~D, DF, F, D, DF, F, x+y
time = 25

[Command]
name = "Pu del Dragon"
command = ~D, DF, F, D, DF, F, a+b
time = 30

[Command]
name = "Chou KameHameHa"
command = ~D, DB, B, F, c
time = 30

[Command]
name = "KameHameHa"
command = ~D, DF, F, D, DF, F, c
time = 25


;-| Special Ki Motions |------------------------------------------------------
[Command]
name = "Taiyoken"
command = ~F, B, F, c
time = 20

[Command]
name = "Teleport Adelante"
command = ~B, D, DB, x
time = 20

[Command]
name = "Teleport Atras"
command = ~B, D, DB, y
time = 20

[Command]
name = "Torpedos"
command = ~D, DB, B, c
time = 20

[Command]
name = "Torpedos Lanzamiento"
command = ~D, DF, F, c
time = 20

[Command]
name ="Estupidoo!!"
command = ~F, D, DF, c
time = 20

[Command]
name = "Me estorban!!"
command = ~15$D, $U, c
time = 25


;-| Special Motions |------------------------------------------------------

[Command]
name = "Agarre Giratorio 1"
command = ~F, DF, D, DB, B, x
time = 20

[Command]
name = "Agarre Giratorio 2"
command = ~F, DF, D, DB, B, y
time = 20

[Command]
name = "Tetsuzan Kou"
command = ~D, DF, F, x
time = 20

[Command]
name = "Zesshou Hohou"
command = ~D, DF, F, y
time = 20

[Command]
name = "Rodillazo Devil"
command = ~F, D, DF, a
time = 20


[Command]
name = "Rodillazo Fuerte"
command = ~F, D, DF, b
time = 20


[Command]
name = "Abise Geri Devil"
command = ~D, DB, B, a
time = 20

[Command]
name = "Abise Geri Fuerte"
command = ~D, DB, B, b
time = 20

[Command]
name = "Raigeki Shuu Devil"
command = ~F, DF, D, a
time = 20

[Command]
name = "Raigeki Shuu Fuerte"
command = ~F, DF, D, b
time = 20


[Command]
name = "Combo Patadas Devil"
command = ~D, DF, F, a
time = 20

[Command]
name = "Combo Patadas Fuerte"
command = ~D, DF, F, b
time = 20


;-| Misc Motions |---------------------------------------------------------

;-| Comands  |-----------------------------------------------------------

[Command]
name = "Fire Balls"
command = c
time = 15

[Command]
name = "Zanzouken"
command = z
time = 20

[Command]
name = "Super Jump"
command = ~D, U
time = 10

[Command]
name = "fly"
command = y+b
time = 1

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
name = "UU"
command = U, U
time = 10

[Command]
name = "DD"
command = D, D
time = 10

[Command]
name = "Long Jump"
command = ~D, UF
time = 12

[Command]
name = "Long Jump"
command = ~D, UB
time = 12

;-| 2/3 Button Combination |-----------------------------------------------

[Command]
name = "charge"
command = /a
time = 1

[Command]
name = "charge 1"
command = /b
time = 1

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
command = /x
time = 1

[Command]
name = "holdy" 
command = /y
time = 1

[Command]
name = "holdz" 
command = /z
time = 1

[Command]
name = "holda" 
command = /a
time = 1

[Command]
name = "holdb" 
command = /b
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
; Comandos activadores
;[Command]
;name = "AI Prueba"
;command = b+c ; con el bot A+B activamos la AI
;time = 10

;[Command]
;name = "AI desactivado"
;command = y+z ; Con el boton B+C desactivamos la AI
;time = 10

;---------- comandos para que la PC active la IA -------------------------
[command]
name = "AI1"
command = b,b,b,b,b,b,b,b,b,b,b
time = 1

[command]
name = "AI2"
command = b,c,b,c,b,c,b,c,b,c,b,c
time = 1

[command]
name = "AI3"
command = b,c,b,c,b,c,b,c,b,c,b
time = 1

[command]
name = "AI4"
command = a,b,a,b,a,b,a,b,a,b,a
time = 1

[command]
name = "AI5"
command = b,a,b,a,b,a,b,a,b,a,b
time = 1

[command]
name = "AI6"
command = b,b,b,b,z,b,z,b,z,z,z
time = 1

[command]
name = "AI7"
command = b,x,b,b,x,b,b,b,b,b,x
time = 1

[command]
name = "AI8"
command = b,y,b,b,b,y,b,b,b,b,y
time = 1

[command]
name = "AI9"
command = b,b,b,b,s,z,y,x,c,b,a
time = 1

[command]
name = "AI10"
command = z,b,x,y,b,b,c,b,b,b,a
time = 1

[command]
name = "AI11"
command = b,x,b,b,x,b,b,b,b,b,z
time = 1

[command]
name = "AI12"
command = b,y,b,s,b,y,b,b,b,b,y
time = 1

[command]
name = "AI13"
command = b,b,b,z,s,z,y,x,c,b,a
time = 1

[command]
name = "AI14"
command = z,b,x,y,b,b,c,b,b,c,a
time = 1

;---------------------------------------------------------------------------

[Statedef -1]

;===========================================================================
;-| Misc |------------------------------------------------------------------

;---------------------------------------------------------------------------
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
;Ki Charge
[State -1: 		Ki Charge]
type 			= ChangeState
value 		= 7030
triggerall = (power < 3000)
trigger1 = command = "charge" && time > 5
trigger1 = command = "charge 1" && time > 5
trigger1		= (StateType = S) && (Ctrl)

;===========================================================================
;-| Hyper |-----------------------------------------------------------------
;---------------------------------------------------------------------------
;KameHameHa
[State -1: 		KameHameHa]
type 			= ChangeState
value 		        = 3000
triggerall 		= (Command = "KameHameHa") && (Power >= 1000)
trigger1		= ((StateType = S) && (Ctrl)) || (Var(3) > 0)
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
trigger12 = (stateno = 1010) && (Time >= 13)
trigger13 = (stateno = 1550) && (Time >= 13)
;---------------------------------------------------------------------------
;KameHameHa Aire
[State -1: 		KameHameHa Aire]
type 			= ChangeState
value 		        = 3100
triggerall 		= (Command = "KameHameHa") && (Power >= 1000)
trigger1		= ((StateType = A) && (Ctrl)) || (Var(3) > 0)
trigger2 = (stateno = 600) && (movecontact = 1)
trigger3 = (stateno = 610) && (movecontact = 1)
trigger4 = (stateno = 620) && (movecontact = 1)
trigger5 = (stateno = 630) && (movecontact = 1)
trigger6 = (stateno = 510)  && (movecontact = 1)
trigger7 = (stateno = 520)  && (movecontact = 1)
trigger8 = (stateno = 530)  && (movecontact = 1)
trigger9 = (stateno = 540)  && (movecontact = 1)
trigger10 = (stateno = 991)
trigger11 = (stateno = 920) && (time >= 15)
trigger12 = (stateno = 921) && (time >= 15)
trigger13 = (stateno = 922) && (time >= 15)
trigger14 = (stateno = 1460)

;---------------------------------------------------------------------------
;Chou KameHameHa
[State -1: 		Chou KameHameHa]
type 			= ChangeState
value 		        = 3500
triggerall 		= (Command = "Chou KameHameHa") && (Power >= 2000)
trigger1		= ((StateType = S) && (Ctrl)) || (Var(3) > 0)
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
trigger12 = (stateno = 1010) && (Time >= 13)
trigger13 = (stateno = 1550) && (Time >= 13)

;---------------------------------------------------------------------------
;Pu del Dragon
[State -1: 		Pu del Dragon]
type 			= ChangeState
value 		        = 3800
triggerall 		= (Command = "Pu del Dragon") && (Power >= 3000)
trigger1		= ((StateType = S) && (Ctrl)) || (Var(3) > 0)
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
trigger12 = (stateno = 1010) && (Time >= 13)
trigger13 = (stateno = 1550) && (Time >= 13)

;Genkidama
[State -1: 		Genkidama]
type 			= ChangeState
value 		        = 3900
triggerall 		= (Command = "Genkidama") && (Power >= 1000)
trigger1		= ((StateType = A) && (Ctrl)) || (Var(3) > 0)
trigger2 = (stateno = 600) && (movecontact = 1)
trigger3 = (stateno = 610) && (movecontact = 1)
trigger4 = (stateno = 620) && (movecontact = 1)
trigger5 = (stateno = 630) && (movecontact = 1)
trigger6 = (stateno = 510)  && (movecontact = 1)
trigger7 = (stateno = 520)  && (movecontact = 1)
trigger8 = (stateno = 530)  && (movecontact = 1)
trigger9 = (stateno = 540)  && (movecontact = 1)
trigger10 = (stateno = 991)
trigger11 = (stateno = 920) && (time >= 15)
trigger12 = (stateno = 921) && (time >= 15)
trigger13 = (stateno = 922) && (time >= 15)
trigger14 = (stateno = 1460)




;===========================================================================
;-| Special Ki |---------------------------------------------------------------
;---------------------------------------------------------------------------
;Taiyoken
[State -1: 	Taiyoken]
type 		= ChangeState
value 		= 2000
triggerall 	= (Command = "Taiyoken")
triggerall 	= numexplod(2052) = 0
triggerall      = power >= 400
trigger1	= ((StateType = S) && (Ctrl)) || (StateNo = 40) || (Var(3) = 1)

;Teleport Adelante
[State -1, Teleport Adelante]
type = ChangeState
value = 2100
triggerall = power >= 400
triggerall = command = "Teleport Adelante"
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

;Teleport Atras
[State -1, Teleport Atras]
type = ChangeState
value = 2150
triggerall = power >= 400
triggerall = command = "Teleport Atras"
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

;Torpedos
[State -1, Torpedos]
type = ChangeState
triggerall = power >= 200
triggerall = command = "Torpedos"
triggerall = Numhelper(2250) < 4
value = ifelse(Numhelper(2250)=3,2203,ifelse(Numhelper(2250)=2,2202,ifelse(Numhelper(2250)=1, 2201, 2200)))
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

;Torpedos en el aire
[State -1, Torpedos]
type = ChangeState
triggerall = power >= 200
triggerall = command = "Torpedos"
triggerall = Numhelper(2250) < 4
value = 2300
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



;Estupidoo!!
[State -1, Estupidoo!!]
type = ChangeState
triggerall = power >= 600
triggerall = command = "Estupidoo!!"
value = 2400
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


;No molesten!!
[State -1, No molesten!!]
type = ChangeState
value = 2500
triggerall = power >= 300
triggerall = command = "Me estorban!!"
trigger1 = StateType = S || StateType = C
trigger1 = Ctrl
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
trigger12 = StateNo = 40


;Fire Balls
[State -1, Fire Balls]
type = ChangeState
triggerall = power >= 50
triggerall = command = "Fire Balls" && (Command != "holddown")
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
trigger20 = (stateno = 200) && (movecontact = 1)
trigger21 = (stateno = 201) && (movecontact = 1)
trigger22 = (stateno = 210) && (movecontact = 1)
trigger23 = (stateno = 220) && (movecontact = 1)
trigger24 = (stateno = 230)  && (movecontact = 1)
trigger25 = (stateno = 400)  && (movecontact = 1)
trigger26 = (stateno = 410)  && (movecontact = 1)
trigger27 = (stateno = 420)  && (movecontact = 1)
trigger28 = (stateno = 430)  && (movecontact = 1)
trigger29 = (stateno = 440) && (movecontact = 1)
trigger30 = (stateno = 1200) && (time >= 16)
trigger31 = (stateno = 1250) && (time >= 16)



;===========================================================================
;-| Special |---------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Zesshou Hohou - Codazo
[State -1: 	Zesshou Hohou]
type 		= ChangeState
value 		= 1000
triggerall 	= (Command = "Zesshou Hohou")
trigger1	= ((StateType = S) && (Ctrl)) || (Var(3) = 1)
trigger1	= ((StateType != A) && (Ctrl)) || (Var(3) = 1)
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



;---------------------------------------------------------------------------
;Tetsuzan Kou - corrida y pi
[State -1: 	Tetsuzan Kou]
type 		= ChangeState
value 		= 1010
triggerall 	= (Command = "Tetsuzan Kou")
trigger1	= ((StateType != A) && (Ctrl)) || (Var(3) = 1)
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
trigger12 = (stateno = 1000) && (movecontact = 1)
trigger13 = (stateno = 1500) && (Time >= 13)


;---------------------------------------------------------------------------
;Rodillazo Devil
[State -1: 		Rodillazo Devil]
type 		= ChangeState
value 		= 1200
triggerall 	= (Command = "Rodillazo Devil")
trigger1	= ((StateType != A) && (Ctrl)) || (Var(3) = 1)
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
trigger12 = (stateno = 1010) && (Time >= 13)

;Rodillazo Fuerte
[State -1: 		Rodillazo Fuerte]
type 		= ChangeState
value 		= 1250
triggerall 	= (Command = "Rodillazo Fuerte")
trigger1	= ((StateType != A) && (Ctrl)) || (Var(3) = 1)
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
trigger12 = (stateno = 1010) && (Time >= 13)

;---------------------------------------------------------------------------
;Abise Geri Devil
[State -1: 		Abise Geri Devil]
type 		= ChangeState
value 		= 1300
triggerall 	= (Command = "Abise Geri Devil")
trigger1	= ((StateType != A) && (Ctrl)) || (Var(3) = 1)
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
trigger12 = (stateno = 1000) && (movecontact = 1)
trigger13 = (stateno = 1010) && (Time >= 13)
trigger14 = (stateno = 1500) && (Time >= 13)
trigger15 = (stateno = 1550) && (Time >= 13)


;Abise Geri Devil  - Aire
[State -1: 		Abise Geri Devil]
type 		= ChangeState
value 		= 1300
triggerall 	= (Command = "Abise Geri Devil")
trigger1	= (StateType = A) && (Ctrl)
trigger2 = (stateno = 600) && (movecontact = 1)
trigger3 = (stateno = 610) && (movecontact = 1)
trigger4 = (stateno = 620) && (movecontact = 1)
trigger5 = (stateno = 630) && (movecontact = 1)
trigger6 = (stateno = 510) && (movecontact = 1)
trigger7 = (stateno = 520) && (movecontact = 1)
trigger8 = (stateno = 530) && (movecontact = 1)
trigger9 = (stateno = 540) && (movecontact = 1)
trigger10 = (stateno = 991)
trigger11 = (stateno = 920) && (time >= 15)
trigger12 = (stateno = 921) && (time >= 15)
trigger13 = (stateno = 922) && (time >= 15)
trigger14 = (stateno = 1200) && (time >= 16)
trigger15 = (stateno = 1250) && (time >= 16)


;Abise Geri Fuerte
[State -1: 		Abise Geri Fuerte]
type 		= ChangeState
value 		= 1350
triggerall 	= (Command = "Abise Geri Fuerte")
trigger1	= ((StateType != A) && (Ctrl))
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
trigger12 = (stateno = 1000) && (movecontact = 1)
trigger13 = (stateno = 1010) && (Time >= 13)
trigger14 = (stateno = 1500) && (Time >= 13)
trigger15 = (stateno = 1550) && (Time >= 13)


;Abise Geri Fuerte  - Aire
[State -1: 		Abise Geri Fuerte]
type 		= ChangeState
value 		= 1350
triggerall 	= (Command = "Abise Geri Fuerte")
trigger1	= (StateType = A) && (Ctrl)
trigger2 = (stateno = 600) && (movecontact = 1)
trigger3 = (stateno = 610) && (movecontact = 1)
trigger4 = (stateno = 620) && (movecontact = 1)
trigger5 = (stateno = 630) && (movecontact = 1)
trigger6 = (stateno = 510) && (movecontact = 1)
trigger7 = (stateno = 520) && (movecontact = 1)
trigger8 = (stateno = 530) && (movecontact = 1)
trigger9 = (stateno = 540) && (movecontact = 1)
trigger10 = (stateno = 991)
trigger11 = (stateno = 920) && (time >= 15)
trigger12 = (stateno = 921) && (time >= 15)
trigger13 = (stateno = 922) && (time >= 15)
trigger14 = (stateno = 1200) && (time >= 16)
trigger15 = (stateno = 1250) && (time >= 16)

;---------------------------------------------------------------------------
;Raigeki Shuu Devil
[State -1: 		Raigeki Shuu Devil]
type 			= ChangeState
value 		        = 1400
triggerall 		= (Command = "Raigeki Shuu Devil")
trigger1		= (StateType = A) && (Ctrl)
trigger2 = (stateno = 600) && (movecontact = 1)
trigger3 = (stateno = 610) && (movecontact = 1)
trigger4 = (stateno = 620) && (movecontact = 1)
trigger5 = (stateno = 630) && (movecontact = 1)
trigger6 = (stateno = 510) && (movecontact = 1)
trigger7 = (stateno = 520) && (movecontact = 1)
trigger8 = (stateno = 530) && (movecontact = 1)
trigger9 = (stateno = 540) && (movecontact = 1)
trigger10 = (stateno = 991)
trigger11 = (stateno = 920) && (time >= 15)
trigger12 = (stateno = 921) && (time >= 15)
trigger13 = (stateno = 922) && (time >= 15)
trigger14 = (stateno = 1200) && (time >= 16)
trigger15 = (stateno = 1250) && (time >= 16)


;Raigeki Shuu Fuerte
[State -1: 		Raigeki Shuu Fuerte]
type 			= ChangeState
value 	         	= 1450
triggerall 		= (Command = "Raigeki Shuu Fuerte")
trigger1		= (StateType = A) && (Ctrl)
trigger2 = (stateno = 600) && (movecontact = 1)
trigger3 = (stateno = 610) && (movecontact = 1)
trigger4 = (stateno = 620) && (movecontact = 1)
trigger5 = (stateno = 630) && (movecontact = 1)
trigger6 = (stateno = 510) && (movecontact = 1)
trigger7 = (stateno = 520) && (movecontact = 1)
trigger8 = (stateno = 530) && (movecontact = 1)
trigger9 = (stateno = 540) && (movecontact = 1)
trigger10 = (stateno = 991)
trigger11 = (stateno = 920) && (time >= 15)
trigger12 = (stateno = 921) && (time >= 15)
trigger13 = (stateno = 922) && (time >= 15)
trigger14 = (stateno = 1200) && (time >= 16)
trigger15 = (stateno = 1250) && (time >= 16)


;---------------------------------------------------------------------------
;Combo Patadas Fuerte
[State -1: 		Combo Patadas Fuerte]
type 		= ChangeState
value 		= 1500
triggerall 	= (Command = "Combo Patadas Fuerte")
trigger1	= ((StateType != A) && (Ctrl)) || (Var(3) = 1)
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
trigger12 = (stateno = 1000) && (movecontact = 1)
trigger13 = (stateno = 1010) && (Time >= 13)

;Combo Patadas Devil
[State -1: 		Combo Patadas Devil]
type 		= ChangeState
value 		= 1550
triggerall 	= (Command = "Combo Patadas Devil")
trigger1	= ((StateType != A) && (Ctrl)) || (Var(3) = 1)
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
trigger12 = (stateno = 1000) && (movecontact = 1)
trigger13 = (stateno = 1010) && (Time >= 13)


;---------------------------------------------------------------------------
;Agarre Giratorio
[State -1: 		Agarre Giratorio]
type 		= ChangeState
value 		= 1600
triggerall 	= (Command = "Agarre Giratorio 1") || (Command = "Agarre Giratorio 2")
trigger1	= ((StateType != A) && (Ctrl)) || (Var(3) = 1)
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
trigger12 = (stateno = 1000) && (movecontact = 1)
trigger13 = (stateno = 1010) && (Time >= 13)



;===========================================================================
;-| Comands |-----------------------------------------------------------------
;===================================================================================
;---------------------------------------------------------------------------
;Masazo
[State -1: 		Masazo]
type 		= ChangeState
value 		= 310
triggerall 	= (Command = "x") && (Command = "holdfwd")
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 220) && (movecontact = 1)
trigger6 = (stateno = 230) && (movecontact = 1)



;charge ki
[State -1]
type = ChangeState
value = 730
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = (power < 3000)
trigger1 = command = "charge" && time > 5
trigger1 = command = "charge 1" && time > 5
trigger2 = Stateno = 1100


;Flying Start
[State -1]
type = ChangeState
value = 990
trigger1 = command = "fly"
trigger1 = ctrl = 1
trigger1 = statetype = A

;Super Jump
[State -1:      Super Jump]
type            = ChangeState
value      = 60
triggerall      = command = "Super Jump"
trigger1        = (statetype = S) && (ctrl)



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
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H



;===========================================================================
;-| Basic |-----------------------------------------------------------------
;---------------------------------------------------------------------------
;Throw001
;[State -1: 		Throw]
;type 			= ChangeState
;value 		= 800
;triggerall 		= (Command = "xa") && ((Command = "holdback") || (Command = "holdfwd")) && (Var(2) <= 0)
;trigger1		= (StateType = S) && (Ctrl) && (StateNo != [100,105])

;---------------------------------------------------------------------------
;Stand Weak Punch
[State -1: 	SWP]
type 		= ChangeState
value 		= 200
triggerall 	= (Command = "x") && (Command != "holddown")
trigger1	= (StateType = S) && (Ctrl)
trigger2	= (StateNo = 220) ;|| (StateNo = 400)) && (MoveContact) && (HitPauseTime <= 4)
trigger3	= (StateNo = 7040) && (StateType = C) && (Time > 4)

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
[State -1: 		SSP]
type 			= ChangeState
value 		= (IfElse(EnemyNear, Pos Y > -40,210,215))
triggerall 		= (Command = "y") && (Command != "holddown")
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 220) && (movecontact = 1)

;---------------------------------------------------------------------------
;Stand Weak Kick
[State -1: 		SWK]
type = ChangeState
value 	   = 220
triggerall = (Command = "a") && (Command != "holddown")
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 7040) && (StateType = C) && (Time > 4)
trigger3 = (stateno = 200) && (movecontact = 1)
trigger4 = (stateno = 201) && (movecontact = 1)

;---------------------------------------------------------------------------
;Stand Strong Kick
[State -1: 		SSK]
type = ChangeState
value = (IfElse(EnemyNear, Pos Y > -40,230,235))
triggerall = (Command = "b") && (Command != "holddown")
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 7040) && (StateType = C) && (Time > 4)
trigger3 = (stateno = 200) && (movecontact = 1)
trigger4 = (stateno = 201) && (movecontact = 1)
trigger5 = (stateno = 220) && (movecontact = 1)

;---------------------------------------------------------------------------
;Crouch Weak Punch
[State -1: 		CWP]
type 			= ChangeState
value 		= 400
triggerall 		= (Command = "x") && (Command = "holddown")
trigger1		= (StateType = C) && (Ctrl)
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 400) && (movecontact = 1)
trigger5 = (StateNo = 7040) && (StateType = C) && (Time > 4)


;---------------------------------------------------------------------------
;Crouch Strong Punch
[State -1: 		CSP]
type 			= ChangeState
value 		= 410
triggerall 		= (Command = "y") && (Command = "holddown")
trigger1		= (StateType = C) && (Ctrl)
trigger2		= (StateNo = 7040) && (StateType = C) && (Time > 4)
trigger3 = (stateno = 200) && (movecontact = 1)
trigger4 = (stateno = 201) && (movecontact = 1)
trigger5 = (stateno = 400) && (movecontact = 1)
trigger6 = (stateno = 420) && (movecontact = 1)
trigger7 = (stateno = 220) && (movecontact = 1)
;---------------------------------------------------------------------------
;Crouch Weak Kick
[State -1: 		CWK]
type 			= ChangeState
value 		= 420
triggerall 		= (Command = "a") && (Command = "holddown")
trigger1		= (StateType = C) && (Ctrl)
trigger2		= (StateNo = 7040) && (StateType = C) && (Time > 4)
trigger3 = (stateno = 200) && (movecontact = 1)
trigger4 = (stateno = 201) && (movecontact = 1)
trigger5 = (stateno = 400) && (movecontact = 1)

;---------------------------------------------------------------------------
;Crouch Strong Kick
[State -1: 		CSK]
type 			= ChangeState
value 		= 430
triggerall 		= (Command = "b") && (Command = "holddown")
trigger1		= (StateType = C) && (Ctrl)
trigger2		= (StateNo = 7040) && (StateType = C) && (Time > 4)
trigger3 = (stateno = 200) && (movecontact = 1)
trigger4 = (stateno = 201) && (movecontact = 1)
trigger5 = (stateno = 400) && (movecontact = 1)
trigger6 = (stateno = 420) && (movecontact = 1)
trigger7 = (stateno = 220) && (movecontact = 1)

;---------------------------------------------------------------------------
;Jump Weak Punch
[State -1: 		JWP]
type 			= ChangeState
value 		= 600
triggerall 		= (Command = "x")
trigger1		= (StateType = A) && (Ctrl)
trigger2                = (StateNo = 620) && (movecontact = 1)

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1: 		JSP]
type 			= ChangeState
value 		= 610
triggerall 		= (Command = "y")
trigger1		= (StateType = A) && (Ctrl)
trigger2                = (StateNo = 600) && (movecontact = 1)
trigger3                = (StateNo = 620) && (movecontact = 1)


;---------------------------------------------------------------------------
;Jump Weak Kick
[State -1: 		JWK]
type 			= ChangeState
value 		= 620
triggerall 		= (Command = "a")
trigger1		= (StateType = A) && (Ctrl)
trigger2                = (StateNo = 600) && (movecontact = 1)

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1: 		JSK]
type 			= ChangeState
value 		= 630
triggerall 		= (Command = "b")
trigger1		= (StateType = A) && (Ctrl)
trigger2                = (StateNo = 600) && (movecontact = 1)
trigger3                = (StateNo = 620) && (movecontact = 1)
;---------------------------------------------------------------------------
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

