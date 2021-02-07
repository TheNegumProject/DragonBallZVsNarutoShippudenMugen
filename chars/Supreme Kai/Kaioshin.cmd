[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]
command.time = 15
command.buffer.time = 1

;-| AI |---------------------------------------------------------------------

[Command]
name = "ai1"
command = x,x,x,x,x,x,x,x,x,x,a+b+c+z+x+y
time = 1

[Command]
name = "ai2"
command = y,y,y,y,y,y,y,y,y,y,a+b+c+z+x+y
time = 1

[Command]
name = "ai3"
command = z,z,z,z,z,z,z,z,z,z,z,z,a+b+c+z+x+y
time = 1

[Command]
name = "ai4"
command = F,F,F,F,F,F,F,F,F,F,F,F,a+b+c+z+x+y
time = 1

[Command]
name = "ai5"
command = F,B,F,B,F,B,F,B,F,B,F,B,a+b+c+z+x+y
time = 1

[Command]
name = "ai6"
command = B,D,F,U,a+b+c+z+x+y+B+D+F+U
time = 1

[Command]
name = "ai7"
command = B,D,F,U,B,D,F,U,a+b+c+z+x+y
time = 1

[Command]
name = "ai8"
command = F,B,F,F,F,B,B,U,U,D,D,a+b+c+z+x+y
time = 1

[Command]
name = "ai9"
command = a,b,c,z,x,y,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai10"
command = F,x,B,x,D,x,U,x,F,x,B,x,D,x,U,x,a+b+c+z+x+y
time = 1

[Command]
name = "ai11"
command = x,y,z,a,b,c,x,y,z,a+b+c+z+x+y+F+B+F+B
time = 1

[Command]
name = "ai12"
command = F,F,F,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai13"
command = U,U,U,U,U,U,U,U,U,U,U,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai14"
command = F,B,F,B,F,a+b+c+z+x+y+U+B+D+F
time = 1

[Command]
name = "ai15"
command = D,B,D,B,D,B,D,a+b+c+z+x+y+F+F+U+U+D+D+B+B
time = 1

[Command]
name = "ai16"
command = D,B,D,B,D,B,D,a+b+c+z+x+y+F+F+U+U+D+D+B+B+B+B
time = 1

[Command]
name = "ai17"
command = x,y,z,a,b,c,x,y,z,a+b+c+z+x+y+F+B+F+B+y+F+B+F+B
time = 1

[Command]
name = "ai18"
command = x,y,z,a,b,c,x,y,z,a+b+c+z+x+y+F+B+F+B+F+B+F+B
time = 1

[Command]
name = "ai19"
command = x,y,z,a,b,c,x,y,z,a+b+c+z+x+y+F+B+F+B,c,x,y,z
time = 1

[Command]
name = "ai20"
command = F,F,F,a+b+c+z+x+y+U+D+F+B+c+z+x+y+U+D+F+B
time = 1

;-| Super Motions |--------------------------------------------------------
[command]
name = "OceanIllusion"
command = D,D,D,D,x
time = 40

[command]
name = "BurningStage"
command = D,D,D,D,z
time = 40

[Command]
name = "Valley of Rock`s"
command = D,DB,B,D,DF,F,x
time = 40

[Command]
name = "Valley of Rock`s"
command = D,DB,B,D,DF,F,y
time = 40

[Command]
name = "Valley of Rock`s"
command = D,DB,B,D,DF,F,z
time = 40

[command]
name = "Chidori"
command = D,DB,B,D,DF,F,a
time = 40

[command]
name = "Chidori"
command = D,DB,B,D,DF,F,b
time = 40

[command]
name = "Chidori"
command = D,DB,B,D,DF,F,c
time = 40

[command]
name = "Twister"
command = D,DB,B,D,DB,B,x
time = 40

[command]
name = "Twister"
command = D,DB,B,D,DB,B,y
time = 40

[command]
name = "Twister"
command = D,DB,B,D,DB,B,z
time = 40

[command]
name = "Tsunami"
command = D,DB,B,D,DB,B,a
time = 40

[command]
name = "Tsunami"
command = D,DB,B,D,DB,B,b
time = 40

[command]
name = "Tsunami"
command = D,DB,B,D,DB,B,c
time = 40

[command]
name = "FireBreath"
command = D,DF,F,D,DF,F,z
time = 40

[command]
name = "FireBreath"
command = D,DF,F,D,DF,F,y
time = 40

