;-| Super Motions |-------------------------------------------------------------
[Command]
name = "Buu Explosion"
command = ~D,DF,F,DF,D,DB,B, a+b
time = 30

[Command]
name = "Convertir en Chocolate"
command = ~D,DF,F,B, c
time = 30

[Command]
name = "Genocide Ball"
command = ~D,DB,B,D,DB,B, x+y
time = 30

[Command]
name = "Mouth Blast"
command = ~D,DB,B,F, c
time = 30

[Command]
name = "Buu Pimball Devil"
command = ~20$B, F,B,F, x
time = 30

[Command]
name = "Buu Pimball Fuerte"
command = ~20$B, F,B,F, y
time = 30


;-| Special Ki Motions |-----------------------------------------------------------

[Command]
name = "Mouth Vapor"
command = ~D, DB,B, c
time = 25

[Command]
name = "Grito"
command = ~F,B,F, c
time = 25

[Command]
name = "Triple Ball"
command = ~D, DF,F, c
time = 25


;-| Special Motions |-----------------------------------------------------------

[Command]
name = "Combo Patadas"
command = ~D,DF, F, b
time = 25

[Command]
name = "Combo Patadas"
command = ~D,DF, F, a
time = 25


[Command]
name = "Whip Fuerte"
command = ~F,D,DF, y
time = 25

[Command]
name = "Whip Devil"
command = ~F,D,DF, x
time = 25

[Command]
name = "Whip Comand"
command = ~D,D, x
time = 20

[Command]
name = "Whip Comand"
command = ~D,D, y
time = 20

[Command]
name = "Trampa de Goma - Corta"
command = ~D,DB,B, a
time = 25

[Command]
name = "Trampa de Goma - Larga"
command = ~D,DB,B, b
time = 25

[Command]
name = "Envolver al Rival - Largo"
command = ~F, D,DF, b
time = 25

[Command]
name = "Envolver al Rival - Alto"
command = ~F, D,DF, a
time = 25

[Command]
name = "Bola Parabolica"
command = ~20$B, F, x
time = 25

[Command]
name = "Bola Directa"
command = ~20$B, F, y
time = 25

[Command]
name = "Buu Combo_B"
command = D,DB,B,b
time = 15

[Command]
name = "Buu Combo_A"
command = D,DB,B,a
time = 15

[Command]
name = "Buu Combo_Y"
command = D,DB,B,y
time = 15

[Command]
name = "Buu Combo_X"
command = D,DB,B,x
time = 15

;-| Double Tap |----------------------------------------------------------------
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
name = "UU"     ;Required (do not remove)
command = U, U
time = 10

;-| 2/3 Button Combination |----------------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "Super Jump"
command = ~D, U
time = 10

[Command]
name = "fly"
command = a+b
time = 1


;-| Dir + Button |--------------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |-------------------------------------------------------------
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

;-| Hold Dir |------------------------------------------------------------------
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
name = "hold_c";Required (do not remove)
command = /$c
time = 1


[Command]
name = "charge"
command = /b

[Command]
name = "charge 1"
command = /a

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


;===============================================================================
[Statedef -1]
;===============================================================================
;-| Super Motions |-------------------------------------------------------------
 [State -1, Buu Explosion]
type = ChangeState
value = 3500
triggerall = command = "Buu Explosion"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 210) && (movecontact = 1)
trigger3 = (stateno = 200) && (movecontact = 1)
trigger4 = (stateno = 201) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 241) && (movecontact = 1)
trigger8 = (stateno = 400) && (movecontact = 1)
trigger9 = (stateno = 410) && (movecontact = 1)
trigger10 = (stateno = 430) && (movecontact = 1)
trigger11 = (stateno = 1120) && (movecontact = 1)
trigger12 = (stateno = 1130) && (movecontact = 1)
trigger13 = (stateno = 1140) && (movecontact = 1)
trigger14 = (stateno = 1150) && (movecontact = 1)
trigger15 = (stateno = 1160) && (movecontact = 1)
trigger16 = (stateno = 1520) && (Time >= 42)
trigger17 = (stateno = 1570) && (Time >= 13)
trigger18 = (stateno = 300) && (Time > 12)
trigger19 = (stateno = 301) && (Time > 5)


[State -1, Convertir en Chocolate]
type = ChangeState
value = 3400
triggerall = power >= 2000
triggerall = command = "Convertir en Chocolate"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 610) && (movecontact = 1)
trigger3 = (stateno = 600) && (movecontact = 1)
trigger4 = (stateno = 640) && (movecontact = 1)
trigger5 = (stateno = 630) && (movecontact = 1)
trigger6 = (stateno = 1201) && (Time >= 5)
trigger7 = Stateno = 991



