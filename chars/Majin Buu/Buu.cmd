->>COMANDOS  MECHA FREEZA BY MUGEN MUNDO TEAM Programado Por Marcus <<-

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
--------Burrice Artificial-----------
[Command]
name = "IA1"
command = D, DF, F, b,a
time = 1
[Command]
name = "IA2"
command = D, DF, F, b,a+b
time = 1
[Command]
name = "IA3"
command = D, DF, F, c,a+b+c
time = 1
[Command]
name = "IA4"
command = D, DF, F, x,a+b+c+z
time = 1
[Command]
name = "IA5"
command = D, DF, F, x,a+b+c+z+x
time = 1
[Command]
name = "IA6"
command = D, DF, F, b,a+b+c+z+x+y
time = 1
[Command]
name = "IA7"
command = D, DF, F, b,a+b+c+z+x+y+U
time = 1
[Command]
name = "IA8"
command = D, DF, F, c,a+b+c+z+x+y+U+D
time = 1
[Command]
name = "IA9"
command = D, DF, F, x,a+b+c+z+x+y+U+D+F
time = 1
[Command]
name = "IA10"
command = D, DF, F, x
time = 1
[Command]
name = "IA11"
command = D, DF, F, b
time = 1
[Command]
name = "IA12"
command = D, DF, F, b
time = 1
[Command]
name = "IA13"
command = D, DF, F, c,D, DF, F
time = 1
[Command]
name = "IA14"
command = D, DF, F ,D, DF, F
time = 1
[Command]
name = "IA15"
command = D, DF, F, x,a+b+c+z+x+y+U+D+F
time = 1
[Command]
name = "IA16"
command = D, DF, F, b,a+b+c+z+x+y+U+D
time = 1
[Command]
name = "IA17"
command = D, DF, F, b,a+b+c+z+x+y+U
time = 1
[Command]
name = "IA18"
command = D, DF, F, c,a+b+c+z+x+y
time = 1
[Command]
name = "IA19"
command = D, DF, F, x,a+b+c+z+x
time = 1
[Command]
name = "IA20"
command = D, DF, F, x,a+b+c+z
time = 1
[Command]
name = "IA21"
command = D, DF, F, b,a+b+c
time = 1
[Command]
name = "IA22"
command = D, DF, F, b,a+b
time = 1
[Command]
name = "IA23"
command = D, DF, F, c,a+b+c+x+y+U+D+F+B
time = 1
[Command]
name = "IA24"
command = D, DF, F, x,a+c+z+x+y+U+D+F+B
time = 1
[Command]
name = "IA25"
command = D, DF, F, x,a+b+c+z+x+y+U+D+F+B
time = 1
[Command]
name = "IA26"
command = D, DF, F, b,a+b+c+z+x+y+U+F+B
time = 1
[Command]
name = "IA27"
command = D, DF, F, b,a+b+c+x+y+U+D+F
time = 1
[Command]
name = "IA28"
command = D, DF, F, c,a+b+c+z+x+y+F+B
time = 1
--------- quase Inuteis----------
[Command]
name = "Hyper Velocity"
command = a+b

[command]
name = "Taioken"
command =y+z
time = 10

[Command]
name = "SuperJump"
command = $D, $U
------------------Combinaçoes e combos-------------
[command]
name = "Piccolochute"
command =D,B,x
time = 10

[command]
name = "Piccolosocochute"
command =D,B,z
time = 10

[command]
name = "Hollycombo"
command =D,B,a
time = 10

[command]
name = "Piccolosoco"
command =D,B,y
time = 10

[command]
name = "4456"
command =D,B,b
time = 10
---------------  combos de <- ->
[command]
name = "Combo1"
command =B,F,b
time =8

[command]
name = "Combo2"
command = B,F,a
time = 8

[command]
name = "Combo3"
command = B,F,y
time =8

[command]
name = "DIED"
command =B,F,z
time = 10

[command]
name = "Combo4"
command = B,F,x
time = 8


-------------Hypers-------------
[command]
name = "Combo5"
command =B,D,F,x+y
time = 20

[command]
name = "Combo6"
command = B,D,F,y+a
time = 20

[command]
name = "Combo7"
command = B,D,F,b+x
time = 25

[command]
name = "Super Galick Ho"
command =B,D,F,a+x
time = 20
---------------Speciais-----------------------
[command]
name = "BigBang"
command =B,D,F,b
time = 15

[command]
name = "galick ho"
command =B,D,F,x
time = 15

[command]
name = "FSATTACK"
command = B,D,F,c
time = 15

[command]
name = "Barrera de ki"
command = B,D,F,y
time = 15
command.buffer.time = 1

