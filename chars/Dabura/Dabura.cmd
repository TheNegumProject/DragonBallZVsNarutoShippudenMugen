[Command]
name = "ventania de ki"
command = D,DB,B,x+y
time = 30
[Command]
name = "lança fatal"  ;tem que ter o life menor que 300
command = D,DF,F,x+y
time = 30
[Command]
name =  "inferno"
command = D,DB,B, F, b
time = 30
[Command]
name =  "especial dbz tenkaichi 2"
command = D,DB,B, F, y
time = 30
[Command]
name =  "chamas de dabura"
command = D,DB,B, F, x
time = 30
[Command]
name =  "furia de dabura"
command = D,DB,B, F, z
time = 30
[Command]
name =  "morte de kibito"
command = D,DB,B, F, c
time = 30
[Command]
name =  "bola de fogo"  ; durante o zanzoken   gasta 1500 de power
command = a+b
time = 1
[Command]
name =  "levantar rapido"  ; so pode ser feito com o dabura caido
command = a+b
time = 1
[Command]
name = "rochas"
command = D,DB,B, F, a
time = 30
[Command] 
name = "chute aereo"
command = DF, F, a
[Command]
name = "dabura gancho"
command = D,DB,B, c
[Command]
name = "chute aereo"
command = DF, F, b
[Command]
name = "chute aereo"
command = DF, F, c
[Command]
name = "pisodefogo"
command = DF, F, c
time = 25
[Command]
name = "zanzoken"
command = b+c
time = 1
[Command]
name = "invisivel"
command = B, F, x
time = 15
[Command]
name = "invisivel"
command = B, F, y
time = 15
[Command]
name = "invisivel"
command = B, F, z
time = 15
[Command]
name = "larva"
command = B, F, a
time = 15
[Command]
name = "larva"
command = B, F, b
time = 15
[Command]
name = "larva"
command = B, F, c
time = 15
[Command]
name = "rajada de vento"
command = D, B, y
time = 10
[Command]
name = "sequencia com espada"
command = D, F, x
time = 10
[Command]
name = "sequencia sem espada"
command = D, F, y
time = 10
[Command]
name = "cotovelada"
command = D, B, x
time = 10
[Command]
name = "bola de fogo"
command = z
[Command]
name = "bola de fogo aerea"
command = z
[Command]
name = "fogo"
command = D, B, a
time = 15
[Command]
name = "lança"
command = D, B, b
time = 15
[Command]
name = "contra golpe"
command = x+y  ;contra golpe de dabura gasta 500 de power
time = 1
[Command]
name = "Agarando"
command = /F, x
time = 1
[Command]
name = "Agarando"
command = /F, y
time = 1
[Command]
name = "cuspe"
command = D, F, a
[Command]
name = "velocidade+espada"
command = D, F, b
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
name = "recovery"
command = x+y
time = 1
[Command]
name = "fly" 
command = b+y
time = 1 
[Command]
name = "velocidade"
command = x+a
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
name = "DU"
command = $D, $U
time = 12
[Command]
name = "start"
command = s
time = 1
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
name = "carregarki"
command = /a
[Command]
name = "carregarki1"
command = /b
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
command = z
time = 1
[Statedef -1]
[State -1]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741
[State -1]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742
[State -1]
type = ChangeState
value = 3131
triggerall =  (command = "levantar rapido")
trigger1= (stateno = [5110,5120]) && (time < 20)
[State -1]
type = ChangeState
value  = 7575
triggerall   = (command = "ventania de ki")
triggerall = (power >= 2000)
trigger1  = (statetype = S) && (ctrl)
[State -1]
type = ChangeState
value =8989
triggerall = stateno != 42385
triggerall = command = "especial dbz tenkaichi 2"
triggerall = power >= 2000
trigger1 = statetype = S && ctrl
trigger1 = ctrl = 1
trigger2  = stateno = [200,400]
trigger2  = (movecontact)
[State -1]
type = ChangeState
value = 42385
triggerall = command = "furia de dabura"
triggerall = power >= 3000
trigger1 = statetype = S && ctrl
trigger1 = ctrl
trigger2 = stateno = [200,400]
trigger2 = (movecontact)
[State -1]
type = ChangeState
value = 113
triggerall = stateno != 42385
triggerall = command = "lança fatal"
triggerall = power >= 3000
triggerall = life < 300
trigger1 = statetype = S && ctrl
trigger1 = ctrl = 1
trigger2  = stateno = [200,400]
trigger2  = (movecontact)
[State -1]
type = ChangeState
value =381
triggerall = stateno != 42385
triggerall = command = "chamas de dabura"
triggerall = power >= 2000
trigger1 = statetype = S && ctrl
trigger1 = ctrl = 1
trigger2 = stateno = 900
trigger3  = stateno = [200,400]
trigger3  = (movecontact)
[State -1]
type = ChangeState
value = 3000
triggerall = stateno != 42385
triggerall = command = "inferno"
triggerall = power >= 1500
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2  = stateno = [200,400]
trigger2  = (movecontact)
[State -1]
type = ChangeState
value = 30009
triggerall = stateno != 42385
triggerall  = stateno = 916
triggerall = command = "bola de fogo"
triggerall = power >= 1500
trigger1 = statetype = S
trigger1 = ctrl = 1
[State -1]
type = ChangeState
value = 3030
triggerall = stateno != 42385
triggerall = command = "morte de kibito"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2  = stateno = [200,400]
trigger2  = (movecontact)
[State -1]
type = ChangeState
value = 1765
triggerall = stateno != 42385
triggerall = command = "rochas"
triggerall = power >= 1000
trigger1 = statetype = S && ctrl
trigger1 = ctrl = 1
trigger2 = stateno = 900
trigger3  = stateno = [200,400]
trigger3  = (movecontact)
[State -1, bola_fuego]
type = ChangeState
value = 1000
triggerall = stateno != 42385
triggerall = command = "bola de fogo"
triggerall = power >= 1
trigger1 = statetype = S && ctrl
trigger1 = ctrl = 1
trigger2 = stateno = 900
trigger3  = stateno = [200,400]
trigger3  = (movecontact)
[State -1, bola_fuego]
type = ChangeState
value = 1010
triggerall = stateno != 42385
triggerall = command = "bola de fogo aerea"
triggerall = power >= 1
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2  = stateno = [200,400]
trigger2  = (movecontact)
[State -1]
type = ChangeState
value = 1212
triggerall = power >= 300
triggerall = stateno != 42385
triggerall = command = "contra golpe"
trigger1 = statetype = S
trigger1 = ctrl
[State -1]
type = ChangeState
value = 2221
triggerall = command = "invisivel"
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 900
trigger3  = stateno = [200,400]
trigger3  = (movecontact)
[State -1]
type = ChangeState
value = 1616
triggerall = command = "larva"
triggerall = power >= 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2  = stateno = [200,400]
trigger2  = (movecontact)
[State -1]
type = ChangeState
value = 696969
triggerall = stateno != 42385
triggerall = command = "sequencia com espada"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [200,400]
trigger2 = (movecontact)
[State -1]
type = ChangeState
value = 797979
triggerall = stateno != 42385
triggerall = command = "sequencia sem espada"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [200,400]
trigger2 = (movecontact)
[State -1]
type = ChangeState
value = 18972
triggerall = stateno != 42385
triggerall = command = "dabura gancho"
trigger1 = statetype = S
trigger1 = ctrl
trigger2  = stateno = [200,400]
trigger2  = (movecontact)
[State -1]
type = ChangeState
value = 9169
triggerall = stateno != 42385
triggerall = power >= 500
triggerall = command = "zanzoken"
triggerall = alive = 1
trigger1 = ctrl = 1
trigger2  = stateno = 900
[State -1, bola_fuego]
type = ChangeState
value = 1100
triggerall = stateno != 42385
triggerall = command = "lança"
triggerall = power >= 1
trigger1 = statetype = S && ctrl
trigger1 = ctrl = 1
trigger2 = stateno = 900
trigger3  = stateno = [200,400]
trigger3  = (movecontact)
[State -1, bola_fuego]
type = ChangeState
value = 1030
triggerall = stateno != 42385
triggerall = command = "pisodefogo"
triggerall = power >= 1
trigger1 = statetype = S && ctrl
trigger1 = ctrl = 1
trigger2  = stateno = [200,400]
trigger2  = (movecontact)
[State -1]
type = ChangeState
value = 12002
triggerall = stateno != 42385
triggerall = command = "fogo"
triggerall = power >= 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 900
trigger3  = stateno = [200,400]
trigger3  = (movecontact)
[State -1]
type = ChangeState
value = 860
triggerall = stateno != 42385
triggerall = (Command = "chute aereo")
trigger1= ((StateType = A) && (Ctrl))
ignorehitpause = 1
[State -1 ]
type = ChangeState
value = 860
triggerall = stateno != 42385
triggerall = (Command = "chute aereo")
trigger1= ((StateType = A) && (Ctrl))
ignorehitpause = 1
[State -1]
type = ChangeState
value = 1600
triggerall = stateno != 42385
triggerall = command = "velocidade"
triggerall = power > 300
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 900
trigger3  = stateno = [200,400]
trigger3  = (movecontact)
[State -1]
type = ChangeState
value = 1090
triggerall = stateno != 42385
triggerall = command = "cotovelada"
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 900
trigger3  = stateno = [200,400]
trigger3  = (movecontact)
[State -1]
type = ChangeState
value = 800
trigger1 = command = "Agarando"
trigger1 = statetype = S
trigger1 = stateno != 100
trigger1 = p2movetype != H
trigger1 = p2statetype != A
trigger1 = ctrl = 1
trigger1 = P2bodydist X <= 10
[State -1]
type = ChangeState
value = 900
triggerall = stateno != 42385
triggerall = command = "fly"
trigger1 = statetype = A
trigger1 = ctrl = 1
[State -1]
type = ChangeState
value = 910
triggerall = stateno != 42385
triggerall = command = "fly"
trigger1 = statetype != A
trigger1 = ctrl = 1
[State -1]
type = ChangeState
value = 830
triggerall = stateno != 42385
triggerall = power < 3000
trigger1 = ctrl = 1
trigger1 = statetype = S && ctrl
trigger1 = command = "carregarki"
trigger1 = command = "carregarki1"
[State -1]
type = ChangeState
value = 222
triggerall = stateno != 42385
triggerall = command = "velocidade+espada"
triggerall = power >= 1
trigger1 = statetype = S && ctrl
trigger1 = ctrl = 1
trigger2 = stateno = 900
[State -1]
type = ChangeState
value = 1220
triggerall = stateno != 42385
triggerall = command = "cuspe"
trigger1 = statetype = S && ctrl
trigger1 = ctrl = 1
trigger2 = stateno = 900
[State -1]
type = ChangeState
value = 2004
triggerall = stateno != 42385
triggerall = command = "rajada de vento"
trigger1 = statetype = S && ctrl
trigger1 = ctrl = 1
trigger2 = stateno = 900
trigger3  = stateno = [200,400]
trigger3  = (movecontact)
[State -1]
type = ChangeState
value = 230
triggerall = stateno != 42385
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 900
trigger3 = (stateno = 215) && time > 7
[State -1]
type = ChangeState
value = 212
triggerall = stateno != 42385
triggerall = (command = "a")  && (command != "holddown")
triggerall = stateno = 230
triggerall = movecontact
trigger1 = (statetype = S)
trigger2 = stateno = 900
[State -1]
type = ChangeState
value = 610
triggerall = stateno != 42385
triggerall = (command = "a")  && (command != "holddown")
triggerall = stateno = 212
triggerall = movecontact
trigger1 = (statetype = S)
trigger2 = stateno = 900