[State -1, Genocide Ball]
type = ChangeState
value = 3300
triggerall = power >= 1000
triggerall = command = "Genocide Ball"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 210) && (movecontact = 1)
trigger3 = (stateno = 200) && (movecontact = 1)
trigger4 = (stateno = 201) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 241) && (movecontact = 1)
trigger8 = (stateno = 400) && (movecontact = 1)
trigger9 = (stateno = 410) && (movecontact = 1)
trigger10 = (stateno = 430) && (movecontact = 1)
trigger11 = (stateno = 1120) && (movecontact = 1)
trigger12 = (stateno = 1130) && (movecontact = 1)
trigger13 = (stateno = 1140) && (movecontact = 1)
trigger14 = (stateno = 1150) && (movecontact = 1)
trigger15 = (stateno = 1160) && (movecontact = 1)
trigger16 = (stateno = 1520) && (Time >= 42)
trigger17 = (stateno = 1570) && (Time >= 13)
trigger18 = (stateno = 300) && (Time > 12)
trigger19 = (stateno = 301) && (Time > 5)


[State -1, Buu Pimball]
type = ChangeState
value = 3100
triggerall = command = "Mouth Blast"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 210) && (movecontact = 1)
trigger3 = (stateno = 200) && (movecontact = 1)
trigger4 = (stateno = 201) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 241) && (movecontact = 1)
trigger8 = (stateno = 400) && (movecontact = 1)
trigger9 = (stateno = 410) && (movecontact = 1)
trigger10 = (stateno = 430) && (movecontact = 1)
trigger11 = (stateno = 1120) && (movecontact = 1)
trigger12 = (stateno = 1130) && (movecontact = 1)
trigger13 = (stateno = 1140) && (movecontact = 1)
trigger14 = (stateno = 1150) && (movecontact = 1)
trigger15 = (stateno = 1160) && (movecontact = 1)
trigger16 = (stateno = 1520) && (Time >= 42)
trigger17 = (stateno = 1570) && (Time >= 13)
trigger18 = (stateno = 300) && (Time > 12)
trigger19 = (stateno = 301) && (Time > 5)

[State -1, Buu Pimball para arriba]
type = ChangeState
value = 3000
triggerall = command = "Buu Pimball Devil"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 210) && (movecontact = 1)
trigger3 = (stateno = 200) && (movecontact = 1)
trigger4 = (stateno = 201) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 241) && (movecontact = 1)
trigger8 = (stateno = 400) && (movecontact = 1)
trigger9 = (stateno = 410) && (movecontact = 1)
trigger10 = (stateno = 430) && (movecontact = 1)
trigger11 = (stateno = 1120) && (movecontact = 1)
trigger12 = (stateno = 1130) && (movecontact = 1)
trigger13 = (stateno = 1140) && (movecontact = 1)
trigger14 = (stateno = 1150) && (movecontact = 1)
trigger15 = (stateno = 1160) && (movecontact = 1)
trigger16 = (stateno = 1520) && (Time >= 42)
trigger17 = (stateno = 1570) && (Time >= 13)
trigger18 = (stateno = 300) && (Time > 12)
trigger19 = (stateno = 301) && (Time > 5)

[State -1, Buu Pimball para abajo]
type = ChangeState
value = 3050
triggerall = command = "Buu Pimball Fuerte"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 210) && (movecontact = 1)
trigger3 = (stateno = 200) && (movecontact = 1)
trigger4 = (stateno = 201) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 241) && (movecontact = 1)
trigger8 = (stateno = 400) && (movecontact = 1)
trigger9 = (stateno = 410) && (movecontact = 1)
trigger10 = (stateno = 430) && (movecontact = 1)
trigger11 = (stateno = 1120) && (movecontact = 1)
trigger12 = (stateno = 1130) && (movecontact = 1)
trigger13 = (stateno = 1140) && (movecontact = 1)
trigger14 = (stateno = 1150) && (movecontact = 1)
trigger15 = (stateno = 1160) && (movecontact = 1)
trigger16 = (stateno = 1520) && (Time >= 42)
trigger17 = (stateno = 1570) && (Time >= 13)
trigger18 = (stateno = 300) && (Time > 12)
trigger19 = (stateno = 301) && (Time > 5)


;-| Special Ki Motions |-----------------------------------------------------------