[command]
name = "Finalflash"
command = B,D,F,a
time = 15
command.buffer.time = 1

[command]
name = "Kienzan"
command = B,D,F,z
time = 15
command.buffer.time = 1

[command]
name = "Fireball"
command =c
time = 10
[command]
name = "EyeBeam"
command =D,B,c
time = 10
;--------------------------Minisequencias ja que essa porra não ficou pronta ainda
[command]
name = "Roll"
command =D,F,x
time = 8
[command]
name = "Roll2"
command =D,F,y
time =8
[command]
name = "Roll3"
command =D,F,z
time = 8
[command]
name = "Roll4"
command =D,F,a
time =8
;-| Special Motions |------------------------------------------------------
[Command]
name = "carregar ki"
command = /a

[Command]
name = "carregar ki2"
command = /b
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
name = "fly"
command = b+y
time = 1
;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x
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
___________PODERES______________

[Statedef -1]

[State -1]
type = varset
triggerall = var(6) != 1
trigger1 = command = "IA1"
trigger2 = command = "IA2"
trigger3 = command = "IA3"
trigger4 = command = "IA4"
trigger5 = command = "IA5"
trigger6 = command = "IA6"
trigger7 = command = "IA7"
trigger8 = command = "IA8"
trigger9 = command = "IA9"
trigger10 = command = "IA10"
trigger11 = command = "IA11"
trigger12 = command = "IA12"
trigger13 = command = "IA13"
trigger14 = command = "IA14"
trigger15 = command = "IA15"
trigger16 = command = "IA16"
trigger17= command = "IA17"
trigger18= command = "IA18"
trigger19= command = "IA19"
trigger20= command = "IA20"
trigger21 = command = "IA21"
trigger22 = command = "IA22"
trigger23 = command = "IA23"
trigger24 = command = "IA24"
trigger25 = command = "IA25"
trigger26 = command = "IA26"
trigger27 = command = "IA27"
trigger28 = command = "IA28"
trigger3= stateno = 1500
v = 6
value = 1

[State -1,Chute]
type = ChangeState
value = 255
triggerall = command = "Piccolochute"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
triggerall=power>100
trigger3= stateno = 1500

[State -1,Chute]
type = ChangeState
value = 265
triggerall = command = "Piccolosoco"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
triggerall=power>100
trigger3= stateno = 1500
[State -1,EyeBeam]
type = ChangeState
value = 977
triggerall = command ="EyeBeam"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
triggerall=power>1000
trigger3= stateno = 1500

;Combo1
[State -1,SocoChute]
type = ChangeState
value = 285
triggerall = command = "Piccolosocochute"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
triggerall=power>200
trigger2 = time > 18
trigger3= stateno = 1500
;Combo1
[State -1,Hollycombo]
type = ChangeState
value = 295
triggerall = command = "Hollycombo"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
triggerall=power>100
trigger2 = time > 18
trigger3= stateno = 1500

;Galick Ho
[State -1,FINAL SHINE ATTACK]
type = ChangeState
value = 8917
triggerall = command = "FSATTACK"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
triggerall=power>2000
trigger3= stateno = 1500

;Taioken
[State -1,Taioken]
type = ChangeState
value = 5455
triggerall = command = "Taioken"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
triggerall=power>500
trigger2 = time > 18
trigger3= stateno = 1500

;Galick Ho
[State -1,Super Galick Ho]
type = ChangeState
value = 8229
triggerall = command = "Super Galick Ho"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
triggerall=power>2500
trigger3= stateno = 1500
;Kienzan
[State -1,Kienzan]
type = ChangeState
value = 3999
triggerall = command = "Kienzan"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
triggerall=power>2000
trigger3= stateno = 1500

[State -1,4456]
type = ChangeState
value = 4456
triggerall = command = "4456"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
triggerall=power>200
trigger3= stateno = 1500

[State -1,Roll]
type = ChangeState
value = 966
triggerall = command = "Roll"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
triggerall=power>100
trigger2 = time > 18



[State -1,Roll]
type = ChangeState
value = 968
triggerall = command = "Roll2"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
triggerall=power>150
trigger2 = time > 18

[State -1,Roll]
type = ChangeState
value = 972
triggerall = command = "Roll4"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
triggerall=power>150
trigger2 = time > 18

[State -1,Roll]
type = ChangeState
value = 970
triggerall = command = "Roll3"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
triggerall=power>158
trigger2 = time > 18


;Kienzan
[State -1,Died]
type = ChangeState
value =2145
triggerall = command = "DIED"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
triggerall=power>100
trigger3= stateno = 1500

