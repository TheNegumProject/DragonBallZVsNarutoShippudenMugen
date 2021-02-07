;Goten Command File
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
[Defaults]

command.time = 15
command.buffer.time = 1
;--| Super Motions |-------------------------------------------------------
[Command]
name = "Kamehameha"
command = ~D,B,F, a
time = 20

[Command]
name = "SuperKiBlast"
command = ~D,B,F, b
time = 20

[Command]
name = "FamillyKamehameha"
command = ~D,B, a+c
time = 20

[Command]
name = "Pistols"
command = x+z
time = 20

[Command]
name = "SuperKamehameha"
command = ~D,B,F, c
time = 20
;-| Special Motions |------------------------------------------------------
[Command]
name = "zanzouken"
command = z
time = 1

[Command]
name = "BootAttack"
command = D,B,x
time = 20

[Command]
name = "charge1"
command = /a

[Command]
name = "charge2"
command = /x

[command]
name = "taunt"
command = s
time = 20

[Command]
name = "QCB_a"
command = ~D, DB, B, a
time = 15

[Command]
name = "QCB_b"
command = ~D, DB, B, b
time = 15

[Command]
name = "QCB_c"
command = ~D, DB, B, c
time = 15

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[command]
name = "QCD_b"
command = ~F,D,b
time = 15
;-| Double Tap |-----------------------------------------------------------
[Command]
name="Super Jump"
command=~D,U

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

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /D,a
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
name = "holdx"
command = /x
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
;---------------------------------------------------------------------------
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;---------------------------------------------------------------------------
;------------------------------SUPERS---------------------------------------
;---------------------------------------------------------------------------
;Kamehameha!
[State -1: Kamehameha]
type = ChangeState
value = 509
triggerall = (command = "Kamehameha")
triggerall = (power >= 1000)
trigger1= (statetype = S) && (ctrl)
;---------------------------------------------------------------------------
;SuperKiBlast!
[State -1: SuperKiBlast]
type = ChangeState
value = 1233
triggerall = (command = "SuperKiBlast")
triggerall = (power >= 2000)
trigger1 = (statetype = S) && (ctrl)
;---------------------------------------------------------------------------
;SuperKamehameha!
[State -1, SuperKamehameha]
type = ChangeState
value = 1201
triggerall = power >= 3000
triggerall = statetype = S
trigger2 = stateno = 255
trigger2 = time >= 8
trigger1 = ctrl
trigger1 = command = "SuperKamehameha"
;---------------------------------------------------------------------------
;FamillyKamehameha!
[State -1,FamillyKamehameha]
type = null;ChangeState
value = 1915
triggerall = command = "FamillyKamehameha"
trigger1 = (statetype = S) && (ctrl)
;---------------------------------------------------------------------------
;Pistols! - (BETA)
[State -1,Super Combo!]
type = null;ChangeState
value = 1951
triggerall = command = "Pistols"
trigger1 = (statetype = S) && (ctrl)
;---------------------------------------------------------------------------
;-----------------------------SPECIALS--------------------------------------
;---------------------------------------------------------------------------
[State -1, 2100]
type = ChangeState
value = 2100
triggerall = (command = "QCB_a") && (var(3) < 3) && (power > 0)
trigger1 = ctrl = 1
trigger3 = ((stateno = [2102,2104]) && (movecontact) && AnimElem = 2,>5)
;---------------------------------------------------------------------------
[State -1, 2100]
type = ChangeState
value = 210000
triggerall = (command = "QCB_b") && (var(3) < 3) && (power > 0)
trigger1 = ctrl = 1
trigger3 = ((stateno = [2102,2104]) && (movecontact) && AnimElem = 2,>5)
;---------------------------------------------------------------------------
[State -1, 2100]
type = ChangeState
value = 21000
triggerall = (command = "QCB_c") && (var(3) < 3) && (power > 0)
trigger1 = ctrl = 1
trigger3 = ((stateno = [2102,2104]) && (movecontact) && AnimElem = 2,>5)
;---------------------------------------------------------------------------
[State -1, 1201]
type = ChangeState
value = 12012
triggerall = var(59) = 0
triggerall = (command = "QCD_b")
trigger1 = (ctrl) && (statetype = A)
;----------------------------------------------------------------------------
;Zanzouken
[State -1]
type = ChangeState
value = 1600
triggerall = command = "zanzouken"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
; Zanzoken Forward
[State -1, Zanzoken.F]
type = ChangeState
value = 2900
triggerall = (command = "b" && command = "y") && (prevstateno != 2900 || prevstateno != 2901) && (stateno = 100 || stateno = 102)
trigger1 = (statetype = S || statetype = A) && ctrl = 1
;---------------------------------------------------------------------------
; Zanzoken Backward
[State -1, Zanzoken.B]
type = ChangeState
value = 2905
triggerall = (command = "b" && command = "y") && (prevstateno != 2905 || prevstateno != 2906) && (stateno = 105)
trigger1 = (statetype = S || statetype = A) && ctrl = 1
;---------------------------------------------------------------------------
;Charge
[State -1, Charge]
type 			= ChangeState
value 			= 956
triggerall 		= command = "charge1"
triggerall 		= command = "charge2"
triggerall = Power < 3000
trigger1		= (StateType = S) && (Ctrl)
;---------------------------------------------------------------------------
; Fireball Weak
[State -1, Fireball.W]
type = ChangeState
value = 1205
triggerall = (command = "QCB_x" || command = "QCB_y") && command != "holddown"
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;BootAttack!
[State -1, BootAttack]
type = ChangeState
value = 3760
triggerall = command = "BootAttack"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "taunt"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;DashElbowAttack
[State -1, DashElbowAttack]
type = ChangeState
value = 2712
triggerall = (command = "x" || command = "y" || command = "z") && command != "holddown" && stateno = 100
trigger1 = statetype = S && ctrl = 1
;---------------------------------------------------------------------------
;Air Run Fwd
[State -1: 		Air Run Fwd]
type 			= ChangeState
value 		= 103
triggerall 		= (Command = "FF") && (StateNo != [100,106])
trigger1		= (StateType = A) && (Ctrl)
trigger2		= ((Stateno = 600) && (movecontact))
trigger3		= ((Stateno = 601) && (movecontact))
trigger4		= ((Stateno = 610) && (movecontact))
trigger5		= ((Stateno = 611) && (movecontact))
trigger6		= ((Stateno = 650) && (movecontact))
trigger7		= ((Stateno = 675) && (movecontact))