[State -1, Mouth Vapor]
type = ChangeState
value = 2100
triggerall = command = "Mouth Vapor"
triggerall = power >= 300
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 210) && (movecontact = 1)
trigger3 = (stateno = 200) && (movecontact = 1)
trigger4 = (stateno = 201) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 241) && (movecontact = 1)
trigger8 = (stateno = 400) && (movecontact = 1)
trigger9 = (stateno = 410) && (movecontact = 1)
trigger10 = (stateno = 430) && (movecontact = 1)
trigger11 = (stateno = 1120) && (movecontact = 1)
trigger12 = (stateno = 1130) && (movecontact = 1)
trigger13 = (stateno = 1140) && (movecontact = 1)
trigger14 = (stateno = 1150) && (movecontact = 1)
trigger15 = (stateno = 1160) && (movecontact = 1)
trigger16 = (stateno = 1520) && (Time >= 42)
trigger17 = (stateno = 1570) && (Time >= 13)
trigger18 = (stateno = 300) && (Time > 12)
trigger19 = (stateno = 301) && (Time > 5)

[State -1, Grito]
type = ChangeState
value = 2200
triggerall = command = "Grito"
triggerall = power >= 300
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 210) && (movecontact = 1)
trigger3 = (stateno = 200) && (movecontact = 1)
trigger4 = (stateno = 201) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 241) && (movecontact = 1)
trigger8 = (stateno = 400) && (movecontact = 1)
trigger9 = (stateno = 410) && (movecontact = 1)
trigger10 = (stateno = 430) && (movecontact = 1)
trigger11 = (stateno = 1120) && (movecontact = 1)
trigger12 = (stateno = 1130) && (movecontact = 1)
trigger13 = (stateno = 1140) && (movecontact = 1)
trigger14 = (stateno = 1150) && (movecontact = 1)
trigger15 = (stateno = 1160) && (movecontact = 1)
trigger16 = (stateno = 1520) && (Time >= 42)
trigger17 = (stateno = 1570) && (Time >= 13)
trigger18 = (stateno = 300) && (Time > 12)
trigger19 = (stateno = 301) && (Time > 5)

[State -1, Triple Ball]
type = ChangeState
value = 2300
triggerall = command = "Triple Ball"
triggerall = power >= 400
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 610) && (movecontact = 1)
trigger3 = (stateno = 600) && (movecontact = 1)
trigger4 = (stateno = 640) && (movecontact = 1)
trigger5 = (stateno = 630) && (movecontact = 1)
trigger6 = (stateno = 1201) && (Time >= 5)
trigger7 = Stateno = 991




;-| Special Motions |-----------------------------------------------------------


[State -1, Como Patadas]
type = ChangeState
value = 1600
triggerall = command = "Combo Patadas"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 610) && (movecontact = 1)
trigger3 = (stateno = 600) && (movecontact = 1)
trigger4 = (stateno = 640) && (movecontact = 1)
trigger5 = (stateno = 630) && (movecontact = 1)
trigger6 = (stateno = 1201) && (Time >= 5)
trigger7 = Stateno = 991

[State -1,  Whip Fuerte]
type = ChangeState
value = 1500
triggerall = command =  "Whip Fuerte"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 210) && (movecontact = 1)
trigger3 = (stateno = 200) && (movecontact = 1)
trigger4 = (stateno = 201) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 241) && (movecontact = 1)
trigger8 = (stateno = 400) && (movecontact = 1)
trigger9 = (stateno = 410) && (movecontact = 1)
trigger10 = (stateno = 430) && (movecontact = 1)
trigger11 = (stateno = 1120) && (movecontact = 1)
trigger12 = (stateno = 1130) && (movecontact = 1)
trigger13 = (stateno = 1140) && (movecontact = 1)
trigger14 = (stateno = 1150) && (movecontact = 1)
trigger15 = (stateno = 1160) && (movecontact = 1)

[State -1,  Whip Devil]
type = ChangeState
value = 1550
triggerall = command =  "Whip Devil"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 210) && (movecontact = 1)
trigger3 = (stateno = 200) && (movecontact = 1)
trigger4 = (stateno = 201) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 241) && (movecontact = 1)
trigger8 = (stateno = 400) && (movecontact = 1)
trigger9 = (stateno = 410) && (movecontact = 1)
trigger10 = (stateno = 430) && (movecontact = 1)
trigger11 = (stateno = 1120) && (movecontact = 1)
trigger12 = (stateno = 1130) && (movecontact = 1)
trigger13 = (stateno = 1140) && (movecontact = 1)
trigger14 = (stateno = 1150) && (movecontact = 1)
trigger15 = (stateno = 1160) && (movecontact = 1)