[command]
name = "FireBreath"
command = D,DF,F,D,DF,F,x
time = 40

;-| Ki Motions |-----------------------------------------------------------


;-| Combo Motions |--------------------------------------------------------
[command]
name = "Shadow Punch"
command = D,DF,F,a
time = 30

[command]
name = "Teletransporte Ade"
command = /$F,x+y
time = 30

[command]
name = "Teletransporte Atr"
command = /$B,x+y
time = 30

[command]
name = "Teletransporte Junto p2"
command = x+y
time = 30

[command]
name = "BF_a"
command = B,F,a
time = 30

[command]
name = "BF_b"
command = B,F,b
time = 30

[command]
name = "BF_x"
command = B,F,x
time = 30

[command]
name = "BF_y"
command = B,F,y
time = 30

[command]
name = "DU_x"
command = D,U,x
time = 30

[command]
name = "DB_x"
command = D,B,x
time = 30

[command]
name = "DF_x"
command = D,F,x
time = 30

[command]
name = "DF_y"
command = D,F,y
time = 30

[command]
name = "DB_y"
command = D,B,y
time = 30

[command]
name = "FDDF_a"
command = ~F,D,DF,a
time = 20

[command]
name = "FDDF_b"
command = ~F,D,DF,b
time = 20

[command]
name = "b+y"
command = b+y
time = 15

[command]
name = "DF_z"
command = D,F,z
time = 30

[command]
name = "DF_a"
command = D,F,a
time = 30

[command]
name = "DB_a"
command = D,B,a
time = 30

[command]
name = "DB_z"
command = D,B,z
time = 30

[command]
name = "DF_b"
command = D,F,b
time = 30

[command]
name = "DB_b"
command = D,B,b
time = 30

[command]
name = "DF_c"
command = D,F,c
time = 30

[command]
name = "DB_c"
command = D,B,c
time = 30

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
name = "UU"     ;Required (do not remove)
command = U, U
time = 10

[Command]
name = "DD"     ;Required (do not remove)
command = D, D
time = 10

[Command]
name = "DU"     ;Required (do not remove)
command = D, U
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
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
name = "fwd";Required (do not remove)
command = F
time = 1

[Command]
name = "back";Required (do not remove)
command = B
time = 1

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
name = "hold_a"
command = /a

[Command]
name = "hold_b"
command = /b

[Command]
name = "hold_c"
command = /c

[Command]
name = "hold_x"
command = /x

[Command]
name = "hold_y"
command = /y

[Command]
name = "hold_z"
command = /z

[Command]
name = "hold_s"
command = /s

;-------------------------------------------------------------------------------
[Statedef -1]

[State -1, AI]
type = VarSet
triggerall = var(6) != 1
trigger1 = command = "ai1"
trigger2 = command = "ai2"
trigger3 = command = "ai3"
trigger4 = command = "ai4"
trigger5 = command = "ai5"
trigger6 = command = "ai6"
trigger7 = command = "ai7"
trigger8 = command = "ai8"
trigger9 = command = "ai9"
trigger10= command = "ai10"
trigger11= command = "ai11"
trigger12= command = "ai12"
trigger13= command = "ai13"
trigger14= command = "ai14"
trigger15= command = "ai15"
trigger16= command = "ai16"
trigger17= command = "ai17"
trigger18= command = "ai18"
trigger19= command = "ai19"
trigger20= command = "ai20"
v = 6
value = 1

;=============================================================================
;AI Artificial Inteligence

[State -1,  AI Fwd Dash]
type = ChangeState
value = 100
triggerall = var(6)>=1 && stateno !=[100,105]
triggerall = roundstate=2 && statetype!=A && ctrl
triggerall = stateno != 0
trigger1 = ctrl && P2bodydist X > 0 && Random <= 480


[State -1, AI Hyper Velocidad]
type = ChangeState
triggerall = var(6)=1
triggerall = prevstateno != [7000,7067]
triggerall = power >= 1000 && roundstate=2
trigger1 = ctrl && p2statetype = A && random <= 420
trigger2 = (stateno = [200,250]) && movehit && random <=300
trigger3 = (stateno = [400,450]) && movehit && random <=300
trigger4 = (stateno = [600,650]) && movehit && random <=300
trigger5 = prevstateno = 2500 && random <=800
value = 883

[State -1,AI Jump]
type = ChangeState
value = 40
triggerall= var(6)>=1 && numenemy
trigger1= roundstate=2 && statetype!=A && ctrl
trigger1= enemynear,movetype=A && p2bodydist x<160 && enemynear,hitdefattr=SC,AT
trigger2 = stateno = 420 && movehit && random <=801