;Fireball
[State -1,Fireball]
type = ChangeState
value = 999
triggerall = command = "Fireball"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
triggerall=power>100
trigger2 = time > 18
trigger3= stateno = 1500


;BigBang
[State -1, BigBang]
type = ChangeState
value = 5999
triggerall = command = "BigBang"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
triggerall=power>2000
trigger3= stateno = 1500
;galick ho
[State -1, galick ho]
type = ChangeState
value = 1999
triggerall = command = "galick ho"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
triggerall=power>2000
trigger3= stateno = 1500
;Finalflash
[State -1, Finalflash]
type = ChangeState
value = 4999
triggerall = command = "Finalflash"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
triggerall=power>2000
trigger3= stateno = 1500
;Barrera de ki
[State -1, Barrera de ki]
type = ChangeState
value = 2999
triggerall = command = "Barrera de ki"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
triggerall=power>2000
trigger2 = time > 18
trigger3= stateno = 1500
;Combo1
[State -1,Combo1]
type = ChangeState
value = 212
triggerall = command = "Combo1"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
triggerall=power>200
trigger3= stateno = 1500
;Combo2
[State -1,Combo2]
type = ChangeState
value = 227
triggerall = command = "Combo2"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
triggerall=power>200
trigger3= stateno = 1500
;Combo2
[State -1,Combo2]
type = ChangeState
value = 233
triggerall = command = "Combo3"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
triggerall=power>200
trigger3= stateno = 1500
;Combo4
[State -1,Combo4]
type = ChangeState
value = 245
triggerall = command = "Combo4"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
triggerall=power>200
trigger3= stateno = 1500

;Combo5
[State -1,Combo5]
type = ChangeState
value = 8989
triggerall = command = "Combo5"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
triggerall=power>2500
trigger2 = time > 18
;Combo6
[State -1,Combo6]
type = ChangeState
value =3200
triggerall = command = "Combo6"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
triggerall=power>2500
;Combo7
[State -1,Combo7]
type = ChangeState
value = 8689
triggerall = command = "Combo7"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
triggerall=power>2500
trigger2 = time > 18


[State -1,Hyper Velocity]
type = changestate
value = 305
triggerall = command = "Hyper Velocity"
trigger1=var(58) = 0
trigger1=var(21) = 0
trigger1 = statetype = S
trigger1 = ctrl =1
trigger2 = stateno =200
trigger2 = time > 18
triggerall = power >= 3000
;===========================================================================
;Fly
[State -1, Fly]
type = ChangeState
value = 1500
triggerall = command = "fly"
trigger1 = statetype = A
trigger1 = ctrl = 1
;Fly
[State -1, Fly]
type = ChangeState
value = 1510
triggerall = command = "fly"
trigger1 = statetype != A
trigger1 = ctrl = 1
;---------
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

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 730
triggerall = var (5) =0
triggerall = power <2800
triggerall = ctrl = 1
trigger1 = command = "carregar ki"
trigger1 = command = "carregar ki2"
trigger1 = statetype = S

[State -1]
type = ChangeState
value = 730
triggerall = var (5) =0
triggerall = power <3000
trigger1 = ctrl = 0
trigger1 = command = "carregar ki"
trigger1 = command = "carregar ki2"
trigger1 = stateno = 1500


;Super Jump
[State -1,SJ]
type=ChangeState
value=707
triggerall=var(59)=0
triggerall=command="SuperJump"
triggerall=alive
triggerall=pos y>=0
triggerall=!win
trigger1=(statetype!=A&&ctrl)
;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
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


;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != C
trigger1 = ctrl=1
trigger2 = stateno = 220
Trigger3 = P2Dist X > 0
trigger2 = time > 20
trigger3= stateno = 1500


;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
trigger2 = stateno = 210 & Movehit=1
trigger3= stateno = 1500
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 210
triggerall = command = "y"
trigger2 = stateno = 200
trigger3= stateno = 1500
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 220
triggerall = command = "z"
trigger2 = stateno = 200
trigger3= stateno = 1500
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 230
triggerall = command = "a"
trigger2 = stateno = 200
trigger3= stateno = 1500
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Stand Light Punch]
type = ChangeState
value = 240
triggerall = command = "b"
trigger2 = stateno = 200
trigger3= stateno = 1500
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 250
triggerall = command = "c"
trigger2 = stateno = 200
trigger3= stateno = 1500
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;KO finish
[State -1, ]
type            = Helper
trigger1        =(enemynear(0),alive=0)
trigger1        =(numhelper(1222)=0)
helpertype      = normal
name            = "Kill"
ID              = 1222
pos             = 0,-500
postype         = p1
stateno         = 1122
keyctrl         = 0
ignorehitpause  = 1
persistent      = 0