[State -1, Trampa de Goma - Adelante]
type = ChangeState
value = 1400
triggerall = command = "Trampa de Goma - Corta"
Triggerall = Numhelper(1450) = 0
Triggerall = Numhelper(1451) = 0
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Trampa de Goma - Adelante]
type = ChangeState
value = 1405
triggerall = command = "Trampa de Goma - Larga"
Triggerall = Numhelper(1450) = 0
Triggerall = Numhelper(1451) = 0
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Trampa de Goma - Llamado A la goma]
type = ChangeState
value = 1410
triggerall = command = "Trampa de Goma - Corta" || command = "Trampa de Goma - Larga"
Triggerall = p2stateno = 1480
triggerall = Numhelper(1450) = 1 || Numhelper(1451) = 1
trigger1 = statetype != A
trigger1 = ctrl


[State -1, Envolver al Rival]
type = ChangeState
value = 1300
triggerall = command = "Envolver al Rival - Alto"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 210) && (movecontact = 1)
trigger3 = (stateno = 200) && (movecontact = 1)
trigger4 = (stateno = 201) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 241) && (movecontact = 1)
trigger8 = (stateno = 400) && (movecontact = 1)
trigger9 = (stateno = 410) && (movecontact = 1)
trigger10 = (stateno = 430) && (movecontact = 1)
trigger11 = (stateno = 1120) && (movecontact = 1)
trigger12 = (stateno = 1130) && (movecontact = 1)
trigger13 = (stateno = 1140) && (movecontact = 1)
trigger14 = (stateno = 1150) && (movecontact = 1)
trigger15 = (stateno = 1160) && (movecontact = 1)
trigger16 = (stateno = 1520) && (Time >= 42)
trigger17 = (stateno = 1570) && (Time >= 13)
trigger18 = (stateno = 300) && (Time > 12)
trigger19 = (stateno = 301) && (Time > 5)

[State -1, Envolver al Rival]
type = ChangeState
value = 1310
triggerall = command = "Envolver al Rival - Largo"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 210) && (movecontact = 1)
trigger3 = (stateno = 200) && (movecontact = 1)
trigger4 = (stateno = 201) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 241) && (movecontact = 1)
trigger8 = (stateno = 400) && (movecontact = 1)
trigger9 = (stateno = 410) && (movecontact = 1)
trigger10 = (stateno = 430) && (movecontact = 1)
trigger11 = (stateno = 1120) && (movecontact = 1)
trigger12 = (stateno = 1130) && (movecontact = 1)
trigger13 = (stateno = 1140) && (movecontact = 1)
trigger14 = (stateno = 1150) && (movecontact = 1)
trigger15 = (stateno = 1160) && (movecontact = 1)
trigger16 = (stateno = 1520) && (Time >= 42)
trigger17 = (stateno = 1570) && (Time >= 13)
trigger18 = (stateno = 300) && (Time > 12)
trigger19 = (stateno = 301) && (Time > 5)

[State -1, Buu Combo_Y]
type = ChangeState
value = 1200
triggerall = command = "Bola Parabolica"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 210) && (movecontact = 1)
trigger3 = (stateno = 200) && (movecontact = 1)
trigger4 = (stateno = 201) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 241) && (movecontact = 1)
trigger8 = (stateno = 400) && (movecontact = 1)
trigger9 = (stateno = 410) && (movecontact = 1)
trigger10 = (stateno = 430) && (movecontact = 1)
trigger11 = (stateno = 1120) && (movecontact = 1)
trigger12 = (stateno = 1130) && (movecontact = 1)
trigger13 = (stateno = 1140) && (movecontact = 1)
trigger14 = (stateno = 1150) && (movecontact = 1)
trigger15 = (stateno = 1160) && (movecontact = 1)
trigger16 = (stateno = 1520) && (Time >= 42)
trigger17 = (stateno = 1570) && (Time >= 13)
trigger18 = (stateno = 300) && (Time > 12)
trigger19 = (stateno = 301) && (Time > 5)