[State -1,AI Guard]
type = ChangeState
value = 120
trigger1= var(6)>=1 && numenemy
trigger1= roundstate=2 && inguarddist
trigger1= ctrl && (stateno!=[120,155]) && !var(20)
trigger1= !(enemynear,hitdefattr=SCA,AT) && (enemynear,time<120)
trigger1= statetype!=A || p2statetype=A
trigger1= random<ifelse((p2stateno=[200,699]), 100, ifelse((p2stateno=[1000,2999]), 333, 1000))

[State -1,AI Backdash]
type = ChangeState
value = 105
trigger1= var(6)>=1 && numenemy
trigger1= roundstate=2 && statetype=S
trigger1= random < ifelse((enemynear,hitdefattr=SC,AT), 150, 50)
trigger1= ctrl && (stateno!=[100,106]) && (stateno!=[700,706])
trigger1= (enemynear,movetype=A) && backedgedist>=80 && (p2bodydist x=[80,120]) && (enemynear,vel x)

[State -1, AI Chargue ki]
type = ChangeState
value = 830
triggerall= var(6)>=1 && enemy,statetype = L
triggerall= roundstate=2 && statetype!=A && ctrl
triggerall= power<const(data.power) && power<powermax
trigger1= random<150 && !inguarddist && p2movetype!=A && p2dist x >= 330

[State -1, AI FB]
type = ChangeState
value = 3500
triggerall = var(6)>=1
triggerall = numhelper(40000) != 1
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = power >= 2000
trigger1 = ctrl && p2dist x >= 310 && random <= 100
trigger2 = stateno = 210 && movehit && random<861
trigger3 = stateno = 240 && movehit && random<881
trigger5 = stateno = 420 && movehit && random<910

[State -1, AI TG]
type = ChangeState
value = 3800
triggerall = var(6)>=1
triggerall = numhelper(40008) != 1
triggerall= roundstate=2 && statetype!=A && !inguarddist
triggerall= (p2bodydist x=[0,200]) && (p2dist y=[-50,50]) && p2statetype!=L
triggerall = power >= 2000
trigger1 = ctrl && random <= 100
trigger2 = stateno = 210 && movehit && random<361
trigger3 = stateno = 240 && movehit && random<581
trigger4 = stateno = 250 && movehit && random<641
trigger5 = stateno = 420 && movehit && random <810