;---------------------------------------------------------------------------
;Air Run Back
[State -1: 		Air Run Back]
type 			= ChangeState
value 		= 107
triggerall 		= (Command = "BB") && (StateNo != [100,106])
trigger1		= (StateType = A) && (Ctrl)
trigger2		= ((Stateno = 600) && (movecontact))
trigger3		= ((Stateno = 601) && (movecontact))
trigger4		= ((Stateno = 610) && (movecontact))
trigger5		= ((Stateno = 611) && (movecontact))
trigger6		= ((Stateno = 650) && (movecontact))
trigger7		= ((Stateno = 675) && (movecontact))

;---------------------------------------------------------------------------
;Run Up
[State -1: 		Run Up]
type 			= ChangeState
value 		= 110
triggerall 		= (Command = "UU") && (StateNo != [100,106])
trigger1		= (StateType = A) && (Ctrl)
trigger2		= ((Stateno = 600) && (movecontact))
trigger3		= ((Stateno = 601) && (movecontact))
trigger4		= ((Stateno = 610) && (movecontact))
trigger5		= ((Stateno = 611) && (movecontact))
trigger6		= ((Stateno = 650) && (movecontact))
trigger7		= ((Stateno = 675) && (movecontact))

;---------------------------------------------------------------------------
;Run Down
[State -1: 		Run Down]
type 			= ChangeState
value 		= 112
triggerall 		= (Command = "DD") && (StateNo != [100,106])
trigger1		= (StateType = A) && (Ctrl)
trigger2		= ((Stateno = 600) && (movecontact))
trigger3		= ((Stateno = 601) && (movecontact))
trigger4		= ((Stateno = 610) && (movecontact))
trigger5		= ((Stateno = 611) && (movecontact))
trigger6		= ((Stateno = 650) && (movecontact))
trigger7		= ((Stateno = 675) && (movecontact))
;---------------------------------------------------------------------------
;PunchCombo
[State -1, Axe Kick]
type = ChangeState
value = 22213
triggerall = command = "x" && command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 210) && time > 3
trigger3 = (stateno = 220) && time > 3
trigger4 = (stateno = 240) && time > 3
;---------------------------------------------------------------------------
;KickCombo
[State -1, Axe Kick]
type = ChangeState
value = 22215
triggerall = command = "a" && command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200) && time > 3
trigger3 = (stateno = 240) && time > 3
trigger4 = (stateno = 210) && time > 3
;---------------------------------------------------------------------------
;HeadSmashCombo
[State -1, Axe Kick]
type = ChangeState
value = 22217
triggerall = command = "b" && command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200) && time > 3
trigger3 = (stateno = 240) && time > 3
trigger4 = (stateno = 210) && time > 3
;-----------------------------------------------------------------------------
;Super Jump
[State -1,SJ]
type=ChangeState
value=707
triggerall=var(59)=0
triggerall=command="Super Jump"
triggerall=alive
triggerall=pos y>=0
triggerall=!win
trigger1=(statetype!=A&&ctrl)
;---------------------------------------------------------------------------
;------------------------------BASICS---------------------------------------
;---------------------------------------------------------------------------
;Stand Weak Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 210
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2  = (stateno = 240) || (stateno = 220)
trigger2  = (movecontact)
trigger3 = stateno = 240 && movecontact
trigger4 = stateno = 220 && movecontact
;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 220
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger2  = (stateno = 200) || (stateno = 211)|| (stateno = 213) && (time > 10) ||(stateno = 302) || (stateno = 301)|| (stateno = 300)|| (stateno = 303)
trigger2  = (movecontact)
trigger2 = time >= 8
trigger1 = ctrl = 1
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 240 && movecontact
;---------------------------------------------------------------------------
;Stand Weak Kick
[State -1, Stand Strong Punch]
type = ChangeState
value = 240
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger2  = (stateno = 220)|| (stateno = 213) && (time > 10) ||(stateno = 302) || (stateno = 301)|| (stateno = 300)|| (stateno = 303)
trigger2  = (movecontact)
trigger2 = time >= 8
trigger1 = ctrl = 1
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 200 && movecontact
trigger5 = stateno = 210 && movecontact
;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1]
type = ChangeState
Value = 200
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger2  = (stateno = 230)
trigger2 = time >= 8
trigger1 = ctrl = 1
trigger3 = stateno = 800 && movecontact
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = 220 && movecontact
;---------------------------------------------------------------------------
;Stand Slash Punch
[State -1, Stand Slash Punch]
type = ChangeState
value = 800
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 650
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger3 = stateno = 440 && movecontact
trigger4 = stateno = 300 && movecontact
trigger1 = ctrl
;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 2450
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2  = (stateno = 300)
trigger2  = (movecontact)
trigger2 = time >= 5
trigger3 = stateno = 300 && movecontact
trigger4 = stateno = 650 && movecontact
trigger5 = stateno = 440 && movecontact
;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2  = (stateno = 300)
trigger2  = (movecontact)
trigger2 = time >= 5
trigger3 = stateno = 300 && movecontact
trigger4 = stateno = 650 && movecontact
trigger5 = stateno = 440 && movecontact
;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 300
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 200)
trigger2 = (time > 9) || (movecontact && time > 5)
trigger3 = stateno = 440 && movecontact
trigger4 = stateno = 650 && movecontact
;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger3 = stateno = 240 && movecontact
trigger4 = stateno = 280 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 250 && movecontact
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger3 = stateno = 240 && movecontact
trigger4 = stateno = 280 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 250 && movecontact
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger3 = stateno = 240 && movecontact
trigger4 = stateno = 280 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 250 && movecontact
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger3 = stateno = 240 && movecontact
trigger4 = stateno = 280 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 250 && movecontact
trigger1 = ctrl
;---------------------------------------------------------------------------
;Run Forward
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Run Backward
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