[State -1, Buu Combo_Y]
type = ChangeState
value = 1250
triggerall = command = "Bola Directa"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 210) && (movecontact = 1)
trigger3 = (stateno = 200) && (movecontact = 1)
trigger4 = (stateno = 201) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 241) && (movecontact = 1)
trigger8 = (stateno = 400) && (movecontact = 1)
trigger9 = (stateno = 410) && (movecontact = 1)
trigger10 = (stateno = 430) && (movecontact = 1)
trigger11 = (stateno = 1120) && (movecontact = 1)
trigger12 = (stateno = 1130) && (movecontact = 1)
trigger13 = (stateno = 1140) && (movecontact = 1)
trigger14 = (stateno = 1150) && (movecontact = 1)
trigger15 = (stateno = 1160) && (movecontact = 1)
trigger16 = (stateno = 1520) && (Time >= 42)
trigger17 = (stateno = 1570) && (Time >= 13)
trigger18 = (stateno = 300) && (Time > 12)
trigger19 = (stateno = 301) && (Time > 5)

[State -1, Buu Combo_Y]
type = ChangeState
value = 1100
triggerall = command = "Buu Combo_Y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 210) && (movecontact = 1)
trigger3 = (stateno = 200) && (movecontact = 1)
trigger4 = (stateno = 201) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 241) && (movecontact = 1)
trigger8 = (stateno = 400) && (movecontact = 1)
trigger9 = (stateno = 410) && (movecontact = 1)
trigger10 = (stateno = 430) && (movecontact = 1)
trigger11 = (stateno = 1120) && (movecontact = 1)
trigger12 = (stateno = 1130) && (movecontact = 1)
trigger13 = (stateno = 1140) && (movecontact = 1)
trigger14 = (stateno = 1150) && (movecontact = 1)
trigger15 = (stateno = 1160) && (movecontact = 1)
trigger16 = (stateno = 1520) && (Time >= 42)
trigger17 = (stateno = 1570) && (Time >= 13)
trigger18 = (stateno = 300) && (Time > 12)
trigger19 = (stateno = 301) && (Time > 5)

[State -1, Buu Combo_Y]
type = ChangeState
value = 1140
triggerall = command = "Buu Combo_X"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 210) && (movecontact = 1)
trigger3 = (stateno = 200) && (movecontact = 1)
trigger4 = (stateno = 201) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 241) && (movecontact = 1)
trigger8 = (stateno = 400) && (movecontact = 1)
trigger9 = (stateno = 410) && (movecontact = 1)
trigger10 = (stateno = 430) && (movecontact = 1)
trigger11 = (stateno = 1120) && (movecontact = 1)
trigger12 = (stateno = 1130) && (movecontact = 1)
trigger13 = (stateno = 1140) && (movecontact = 1)
trigger14 = (stateno = 1150) && (movecontact = 1)
trigger15 = (stateno = 1160) && (movecontact = 1)
trigger16 = (stateno = 1520) && (Time >= 42)
trigger17 = (stateno = 1570) && (Time >= 13)
trigger18 = (stateno = 300) && (Time > 12)
trigger19 = (stateno = 301) && (Time > 5)


[State -1, Whip Comand]
type = ChangeState
value = 300
triggerall = command = "Whip Comand"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 240) && (movecontact = 1)
trigger6 = (stateno = 241) && (movecontact = 1)
trigger7 = (stateno = 430) && (movecontact = 1)
trigger8 = (stateno = 440) && (movecontact = 1)
trigger9 = (stateno = 1120) && (movecontact = 1)
trigger10 = (stateno = 1130) && (movecontact = 1)
trigger11 = (stateno = 1140) && (movecontact = 1)
trigger12 = (stateno = 1150) && (movecontact = 1)
trigger13 = (stateno = 1160) && (movecontact = 1)


;===============================================================================
;-------------------------------------------------------------------------------
[State -1, Fireball]
type = ChangeState
value = 1000
triggerall = command = "c"
triggerall = power > 100
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Fireball En el aire]
type = ChangeState
value = 2000
triggerall = command = "c"
triggerall = power > 100
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 610) && (movecontact = 1)
trigger3 = (stateno = 600) && (movecontact = 1)
trigger4 = (stateno = 640) && (movecontact = 1)
trigger5 = (stateno = 630) && (movecontact = 1)
trigger6 = Stateno = 991

;-------------------------------------------------------------------------------
[State -1, Zanzouken]
type = ChangeState
value = 1090
triggerall = command = "z"
triggerall = power > 400
triggerall = alive = 1
trigger1 = ctrl
trigger2 = stateno = 1015 || stateno = 1016 || stateno = 1017 || stateno = 1018
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
trigger30 = (stateno = 1150) && (time >= 16)
;---------------------------------------------------------------------------