[State -1, Stand puño debil]
type = ChangeState
value = 200
triggerall = stateno != 42385
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 900
trigger3 = (stateno = 210)  && (movecontact)


[State -1]
type = ChangeState
value = 216
triggerall = stateno != 42385
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 900
trigger3 = (stateno = 210)  && (movecontact)
[State -1]
type = ChangeState
value = 217
triggerall = stateno != 42385
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 216 && movehit = 1
[State -1]
type = ChangeState
value = 219
triggerall = stateno != 42385
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 218 && movehit
[State -1]
type = ChangeState
value = 1897
triggerall = stateno != 42385
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movehit = 1
[State -1]
type = ChangeState
value = 2039
triggerall = stateno != 42385
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 2019 && movehit = 1
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = stateno != 42385
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 900
trigger3 = (stateno = 230)  && (movecontact)
[State -1]
type = ChangeState
value = 215
triggerall = stateno != 42385
triggerall = (command = "x")
trigger1 = (ctrl) && (statetype = S)
trigger2 = (stateno = 240)  && (movecontact)
trigger2 = (stateno = 202) && (movecontact)
trigger3 = stateno = 900
[State -1]
type = ChangeState
value = 240
triggerall = stateno != 42385
triggerall = (command = "x")  && (command != "holddown")
triggerall = stateno = 215
triggerall = movecontact
trigger1 = (statetype = S)
trigger2 = stateno = 900
[State -1]
type = ChangeState
value = 222
triggerall = stateno != 42385
triggerall = (command = "x") && (command != "holddown")
triggerall = stateno = 240
triggerall = movecontact
trigger1 = (statetype = S)
trigger2 = stateno = 900
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = stateno != 42385
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = stateno != 42385
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
[State -1, Crouching Strong Punch]
type = ChangeState
value = 405
triggerall = stateno != 42385
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
[State -1, Crouching Strong Punch]
type = ChangeState
value = 10000
triggerall = stateno != 42385
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = stateno != 42385
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = stateno != 42385
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
[State -1, Crouching Light Kick]
type = ChangeState
value = 450
triggerall = stateno != 42385
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 440
trigger2 = movecontact
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = stateno != 42385
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2  = stateno = [600,700]
trigger2  = (movecontact)
[State -1, Jump Strong Punch]
type = ChangeState
value = 6009
triggerall = stateno != 42385
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3  = stateno = [600,700]
trigger3  = (movecontact)
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = stateno != 42385
triggerall = command = "a"
triggerall = command != "chute aereo"
trigger1 = (ctrl) && (statetype = A)
trigger2 = movecontact
trigger3  = stateno = [600,700]
trigger3  = (movecontact)
[State -1, Jump Light Kick]
type = ChangeState
value = 6309
triggerall = command = "c"
triggerall = stateno != 42385
trigger1 = (ctrl) && (statetype = A)
trigger2 = stateno = 640
trigger2 = movecontact
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = stateno != 42385
triggerall = command = "b"
triggerall = command != "chute aereo"
trigger1 = (ctrl) && (statetype = A)
trigger2 = movecontact
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = stateno != 42385
triggerall = command = "y"
trigger1 = (ctrl) && (statetype = A)
trigger2 = stateno = 600
trigger2 = movecontact
[State -1]
type = ChangeState
value = 707
triggerall = stateno != 42385
triggerall = command = "DU"
trigger1 = statetype = C
trigger1 = ctrl = 1
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = stateno != 42385
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = stateno != 42385
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
[State -1, Fwd]
type = ChangeState
value = 60
triggerall = stateno != 42385
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno = 50
trigger1 = Vel X >= 0
[State -1, Back]
type = ChangeState
value = 65
triggerall = stateno != 42385
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno = 50
trigger1 = Vel X >= 0