[State -1, AI Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(6)>=1
triggerall= roundstate=2 && statetype!=A && !inguarddist
triggerall= (p2bodydist x=[0,10]) && (p2dist y=[-50,50]) && p2statetype!=C && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A
trigger1 = ctrl && random <= 620

[State -1, AI Stand Medium Punch]
type = ChangeState
value = 210
triggerall = var(6)>=1
triggerall= roundstate=2 && statetype!=A && !inguarddist
triggerall= (p2bodydist x=[0,10]) && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A
trigger1 = ctrl && random <= 520
trigger2 = stateno = 200 && movehit && random<975
trigger3 = stateno = 230 && movehit && random<965
trigger4 = stateno = 240 && movehit && random<235
trigger5 = stateno = 400 && movehit && random<946
trigger6 = stateno = 430 && movehit && random<951

[State -1, AI Stand Light Kick]
type=changestate
value= 230
triggerall= var(6)>=1
triggerall = P2statetype != A
triggerall = P2statetype != C
triggerall= roundstate=2 && statetype!=A && !inguarddist
triggerall= (p2bodydist x=[0,10]) && (p2dist y=[-50,50]) && p2statetype!=C && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A
trigger1 = ctrl && random <= 620

[State -1, AI Stand Medium kick]
type = ChangeState
value = 240
triggerall = var(6)>=1
triggerall = P2statetype != A
triggerall= roundstate=2 && statetype!=A && !inguarddist
triggerall= (p2bodydist x=[0,10]) && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A
trigger1 = ctrl && random <= 420
trigger2 = stateno = 200 && movehit && random<981
trigger3 = stateno = 210 && movehit && random<991
trigger4 = stateno = 230 && movehit && random<951
trigger5 = stateno = 400 && movehit && random<931
trigger6 = stateno = 410 && movehit && random<861

[State -1, AI Stand Heavy kick]
type = ChangeState
value = 250
triggerall = var(6)>=1
triggerall = P2statetype != A
triggerall= roundstate=2 && statetype!=A && !inguarddist
triggerall= (p2bodydist x=[0,10]) && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A
trigger1 = ctrl && random <= 320
trigger2 = stateno = 200 && movehit && random<861
trigger3 = stateno = 210 && movehit && random<881
trigger4 = stateno = 230 && movehit && random<861
trigger5 = stateno = 240 && movehit && random<871

[State -1, AI Crouch Light Punch]
type = ChangeState
value = 400
triggerall = var(6)>=1
triggerall= roundstate=2 && statetype!=A && !inguarddist
triggerall= (p2bodydist x=[0,10]) && (p2dist y=[-50,50]) && p2statetype!=C && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A
trigger1 = ctrl && random <= 30

[State -1, AI Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = var(6)>=1
triggerall = P2statetype != A
triggerall= roundstate=2 && statetype!=A && !inguarddist
triggerall= (p2bodydist x=[0,13]) && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A
trigger1 = ctrl && random <= 420
trigger2 = stateno = 400 && movehit && random<995
trigger3 = stateno = 430 && movehit && random<965
trigger4 = stateno = 440 && movehit && random<235
trigger5 = stateno = 200 && movehit && random<946
trigger6 = stateno = 230 && movehit && random<951

[State -1, AI Crouch Heavy Punch]
type = ChangeState
value = 420
triggerall = var(6)>=1
triggerall= roundstate=2 && statetype!=A && !inguarddist
triggerall= (p2bodydist x=[0,10]) && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A
trigger1 = ctrl && random <= 220
trigger2 = stateno = 400 && movehit && random<995
trigger3 = stateno = 410 && movehit && random<995
trigger4 = stateno = 440 && movehit && random<995
trigger5 = stateno = 200 && movehit && random<996
trigger6 = stateno = 230 && movehit && random<991

[State -1, AI Crouch Light Kick]
type=changestate
value= 430
triggerall= var(6)>=1
triggerall = P2statetype != A
triggerall = P2statetype != C
triggerall = prevstateno != 430
triggerall= roundstate=2 && statetype!=A && !inguarddist
triggerall= (p2bodydist x=[0,10]) && (p2dist y=[-50,50]) && p2statetype!=C && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A
trigger1 = ctrl && random <= 420

[State -1, AI Crouch Medium kick]
type = ChangeState
value = 440
triggerall = var(6)>=1
triggerall = P2statetype != A
triggerall= roundstate=2 && statetype!=A && !inguarddist
triggerall= (p2bodydist x=[0,10]) && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A
trigger1 = ctrl && random <= 420
trigger2 = stateno = 400 && movehit && random<996
trigger3 = stateno = 410 && movehit && random<991
trigger4 = stateno = 430 && movehit && random<999
trigger5 = stateno = 200 && movehit && random<931
trigger6 = stateno = 210 && movehit && random<861

[State -1, AI Crouch Heavy kick]
type = ChangeState
value = 450
triggerall = var(6)>=1
triggerall = P2statetype != A
triggerall= roundstate=2 && statetype!=A && !inguarddist
triggerall= (p2bodydist x=[0,10]) && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A
trigger1 = ctrl && random <= 620
trigger2 = stateno = 400 && movehit && random<861
trigger3 = stateno = 410 && movehit && random<861
trigger4 = stateno = 430 && movehit && random<881
trigger5 = stateno = 440 && movehit && random<871
trigger6 = stateno = 250 && movehit && random<891

[State -1, AI Air light punch]
type=changestate
value=600
triggerall= var(6)>=1
triggerall= roundstate=2 && statetype=A
triggerall= (p2bodydist x=[0,30]) && (p2dist y=[-50,50]) && p2statetype!=L
trigger1= ctrl && random<325
trigger2 = ctrl && prevstateno = 4382 && random<825

[State -1, AI Air medium punch]
type=changestate
value=610
triggerall= var(6)>=1
triggerall= roundstate=2 && statetype=A
triggerall= (p2bodydist x=[0,30]) && (p2dist y=[-50,50]) && p2statetype!=L
trigger1= ctrl && random<625
trigger2 = stateno = 600 && movehit && random<925
trigger3 = stateno = 630 && movehit && random<925
trigger4 = ctrl && prevstateno = 4382 && random<825

[State -1, AI Air heavy pucnh]
type=changestate
value=620
triggerall= var(6)>=1
triggerall= roundstate=2 && statetype=A && !inguarddist
triggerall= (p2bodydist x=[0,13]) && (p2dist y=[-50,50]) && p2statetype!=L
trigger1= ctrl && random<125
trigger2 = stateno = 600 && movehit && random<125
trigger3 = stateno = 610 && movehit && random<425
trigger4 = stateno = 630 && movehit && random<125
trigger5 = stateno = 640 && movehit && random<425

[State -1, AI Air light kick]
type=changestate
value=630
triggerall= var(6)>=1
triggerall= roundstate=2 && statetype=A
triggerall= (p2bodydist x=[0,20]) && (p2dist y=[-50,50]) && p2statetype!=L
trigger1= ctrl && random<625
trigger2 = ctrl && prevstateno = 4382 && random<825

[State -1, AI Air medium kick]
type=changestate
value=640
triggerall= var(6)>=1
triggerall= roundstate=2 && statetype=A
triggerall= (p2bodydist x=[0,20]) && (p2dist y=[-50,50]) && p2statetype!=L
trigger1= ctrl && random<525
trigger2 = stateno = 600 && movehit && random<825
trigger3 = stateno = 610 && movehit && random<995
trigger4 = stateno = 630 && movehit && random<925
trigger5 = ctrl && prevstateno = 4382 && random<825

[State -1, AI Air heavy kick]
type=changestate
value=650
triggerall= var(6)>=1
triggerall= roundstate=2 && statetype=A && !inguarddist
triggerall= (p2bodydist x=[0,20]) && (p2dist y=[-50,50]) && p2statetype!=L
trigger1= ctrl && random<425
trigger2 = stateno = 600 && movehit && random<125
trigger3 = stateno = 610 && movehit && random<225
trigger4 = stateno = 630 && movehit && random<325
trigger5 = stateno = 640 && movehit && random<695
trigger6 = ctrl && prevstateno = 4382 && random<825

[State -1, AI Stand fireball]
type = ChangeState
value = 220
triggerall = var(6)>=1
triggerall= roundstate=2 && statetype!=A && !inguarddist
triggerall= (p2bodydist x=[200,710]) && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A
triggerall = power >= 500
trigger1 = ctrl && random <= 165
trigger2 = stateno = 221 && movehit && random<175
trigger3 = stateno = 200 && movehit && random<175
trigger4 = stateno = 230 && movehit && random<165
trigger5 = stateno = 240 && movehit && random<135
trigger6 = stateno = 400 && movehit && random<146
trigger7 = stateno = 430 && movehit && random<151

[State -1, AI Air Wind-roll]
type = ChangeState
value = 2350
triggerall = var(6)>=1
triggerall= roundstate=2 && statetype=A && !inguarddist && power > 300
triggerall= (p2bodydist x=[0,10]) && (p2dist y=[-50,50]) && p2statetype!=L
trigger1= ctrl && random<15
trigger2 = stateno = 620 && movehit && random<535
trigger3 = stateno = 640 && movehit && random<325
trigger4 = stateno = 650 && movehit && random<195
trigger5 = ctrl && prevstateno = 4382 && random<15

[State -1, AI Air ki-explosion]
type = ChangeState
value = 1850
triggerall = var(6)>=1
triggerall= roundstate=2 && statetype=A && !inguarddist && power > 300
triggerall= (p2bodydist x=[0,200]) && (p2dist y=[-50,50]) && p2statetype!=L
trigger1= ctrl && p2dist x < 30 && random<359
trigger2 = stateno = 620 && movehit && random<335
trigger3 = stateno = 640 && movehit && random<425
trigger4 = stateno = 650 && movehit && random<195
trigger5 = ctrl && prevstateno = 4382 && random<725

[State -1, AI Air kikouha]
type = ChangeState
value = 1750
triggerall = var(6)>=1
triggerall= roundstate=2 && statetype=A && !inguarddist && power > 1000
triggerall= (p2bodydist x=[0,300]) && (p2dist y=[-50,50]) && p2statetype!=L
trigger1= ctrl && random<551
trigger2 = stateno = 620 && movehit && random<775
trigger3 = stateno = 640 && movehit && random<425
trigger4 = stateno = 650 && movehit && random<145
trigger5 = ctrl && prevstateno = 4382 && random<425

[State -1, AI Dash-Punch]
type = ChangeState
value = 1500
triggerall = var(6)>=1
triggerall = statetype != A && power > 300
triggerall = p2statetype != L
trigger1 = ctrl && p2dist x < 30 && random <= 10
trigger2 = stateno = 210 && movehit && random<161
trigger3 = stateno = 240 && movehit && random<181
trigger4 = stateno = 250 && movehit && random<141
trigger5 = stateno = 420 && movehit && random <110

[State -1, AI Fire-Ring]
type = ChangeState
value = 1600
triggerall = var(6)>=1
triggerall = statetype != A && power > 300
triggerall = p2statetype != L
trigger1 = ctrl && p2dist x < 10 && random <= 10
trigger2 = stateno = 210 && movehit && random<161
trigger3 = stateno = 240 && movehit && random<181
trigger4 = stateno = 250 && movehit && random<141
trigger5 = stateno = 420 && movehit && random <110

[State -1, AI Fire-Ring]
type = ChangeState
value = 1650
triggerall = var(6)>=1
triggerall = statetype != A && power > 300
triggerall = p2statetype != L
trigger1 = stateno = 1600 && movehit && random<999

[State -1, AI Water Geyser and Rock-Stomp]
type = ChangeState
value = ifelse(random > 500 ,1900,2100)
triggerall = var(6)>=1
triggerall = statetype != A
triggerall = p2statetype != L
trigger1 = ctrl && p2dist x < 30 && random <= 10
trigger2 = stateno = 210 && movehit && random<161
trigger3 = stateno = 240 && movehit && random<181
trigger4 = stateno = 250 && movehit && random<161
trigger5 = stateno = 450 && movehit && random <190

[State -1, AI Water Geyser and Rock-Stomp]
type = ChangeState
value = ifelse(random > 500 ,2200,2300)
triggerall = var(6)>=1
triggerall = statetype != A
triggerall = p2statetype != L
trigger1 = ctrl && p2dist x < 30 && random <= 1
trigger2 = stateno = 210 && movehit && random<161
trigger3 = stateno = 240 && movehit && random<181
trigger4 = stateno = 250 && movehit && random<161
trigger5 = stateno = 450 && movehit && random <190

[State -1, AI Fast-Motion]
type = ChangeState
value = ifelse(random > 500 ,2500,2600)
triggerall = var(6)>=1
triggerall = statetype != A && power >= 300
triggerall = p2statetype != L
trigger1 = stateno = 210 && movehit && random<161
trigger2 = stateno = 210 && movehit && random<161
trigger3 = stateno = 240 && movehit && random<181
trigger4 = stateno = 250 && movehit && random<161
trigger5 = stateno = 450 && movehit && random <190

[State -1, AI Fast-Motion]
type = ChangeState
value = ifelse(random > 500 ,2700,2800)
triggerall = var(6)>=1
triggerall = statetype != A && power >= 300
triggerall = p2statetype != L
trigger1 = stateno = 210 && movehit && random<161
trigger2 = stateno = 210 && movehit && random<161
trigger3 = stateno = 240 && movehit && random<181
trigger4 = stateno = 250 && movehit && random<161
trigger5 = stateno = 450 && movehit && random <190

[State -1, AI Air Fast-Motion]
type = ChangeState
value = ifelse(random > 500 ,2900,2901)
triggerall = var(6)>=1
triggerall = power >= 300
triggerall= roundstate=2 && statetype=A && !inguarddist
triggerall= (p2bodydist x=[0,50]) && (p2dist y=[-50,50]) && p2statetype!=L
trigger1 = stateno = 620 && movehit && random<135
trigger2 = stateno = 630 && movehit && random<125
trigger3 = stateno = 640 && movehit && random<125
trigger4 = stateno = 650 && movehit && random<195

;=========================================================================

[State -1, Chidori]
type = ChangeState
value = 3900
triggerall = var(6) <= 0
triggerall = numhelper(40009) != 1
triggerall = command = "Chidori"
triggerall = power >= 2000
trigger1 = (statetype = s) && ctrl

[State -1, Twister]
type = ChangeState
value = 3800
triggerall = var(6) <= 0
triggerall = numhelper(40008) != 1
triggerall = command = "Twister"
triggerall = power >= 2000
trigger1 = (statetype = s) && ctrl

[State -1, Fire Breath]
type = ChangeState
value = 3500
triggerall = var(6) <= 0
triggerall = numhelper(40000) != 1
triggerall = command = "FireBreath"
triggerall = power >= 2000
trigger1 = (statetype = s) && ctrl

[State -1, Tsunami]
type = ChangeState
value = 3700
triggerall = var(6) <= 0
triggerall = numhelper(40007) != 1
triggerall = command = "Tsunami"
triggerall = power >= 2000
trigger1 = (statetype = s) && ctrl

[State -1, Valley of Rock`s]
type = ChangeState
value = 3600
triggerall = var(6) <= 0
triggerall = command = "Valley of Rock`s"
triggerall = power >= 2000
trigger1 = (statetype = s) && ctrl

[State -1, BurningStage]
type = ChangeState
value = 4600
triggerall = var(6) <= 0
triggerall = numhelper(70001) != 2
triggerall = command = "BurningStage"
triggerall = power >= 5000
trigger1 = (statetype = s) && ctrl

[State -1, OceanIllusion]
type = ChangeState
value = 4500
triggerall = var(6) <= 0
triggerall = numhelper(70000) != 1
triggerall = command = "OceanIllusion"
triggerall = power >= 5000
trigger1 = (statetype = s) && ctrl

[State -1, AirDownKick]
type = ChangeState
value = 2400
triggerall = var(6)<= 0
triggerall = command = "DF_a"
trigger1 = statetype = a && ctrl && power > 300

[State -1, AirDownKick]
type = ChangeState
value = 2400
triggerall = var(6)<= 0
triggerall = command = "DF_b"
trigger1 = statetype = a && ctrl && power > 300

[State -1, AirDownKick]
type = ChangeState
value = 2400
triggerall = var(6)<= 0
triggerall = command = "DF_c"
trigger1 = statetype = a && ctrl && power > 300

[State -1, WindRoll-Air]
type = ChangeState
value = 2350
triggerall = var(6)<= 0
triggerall = command = "DB_a"
trigger1 = statetype = a && ctrl && power > 300

[State -1, WindRoll-Air]
type = ChangeState
value = 2350
triggerall = var(6)<= 0
triggerall = command = "DB_b"
trigger1 = statetype = a && ctrl && power > 300

[State -1, WindRoll-Air]
type = ChangeState
value = 2350
triggerall = var(6)<= 0
triggerall = command = "DB_c"
trigger1 = statetype = a && ctrl && power > 300

[State -1, WindRoll]
type = ChangeState
value = 2300
triggerall = var(6)<= 0
triggerall = command = "DB_a"
trigger1 = statetype = S && ctrl && power > 300

[State -1, WindRoll]
type = ChangeState
value = 2300
triggerall = var(6)<= 0
triggerall = command = "DB_b"
trigger1 = statetype = S && ctrl && power > 300

[State -1, WindRoll]
type = ChangeState
value = 2300
triggerall = var(6)<= 0
triggerall = command = "DB_c"
trigger1 = statetype = S && ctrl && power > 300

[State -1, WaterGeiser]
type = ChangeState
value = 1900
triggerall = var(6)<= 0
triggerall = command = "FDDF_a"
trigger1 = statetype = S && ctrl && power > 300

[State -1, WaterGeiser]
type = ChangeState
value = 1900
triggerall = var(6)<= 0
triggerall = command = "FDDF_b"
trigger1 = statetype = S && ctrl && power > 300

[State -1, EarthStomp!]
type = ChangeState
value = 2100
triggerall = var(6)<= 0
triggerall = command = "DF_c"
trigger1 = statetype = S && ctrl && power > 300

[State -1, Shadow Punch]
type = ChangeState
value = 1500
triggerall = var(6)<= 0
triggerall = command = "DF_a"
trigger1 = statetype = S && ctrl

[State -1, Shadow Punch]
type = ChangeState
value = 1550
triggerall = var(6)<= 0
triggerall = command = "DF_b"
trigger1 = statetype = S && ctrl

[State -1, Fire Ring]
type = ChangeState
value = 1600
triggerall = var(6)<= 0
triggerall = command = "DF_x"
trigger1 = statetype = S && ctrl && power > 300

[State -1, Kykouha]
type = ChangeState
value =  1700
triggerall = var(6)<= 0
triggerall = command = "DB_z"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl

[State -1, Kykouha]
type = ChangeState
value =  1750
triggerall = var(6)<= 0
triggerall = command = "DB_z"
triggerall = power >= 1000
trigger1 = (statetype = a) && ctrl

[State -1, Aura Explosion]
type = ChangeState
value =  1800
triggerall = var(6)<= 0
triggerall = command = "DB_y"
triggerall = power >= 300
trigger1 = (statetype = s) && ctrl

[State -1, Aura Explosion]
type = ChangeState
value =  1850
triggerall = var(6)<= 0
triggerall = command = "DB_y"
triggerall = power >= 300
trigger1 = (statetype = a) && ctrl


;===============================================================================

;===============================================================================
;-------------------------------------------------------------------------------
[State -1, Shogekiha]
type = ChangeState
value = 2200
triggerall = var(6)<= 0
triggerall = command = "DF_z"
trigger1 = (statetype = s) && ctrl && power > 300

;===============================================================================
;-------------------------------------------------------------------------------
[State -1, Renzouken]
type = ChangeState
value = 220
triggerall = var(6)<= 0
triggerall = command = "z" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger1 = power >= 200
trigger2 = (stateno = [200,499]) && (movecontact = 1)

[State -1, Charge Ki]
type = ChangeState
value = 900
triggerall = var(6)<= 0
triggerall = ctrl && power < 5000
trigger1 = command = "hold_a" && command = "hold_x" && statetype = S

[State -1, Hyper Velocity]
type = ChangeState
value = 7099
triggerall = var(6) <= 0
triggerall = command = "Teletransporte Atr"
trigger1 = (statetype = s) && ctrl

[State -1, Hyper Velocity]
type = ChangeState
value = 7098
triggerall = var(6) <= 0
triggerall = command = "Teletransporte Ade"
trigger1 = (statetype = s) && ctrl

[State -1, Hyper Velocity]
type = ChangeState
value = 883
triggerall = var(6) <= 0
triggerall = command = "Teletransporte Junto p2"
triggerall = power >= 800
trigger1 =  ctrl

;===========================================================================
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(6)<= 0
trigger1 = command = "FF" && statetype = S && ctrl

[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(6)<= 0
trigger1 = command = "BB" && statetype = S && ctrl

;===============================================================================
;-------------------------------------------------------------------------------
[State -1, Stand Punch 1]
type = ChangeState
value = 200
triggerall = var(6)<= 0
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl

[State -1, Stand Punch 2]
type = ChangeState
value = 210
triggerall = var(6)<= 0
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl

[State -1, Stand Kick 1]
type = ChangeState
value = 230
triggerall = var(6)<= 0
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl

[State -1, Stand Kick 2]
type = ChangeState
value = 240
triggerall = var(6)<= 0
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl

[State -1, Stand Kick 3]
type = ChangeState
value = 250
triggerall = var(6)<= 0
triggerall = command = "c" && command != "holddown"
trigger1 = statetype = S && ctrl


;===============================================================================
;-------------------------------------------------------------------------------
[State -1, Crouch Punch 1]
type = ChangeState
value = 400
triggerall = var(6)<= 0
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = 410 && movehit) && time <= 5 && hitcount<=5

[State -1, Crouch Punch 2]
type = ChangeState
value = 410
triggerall = var(6)<= 0
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl

[State -1, Crouch Punch 3]
type = ChangeState
value = 420
triggerall = var(6)<= 0
triggerall = command = "z" && command = "holddown"
trigger1 = statetype = C && ctrl

[State -1, Crouch Kick 1]
type = ChangeState
value = 430
triggerall = var(6)<= 0
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl

[State -1, Crouch Kick 2]
type = ChangeState
value = 440
triggerall = var(6)<= 0
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl

[State -1, Crouch Kick 3]
type = ChangeState
value = 450
triggerall = var(6)<= 0
triggerall = command = "c" && command = "holddown"
trigger1 = statetype = C && ctrl

;---------------------------------------------------------------------------
[State -1, Jump Punch 1]
type = ChangeState
value = 600
triggerall = var(6)<= 0
triggerall = command = "x"
trigger1 = statetype = A && ctrl

[State -1, Jump Punch 2]
type = ChangeState
value = 610
triggerall = var(6)<= 0
triggerall = command = "y"
trigger1 = statetype = A && ctrl

[State -1, Jump Punch 3]
type = ChangeState
value = 620
triggerall = var(6)<= 0
triggerall = command = "z"
trigger1 = statetype = A && ctrl

[State -1, Jump Kick 1]
type = ChangeState
value = 630
triggerall = var(6)<= 0
triggerall = command = "a"
trigger1 = statetype = A && ctrl

[State -1, Jump Kick 2]
type = ChangeState
value = 640
triggerall = var(6)<= 0
triggerall = command = "b"
trigger1 = statetype = A && ctrl

[State -1, Jump Kick 3]
type = ChangeState
value = 650
triggerall = var(6)<= 0
triggerall = command = "c"
trigger1 = statetype = A && ctrl