;Flying Start
[State -1]
type = ChangeState
value = 990
trigger1 = command = "fly"
trigger1 = ctrl = 1
trigger1 = statetype = A


;-------------------------------------------------------------------------------
[State -1, Charge Ki]
type = ChangeState
value = 1005
triggerall = ctrl
triggerall = power < 3000
triggerall = time > 5
trigger1 = command = "charge"
trigger1 = command = "charge 1"
trigger1 = statetype = S

;-------------------------------------------------------------------------------
[State -1, Air Dash Forward]
type = ChangeState
value = 1015
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl = 1

[State -1, Air Dash Back]
type = ChangeState
value = 1016
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl = 1

[State -1, Air Dash Down]
type = ChangeState
value = 1017
trigger1 = command = "DD"
trigger1 = statetype = A
trigger1 = ctrl = 1

[State -1, Air Dash Up]
type = ChangeState
value = 1018
triggerall = pos y > -320
trigger1 = command = "UU"
trigger1 = statetype = A
trigger1 = ctrl = 1

;===============================================================================
;-------------------------------------------------------------------------------
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;-------------------------------------------------------------------------------
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;-------------------------------------------------------------------------------
;Super Jump
[State -1:      Super Jump]
type            = ChangeState
value      = 60
triggerall      = command = "Super Jump"
trigger1        = (statetype = S) && (ctrl)

;===============================================================================
[State -1, Stand Punch]
type = ChangeState
value = 210
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 300) && (Time > 12)
trigger3 = (stateno = 301) && (Time > 5)

;-------------------------------------------------------------------------------
[State -1, Stand Punch 2]
type = ChangeState
value = 201
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 210) && (movecontact = 1)
trigger3 = (stateno = 230) && (movecontact = 1)
trigger4 = (stateno = 1000) && (movecontact = 1)
trigger5 = (stateno = 300) && (Time > 12)
trigger6 = (stateno = 301) && (Time > 5)

;-------------------------------------------------------------------------------
[State -1, Stand Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 210) && (movecontact = 1)
trigger3 = (stateno = 1000) && (movecontact = 1)
trigger4 = (stateno = 300) && (Time > 12)
trigger5 = (stateno = 301) && (Time > 5)

;-------------------------------------------------------------------------------
[State -1, Standing Kick 2]
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
trigger6 = (stateno = 300) && (Time > 12)
trigger7 = (stateno = 301) && (Time > 5)

;-------------------------------------------------------------------------------
[State -1, Crouch Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 300) && (Time > 12)
trigger3 = (stateno = 301) && (Time > 5)

;-------------------------------------------------------------------------------
[State -1, Crouch Punch fuerte]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && (movecontact = 1)
trigger3 = (stateno = 430) && (movecontact = 1)
trigger4 = (stateno = 300) && (Time > 12)
trigger5 = (stateno = 301) && (Time > 5)

;-------------------------------------------------------------------------------
[State -1, Crouch Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && (movecontact = 1)
trigger3 = (stateno = 300) && (Time > 12)
trigger4 = (stateno = 301) && (Time > 5)

;-------------------------------------------------------------------------------
[State -1, Crouch Kick 2]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && (movecontact = 1)
trigger3 = (stateno = 410) && (movecontact = 1)
trigger4 = (stateno = 430) && (movecontact = 1)
trigger5 = (stateno = 300) && (Time > 12)
trigger6 = (stateno = 301) && (Time > 5)


;-------------------------------------------------------------------------------
[State -1, Jump Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;-------------------------------------------------------------------------------
[State -1, Jump Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact = 1)
trigger3 = (stateno = 630) && (movecontact = 1)
;-------------------------------------------------------------------------------
[State -1, Jump Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;-------------------------------------------------------------------------------
[State -1, Jump Kick 2]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact = 1)
trigger3 = (stateno = 630) && (movecontact = 1)
trigger4 = (stateno = 610) && (movecontact = 1)

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
value = 530
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = 991

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
trigger4 = (stateno = 520) && (movecontact = 1)
trigger5 = Stateno = 991

;--------------------------------------------------------------------------------
; con esto la pc activa la IA

[State -2, AI activada por la PC]
type = VarSet
trigger1 = (command = "AI1") ||(Command = "AI2") || (Command = "AI3") || (Command = "AI4") || (Command = "AI5")
trigger2 = (Command = "AI6") || (Command = "AI7") || (Command = "AI8") || (Command = "AI9") || (Command = "AI10")
trigger4 = (Command = "AI11") || (Command = "AI12") || (Command = "AI13") || (Command = "AI14")
var(9) = 1
