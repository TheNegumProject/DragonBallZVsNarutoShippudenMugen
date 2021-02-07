; The CMD file.

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
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;-| IA |------------------------------------------------------

[Command]
name = "IA_1"
command = a,a,a,a,a,a,a,a,a
time = 1

[Command]
name = "IA_2"
command = b,b,b,b,b,b,b,b,b
time = 1

[Command]
name = "IA_3"
command = a,b,b,b,b,b,b,b,b
time = 1

[Command]
name = "IA_4"
command = a,b,c,b,b,b,b,b,b
time = 1

[Command]
name = "IA_5"
command = a,b,c,x,b,b,b,b,b
time = 1

[Command]
name = "IA_6"
command = a,b,c,x,y,b,b,b,b
time = 1

[Command]
name = "IA_7"
command = a,b,c,x,y,z,b,b,b
time = 1

[Command]
name = "IA_8"
command = a,b,c,x,y,z,a,b,b
time = 1

[Command]
name = "IA_9"
command = a,b,c,x,y,z,a,b,c
time = 1

[Command]
name = "IA_10"
command = x,b,c,x,y,z,a,b,c
time = 1

;-| Special Motions |------------------------------------------------------
[Command]
name = "help"
command = ~30z
time = 200

;-| Special Motions |------------------------------------------------------

[Command]
name = "Kame"
command = ~D, F, D, F, a
time = 25

[Command]
name = "sKame"
command = ~D, DB, B, F, a
time = 30

;[Command]
;name = "ssjKame"
;command = ~D, DB, B, F, a
;time = 30

; En Speed Mode
[Command]
name = "MultiBeam"
command = ~D, F, D, F, b
time = 30

[Command]
name = "HyperBeam"
command = ~D, B, D, B, a
time = 30

; En Strengh Mode press B+Y for abosorb or C for expand genkidama
[Command]
name = "GenkiDama"
command = ~D, DB, B, F, x
time = 30

;-| Atack Moves |-----------------------------------------------------------
[Command]
name = "Taioken"
command = ~D, B, D, B, c

[Command]
name = "kienzan"
command = ~D, F, D, F, x

[Command]
name = "elbowattack"
command = ~D, DB, B, x

[Command]
name = "qcf_x"
command = ~D, DF, F, x

[Command]
name = "qcf_y"
command = ~D, DF, F, y

[Command]
name = "qcf_a"
command = ~D, DF, F, a

[Command]
name = "qcf_b"
command = ~D, DF, F, b

[Command]
name = "TwoPunch"
command = ~D, DB, B, y

[Command]
name = "qcfqcf_y"
command = ~F, D, F, y

[Command]
name = "qcbf_y"
command = ~B, DB, D, DF, F, y

[Command]
name = "kickback"
command = ~D, DB, B, b

[Command]
name = "beam"
command = ~D, F, D, F, b

[Command]
name = "beamdown"
command = ~B, DB, D, c

[Command]
name = "windhit"
command = ~D, DF, F, c

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

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
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

;===================|
;--[ Hold Button ]--|
;===================|

[Command]
name = "hold_x"
command = /y
time = 1
[Command]
name = "hold_y"
command = /x
time = 1
[Command]
name = "hold_z"
command = /z
time = 1
[Command]
name = "hold_a"
command = /b
time = 1
[Command]
name = "hold_b"
command = /a
time = 1
[Command]
name = "hold_c"
command = /c
time = 1
[Command]
name = "hold_start"
command = /s
time = 1

;==================|
;--[ Super Jump ]--|
;==================|

[command]
name = "superjump"
command = ~$D,U
time = 15
[command]
name = "superjumpF"
command = ~$D,UF
time = 15
[command]
name = "superjumpB"
command = ~$D,UB
time = 15

; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
[State -1, IA]
type = VarSet
triggerall = var(40) != 1
trigger1 = command = "IA_1"
trigger2 = command = "IA_2"
trigger3 = command = "IA_3"
trigger4 = command = "IA_4"
trigger5 = command = "IA_5"
trigger6 = command = "IA_6"
trigger7 = command = "IA_7"
trigger8 = command = "IA_8"
trigger9 = command = "IA_9"
trigger10 = command = "IA_10"
var(40) = 1

[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
var(1) = 1

;-------------------------------------------------------------------------------
;Help Menu
[State -1, Help Menu]
type = ChangeState
value = 8499
triggerall = var(40) = 0
triggerall = command = "start" && command = "holddown"
trigger1 = statetype = c && ctrl

;-------------------------------------------------------------------------------
;GenkiDama
[State -1, GenkiDama]
type = ChangeState
value = 2030
triggerall = command = "GenkiDama" && power >= 3000
trigger1 = statetype = S && ctrl
trigger2 = statetype = A && ctrl

;MultiBeam
[State -1, MultiBeam]
type = ChangeState
value = 2040
triggerall = command = "MultiBeam" && power >= 1000 && var(18) > 1
trigger1 = statetype = S && ctrl
trigger2 = statetype = A && ctrl

;HyperBeam
[State -1, HyperBeam]
type = ChangeState
value = 2025
triggerall = command = "HyperBeam" && power >= 1000
trigger1 = statetype = S && ctrl

;SuperKame
[State -1, SuperKame]
type = ChangeState
value = 2015
triggerall = command = "sKame" && power >= 1000
trigger1 = statetype = S && ctrl

;Air Super Kame
[State -1, Air Super Kame]
type = ChangeState
value = 2016
triggerall = command = "sKame" && power >= 1000
trigger1 = statetype = A && ctrl

;Kame
[State -1, Kame]
type = ChangeState
value = 2000
triggerall = command = "Kame" && power >= 200
trigger1 = statetype = S && ctrl

;Air Kame
[State -1, Air Kame]
type = ChangeState
value = 2007
triggerall = command = "Kame" && power >= 200
trigger1 = statetype = A && ctrl

;Taioken
[State -1, Taioken]
type = ChangeState
value = 2022
triggerall = command = "Taioken" && power >= 200 && var(21) < 20
trigger1 = statetype = S && ctrl
trigger2 = statetype = A && ctrl

;Kienzan
[State -1, Kienzan]
type = ChangeState
value = 2020
triggerall = command = "kienzan" && power >= 500 && var(21) < 20
trigger1 = statetype = S && ctrl
trigger2 = statetype = A && ctrl

; Super Jump Extraido de Highlight Vegeta by Duende Macabro
;-------------------------
[State -1, Superjump]
type = changestate
triggerall = command = "superjump" && statetype!= A
trigger1 = ctrl = 1
value = 110

[State -1, SuperjumpF]
type=changestate
triggerall = command = "superjumpF" && statetype != A
trigger1 = ctrl = 1
value = 112

[State -1,SuperjumpB]
type = changestate
triggerall = command = "superjumpB" && statetype != A
trigger1 = ctrl = 1
value = 114

;Life Charge
[State -1, Life Charge]
type = ChangeState
value = 3000
triggerall = var(16) = 0 && command = "a" && command = "x" && command = "holddown" && power >= 4500 && Life <= 200
trigger1 = statetype = S && ctrl
trigger2 = statetype = A && ctrl
trigger3 = statetype = C && ctrl

;Speed Mode
[State -1, Speed Mode]
type = ChangeState
value = 3001
triggerall = var(19) = 0
triggerall = var(18) = 0
triggerall = command = "a" && command = "b" && power >= 2000
triggerall = win = 0
triggerall = lose = 0
trigger1 = statetype = S && ctrl
trigger2 = statetype = A && ctrl

;Speed Combo 5
[State -1, Speed Combo 5]
type = ChangeState
value = 1204
triggerall = var(18) > 0
triggerall = command = "x" && command = "y"
triggerall = power >= 250
triggerall = p2bodydist x <= 10
trigger1 = statetype = S && ctrl
trigger2 = stateno = 1200 && Time > 15
trigger3 = stateno = 1202 && Time > 15
trigger4 = stateno = 1201 && Time > 15
trigger5 = stateno = 1204 && Time > 15

;Speed Combo 1
[State -1, Speed Combo 1]
type = ChangeState
value = 1200
triggerall = var(18) > 0
triggerall = command = "x"
triggerall = power >= 250
triggerall = p2bodydist x <= 10
trigger1 = statetype = S && ctrl
trigger2 = stateno = 1200 && Time > 15
trigger3 = stateno = 1202 && Time > 15
trigger4 = stateno = 1201 && Time > 15
trigger5 = stateno = 1204 && Time > 15

;Speed Combo 2
[State -1, Speed Combo 2]
type = ChangeState
value = 1201
triggerall = var(18) > 0
triggerall = command = "y"
triggerall = power >= 250
triggerall = p2bodydist x <= 10
trigger1 = statetype = S && ctrl
trigger2 = stateno = 1200 && Time > 15
trigger3 = stateno = 1202 && Time > 15
trigger4 = stateno = 1201 && Time > 15
trigger5 = stateno = 1204 && Time > 15

;Speed Combo 3
[State -1, Speed Combo 3]
type = ChangeState
value = 1202
triggerall = var(18) > 0
triggerall = command = "a"
triggerall = power >= 250
triggerall = p2bodydist x <= 10
trigger1 = statetype = S && ctrl
trigger2 = stateno = 1202 && Time > 15
trigger3 = stateno = 1200 && Time > 15
trigger4 = stateno = 1201 && Time > 15
trigger5 = stateno = 1204 && Time > 15

;Speed Combo 4
[State -1, Speed Combo 4]
type = ChangeState
value = 1203
triggerall = var(18) > 0
triggerall = command = "b"
triggerall = power >= 250
triggerall = p2bodydist x <= 10
trigger1 = statetype = S && ctrl
trigger2 = stateno = 1200 && Time > 15
trigger3 = stateno = 1202 && Time > 15
trigger4 = stateno = 1201 && Time > 15
trigger5 = stateno = 1204 && Time > 15

;Speed Combo 6
[State -1, Speed Combo 6]
type = ChangeState
value = 1205
triggerall = var(18) > 0
triggerall = command = "x"
triggerall = power >= 250
trigger1 = statetype = A && ctrl && pos y < 0
trigger2 = (stateno = 1203 && AnimElemtime(8) > 0)
trigger3 = (stateno = 1205 && Time > 15)
trigger4 = (stateno = 1207 && Time > 15)
trigger5 = (stateno = 1208 && Time > 35)
trigger6 = (stateno = 1206 && Time > 35)

;Speed Combo 7
[State -1, Speed Combo 7]
type = ChangeState
value = 1206
triggerall = var(18) > 0
triggerall = command = "y"
triggerall = power >= 250
trigger1 = statetype = A && ctrl && pos y < 0
trigger2 = (stateno = 1203 && AnimElemtime(8) > 0)
trigger3 = (stateno = 1205 && Time > 15)
trigger4 = (stateno = 1207 && Time > 15)
trigger5 = (stateno = 1208 && Time > 35)
trigger6 = (stateno = 1206 && Time > 36)

;Speed Combo 8
[State -1, Speed Combo 8]
type = ChangeState
value = 1207
triggerall = var(18) > 0
triggerall = command = "a"
triggerall = power >= 250
trigger1 = statetype = A && ctrl && pos y < 0
trigger2 = (stateno = 1203 && AnimElemtime(8) > 0)
trigger3 = (stateno = 1205 && Time > 15)
trigger4 = (stateno = 1207 && Time > 15)
trigger5 = (stateno = 1208 && Time > 35)
trigger6 = (stateno = 1206 && Time > 35)

;Speed Combo 9
[State -1, Speed Combo 9]
type = ChangeState
value = 1208
triggerall = var(18) > 0
triggerall = command = "b"
triggerall = power >= 250
trigger1 = statetype = A && ctrl && pos y < 0
trigger2 = (stateno = 1203 && AnimElemtime(8) > 0)
trigger3 = (stateno = 1205 && Time > 15)
trigger4 = (stateno = 1207 && Time > 15)
trigger5 = (stateno = 1208 && Time > 35)
trigger6 = (stateno = 1206 && Time > 35)

;Furious Mode
[State -1, Furious Mode]
type = ChangeState
value = 3002
triggerall = Life > 10
triggerall = var(18) = 0
triggerall = var(19) = 0 && command = "x" && command = "y" && power >= 2000
triggerall = win = 0
triggerall = lose = 0
trigger1 = statetype = S && ctrl
trigger2 = statetype = A && ctrl

;Strengh Combo 1a
[State -1, Strengh Combo 1a]
type = ChangeState
value = 1221
triggerall = var(19) > 0
triggerall = command = "qcf_x"
triggerall = power >= 250
trigger1 = stateno = 1220 && movecontact
trigger2 = stateno = 1225 && movecontact
trigger3 = stateno = 1230 && movecontact
trigger4 = stateno = 1235 && movecontact

;Strengh Combo 1b
[State -1, Strengh Combo 1b]
type = ChangeState
value = 1222
triggerall = var(19) > 0
triggerall = command = "qcf_x"
triggerall = power >= 250
trigger1 = stateno = 1221 && movecontact
trigger2 = stateno = 1226 && movecontact
trigger3 = stateno = 1231 && movecontact
trigger4 = stateno = 1236 && movecontact

;Strengh Combo 1c
[State -1, Strengh Combo 1c]
type = ChangeState
value = 1223
triggerall = var(19) > 0
triggerall = command = "qcf_x"
triggerall = power >= 250
trigger1 = stateno = 1222 && movecontact
trigger2 = stateno = 1227 && movecontact
trigger3 = stateno = 1232 && movecontact
trigger4 = stateno = 1237 && movecontact

;Strengh Combo 1d
[State -1, Strengh Combo 1d]
type = ChangeState
value = 1224
triggerall = var(19) > 0
triggerall = command = "qcf_x"
triggerall = power >= 250
trigger1 = stateno = 1223 && movecontact
trigger2 = stateno = 1228 && movecontact
trigger3 = stateno = 1233 && movecontact
trigger4 = stateno = 1238 && movecontact

;Strengh Combo 1
[State -1, Strengh Combo 1]
type = ChangeState
value = 1220
triggerall = var(19) > 0
triggerall = command = "qcf_x"
triggerall = power >= 250
trigger1 = statetype = S && ctrl

;Strengh Combo 2a
[State -1, Strengh Combo 2a]
type = ChangeState
value = 1226
triggerall = var(19) > 0
triggerall = command = "qcf_y"
triggerall = power >= 250
trigger1 = stateno = 1220 && movecontact
trigger2 = stateno = 1225 && movecontact
trigger3 = stateno = 1230 && movecontact
trigger4 = stateno = 1235 && movecontact

;Strengh Combo 2b
[State -1, Strengh Combo 2b]
type = ChangeState
value = 1227
triggerall = var(19) > 0
triggerall = command = "qcf_y"
triggerall = power >= 250
trigger1 = stateno = 1221 && movecontact
trigger2 = stateno = 1226 && movecontact
trigger3 = stateno = 1231 && movecontact
trigger4 = stateno = 1236 && movecontact

;Strengh Combo 2c
[State -1, Strengh Combo 2c]
type = ChangeState
value = 1228
triggerall = var(19) > 0
triggerall = command = "qcf_y"
triggerall = power >= 250
trigger1 = stateno = 1222 && movecontact
trigger2 = stateno = 1227 && movecontact
trigger3 = stateno = 1232 && movecontact
trigger4 = stateno = 1237 && movecontact

;Strengh Combo 2d
[State -1, Strengh Combo 2d]
type = ChangeState
value = 1229
triggerall = var(19) > 0
triggerall = command = "qcf_y"
triggerall = power >= 250
trigger1 = stateno = 1223 && movecontact
trigger2 = stateno = 1228 && movecontact
trigger3 = stateno = 1233 && movecontact
trigger4 = stateno = 1238 && movecontact

;Strengh Combo 2
[State -1, Strengh Combo 2]
type = ChangeState
value = 1225
triggerall = var(19) > 0
triggerall = command = "qcf_y"
triggerall = power >= 250
trigger1 = statetype = S && ctrl

;Strengh Combo 3a
[State -1, Strengh Combo 3a]
type = ChangeState
value = 1231
triggerall = var(19) > 0
triggerall = command = "qcf_a"
triggerall = power >= 250
trigger1 = stateno = 1220 && movecontact
trigger2 = stateno = 1225 && movecontact
trigger3 = stateno = 1230 && movecontact
trigger4 = stateno = 1235 && movecontact

;Strengh Combo 3b
[State -1, Strengh Combo 3b]
type = ChangeState
value = 1232
triggerall = var(19) > 0
triggerall = command = "qcf_a"
triggerall = power >= 250
trigger1 = stateno = 1221 && movecontact
trigger2 = stateno = 1226 && movecontact
trigger3 = stateno = 1231 && movecontact
trigger4 = stateno = 1236 && movecontact

;Strengh Combo 3c
[State -1, Strengh Combo 3c]
type = ChangeState
value = 1233
triggerall = var(19) > 0
triggerall = command = "qcf_a"
triggerall = power >= 250
trigger1 = stateno = 1222 && movecontact
trigger2 = stateno = 1227 && movecontact
trigger3 = stateno = 1232 && movecontact
trigger4 = stateno = 1237 && movecontact

;Strengh Combo 3d
[State -1, Strengh Combo 3d]
type = ChangeState
value = 1234
triggerall = var(19) > 0
triggerall = command = "qcf_a"
triggerall = power >= 250
trigger1 = stateno = 1223 && movecontact
trigger2 = stateno = 1228 && movecontact
trigger3 = stateno = 1233 && movecontact
trigger4 = stateno = 1238 && movecontact

;Strengh Combo 3
[State -1, Strengh Combo 3]
type = ChangeState
value = 1230
triggerall = var(19) > 0
triggerall = command = "qcf_a"
triggerall = power >= 250
trigger1 = statetype = S && ctrl

;Strengh Combo 4a
[State -1, Strengh Combo 4a]
type = ChangeState
value = 1236
triggerall = var(19) > 0
triggerall = command = "qcf_b"
triggerall = power >= 250
trigger1 = stateno = 1220 && movecontact
trigger2 = stateno = 1225 && movecontact
trigger3 = stateno = 1230 && movecontact
trigger4 = stateno = 1235 && movecontact

;Strengh Combo 4b
[State -1, Strengh Combo 4b]
type = ChangeState
value = 1237
triggerall = var(19) > 0
triggerall = command = "qcf_b"
triggerall = power >= 250
trigger1 = stateno = 1221 && movecontact
trigger2 = stateno = 1226 && movecontact
trigger3 = stateno = 1231 && movecontact
trigger4 = stateno = 1236 && movecontact

;Strengh Combo 4c
[State -1, Strengh Combo 4c]
type = ChangeState
value = 1238
triggerall = var(19) > 0
triggerall = command = "qcf_b"
triggerall = power >= 250
trigger1 = stateno = 1222 && movecontact
trigger2 = stateno = 1227 && movecontact
trigger3 = stateno = 1232 && movecontact
trigger4 = stateno = 1237 && movecontact

;Strengh Combo 4d
[State -1, Strengh Combo 4d]
type = ChangeState
value = 1239
triggerall = var(19) > 0
triggerall = command = "qcf_b"
triggerall = power >= 250
trigger1 = stateno = 1223 && movecontact
trigger2 = stateno = 1228 && movecontact
trigger3 = stateno = 1233 && movecontact
trigger4 = stateno = 1238 && movecontact

;Strengh Combo 4
[State -1, Strengh Combo 4]
type = ChangeState
value = 1235
triggerall = var(19) > 0
triggerall = command = "qcf_b"
triggerall = power >= 250
trigger1 = statetype = S && ctrl

;;Hand Stop
;[State -1, Hand Stop]
;type = ChangeState
;value = 3003
;triggerall = command = "x" && command = "y" && power >= 500
;trigger1 = statetype = S && ctrl
;trigger2 = statetype = A && ctrl
;---------------------------------------------------------------------------
; Air Down Beam
[State -1, Air Down Beam]
type = ChangeState
value = 20142
triggerall = command = "beamdown" && power >= 500
trigger1 = statetype = A && ctrl

; Air Beam
[State -1, Air Beam]
type = ChangeState
value = 20141
triggerall = command = "beam" && power >= 500
trigger1 = statetype = A && ctrl

;Beam3
[State -1, Beam3]
type = ChangeState
value = 2014
triggerall = command = "hold_c" && power >= 500 && var(19) > 1
trigger1 = stateno = 20143 && Time > 68

;Beam2
[State -1, Beam2]
type = ChangeState
value = 20143
triggerall = command = "hold_c" && power >= 500 && var(19) > 1
trigger1 = stateno = 2014 && Time > 68

;Beam
[State -1, Beam]
type = ChangeState
value = 2014
triggerall = command = "beam" && power >= 500
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;Windhit4
[State -1, Windhit4]
type = ChangeState
value = 2012
trigger1 = command = "c" && power >= 250
trigger1 = stateno = 2011 && time > 10 && numhelper(6006) = 10

;Windhit
[State -1, Windhit]
type = ChangeState
value = 2010
triggerall = command = "windhit" && power >= 250
trigger1 = statetype = S && ctrl
trigger2 = stateno = 241 || stateno = 211

;Windhit2
[State -1, Windhit2]
type = ChangeState
value = 2011
trigger1 = command = "c" && power >= 250
trigger1 = stateno = 2010 && time > 10 && numhelper(6006) < 10

;Windhit3
[State -1, Windhit3]
type = ChangeState
value = 2010
trigger1 = command = "c" && power >= 250
trigger1 = stateno = 2011 && time > 10 && numhelper(6006) < 10

;Air Kick Down
[State -1, Air Kick Down]
type = ChangeState
value = 1100
trigger1 = command = "qcf_b"
trigger1 = statetype = A
trigger1 = stateno != 1100

;Air Kick Down
[State -1, Air Kick Down2]
type = ChangeState
value = 1100
trigger1 = command = "b" && movehit
trigger1 = stateno = 640 && prevstateno = 642

;Twopunch
[State -1, Twopunch]
type = ChangeState
value = 220
trigger1 = command = "TwoPunch"
trigger1 = (statetype = S || statetype = A) && ctrl
trigger2 = command = "y" && command = "holdback"
trigger2 = (stateno = 201 || stateno = 211) && movehit
trigger3 = command = "y" && command != "holddown"
trigger3 = ((stateno = 643 || (stateno = 220 && pos y < 0)) && hitcount < 10 && Time = [2,80]) && movehit
trigger4 = command = "y" && command != "holddown"
trigger4 = stateno = 411 || stateno = 441 && movehit

;Elbowattack
[State -1, Elbowattack]
type = ChangeState
value = 202
trigger1 = command = "elbowattack"
trigger1 = statetype = S && ctrl
trigger2 = command = "x" && command = "holdback"
trigger2 = (stateno = 201 || stateno = 211) && movehit
trigger3 = command = "y"
trigger3 = stateno = 220 && movehit && pos y = 0

;Tornado Punch
[State -1, Tornado Punch]
type = ChangeState
value = 225
triggerall = command = "qcfqcf_y"
trigger1 = statetype = S && ctrl
trigger2 = statetype = A && ctrl

;Air Kick Back
[State -1, Air Kick Back]
type = ChangeState
value = 633
trigger1 = command = "kickback"
trigger1 = statetype = A && ctrl

;Stand Kick Back
[State -1, Stand Kick Back]
type = ChangeState
value = 242
trigger1 = command = "kickback"
trigger1 = statetype = S && ctrl

;Knee Up
[State -1, Knee Up]
type = ChangeState
value = 1101
triggerall = command = "qcf_b"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 241 || stateno = 211

;Knee Up3
[State -1, Knee Up3]
type = ChangeState
value = 1101
trigger1 = command = "b" && command = "holdfwd" && command != "holdup"
trigger1 = movehit && stateno = 241

;Knee Up2
[State -1, Knee Up2]
type = ChangeState
value = 630
trigger1 = command = "b" && Time > 10
trigger1 = stateno = 1101

;Knee Up4
[State -1, Knee Up4]
type = ChangeState
value = 631
trigger1 = command = "b" && movehit
trigger1 = prevstateno = 1101 && stateno = 630

;Running Punch Finish X
[State -1, Running Punch Finish X]
type = ChangeState
value = 602
triggerall = command = "x"
trigger1 = stateno = 1105 && Time > 5 && hitcount >= 9 && movehit
trigger2 = stateno = 1106 && Time > 5 && hitcount >= 9 && movehit

;Running Punch Finish Y
[State -1, Running Punch Finish Y]
type = ChangeState
value = 214
triggerall = command = "y"
trigger1 = stateno = 1103 && Time > 5 && hitcount >= 9 && movehit
trigger2 = stateno = 1104 && Time > 5 && hitcount >= 9 && movehit

;Running Punch Finish A
[State -1, Running Punch Finish A]
type = ChangeState
value = 242
triggerall = command = "a"
trigger1 = stateno = 1108 && Time > 5 && hitcount >= 9 && movehit
trigger2 = stateno = 1107 && Time > 5 && hitcount >= 9 && movehit

;Running Punch Finish B
[State -1, Running Punch Finish B]
type = ChangeState
value = 243
triggerall = command = "b"
trigger1 = stateno = 1109 && Time > 5 && hitcount >= 9 && movehit
trigger2 = stateno = 1110 && Time > 5 && hitcount >= 9 && movehit

;Running Punch X
[State -1, Running Punch X]
type = ChangeState
value = 1106
triggerall = command = "x" && hitcount < 9
trigger1 = stateno = 1103 && Time > 5 && movehit
trigger2 = stateno = 1105 && Time > 5 && movehit
trigger3 = stateno = 1107 && Time > 5 && movehit
trigger4 = stateno = 1109 && Time > 5 && movehit

;Running Punch X2
[State -1, Running Punch X2]
type = ChangeState
value = 1105
triggerall = command = "x" && hitcount < 9
trigger1 = stateno = 1104 && Time > 5 && movehit
trigger2 = stateno = 1106 && Time > 5 && movehit
trigger3 = stateno = 1108 && Time > 5 && movehit
trigger4 = stateno = 1110 && Time > 5 && movehit

;Running Punch Y
[State -1, Running Punch Y]
type = ChangeState
value = 1104
triggerall = command = "y" && hitcount < 9
trigger1 = stateno = 1103 && Time > 5 && movehit
trigger2 = stateno = 1105 && Time > 5 && movehit
trigger3 = stateno = 1107 && Time > 5 && movehit
trigger4 = stateno = 1109 && Time > 5 && movehit

;Running Punch Y2
[State -1, Running Punch Y2]
type = ChangeState
value = 1103
triggerall = command = "y" && hitcount < 9 && moveguarded = 0
trigger1 = stateno = 1104 && Time > 5 && movehit
trigger2 = stateno = 1106 && Time > 5 && movehit
trigger3 = stateno = 1108 && Time > 5 && movehit
trigger4 = stateno = 1110 && Time > 5 && movehit

;Running Punch A
[State -1, Running Punch A]
type = ChangeState
value = 1108
triggerall = command = "a" && hitcount < 9
trigger1 = stateno = 1103 && Time > 5 && movehit
trigger2 = stateno = 1105 && Time > 5 && movehit
trigger3 = stateno = 1107 && Time > 5 && movehit
trigger4 = stateno = 1109 && Time > 5 && movehit

;Running Punch A2
[State -1, Running Punch A2]
type = ChangeState
value = 1107
triggerall = command = "a" && hitcount < 9
trigger1 = stateno = 1104 && Time > 5 && movehit
trigger2 = stateno = 1106 && Time > 5 && movehit
trigger3 = stateno = 1108 && Time > 5 && movehit
trigger4 = stateno = 1110 && Time > 5 && movehit

;Running Punch B
[State -1, Running Punch B]
type = ChangeState
value = 1110
triggerall = command = "b" && hitcount < 9
trigger1 = stateno = 1103 && Time > 5 && movehit
trigger2 = stateno = 1105 && Time > 5 && movehit
trigger3 = stateno = 1107 && Time > 5 && movehit
trigger4 = stateno = 1109 && Time > 5 && movehit

;Running Punch B2
[State -1, Running Punch B2]
type = ChangeState
value = 1109
triggerall = command = "b" && hitcount < 9
trigger1 = stateno = 1104 && Time > 5 && movehit
trigger2 = stateno = 1106 && Time > 5 && movehit
trigger3 = stateno = 1108 && Time > 5 && movehit
trigger4 = stateno = 1110 && Time > 5 && movehit

;Running Punch
[State -1, Running Punch]
type = ChangeState
value = 1102
trigger1 = command = "qcbf_y"
trigger1 = statetype = S || statetype = A
trigger1 = ctrl
trigger2 = command = "y" && prevstateno != [1102,1104]
trigger2 = (command = "holdfwd" || command = "holdup")
trigger2 = (stateno = 214 && Time > 5) || prevstateno = 214
;---------------------------------------------------------------------------
;Run Fast Fwd Aura
[State -1, Run Fast Fwd Aura]
type = ChangeState
value = 1010
triggerall = command = "z" && command = "holdfwd"
triggerall = power >= 500
triggerall = var(15) = 0
trigger1 = (statetype = A && ctrl) || (statetype = S && ctrl)
trigger1 = stateno != 1010
trigger2 = stateno = 1006
trigger3 = stateno = 2131 || (stateno = 214 && animelem = 4)
trigger4 = stateno = 10101
trigger5 = stateno = 10102
trigger6 = stateno = 10103

;Run Fast Fwd 2
[State -1, Run Fast Fwd2]
type = ChangeState
value = 1010
triggerall = command = "holdfwd"
triggerall = power >= 500
triggerall = var(15) = 0
triggerall = Time > 10
trigger1 = stateno = 10101
trigger2 = stateno = 10102
trigger3 = stateno = 10103

;Run Fast Back Aura
[State -1, Run Fast Back Aura]
type = ChangeState
value = 10101
triggerall = command = "z" && command = "holdback"
triggerall = power >= 500
triggerall = var(15) = 0
trigger1 = (statetype = A && ctrl) || (statetype = S && ctrl)
trigger1 = stateno != 10101
trigger2 = stateno = 1006
trigger3 = stateno = 2131 || (stateno = 214 && animelem = 4)
trigger4 = stateno = 1010
trigger5 = stateno = 10102
trigger6 = stateno = 10103

;Run Fast back2
[State -1, Run Fast back2]
type = ChangeState
value = 10101
triggerall = command = "holdback"
triggerall = power >= 500
triggerall = var(15) = 0
triggerall = Time > 10
trigger1 = stateno = 1010
trigger2 = stateno = 10102
trigger3 = stateno = 10103


;Run Fast Up Aura
[State -1, Run Fast Up Aura]
type = ChangeState
value = 10102
triggerall = command = "z" && command = "holdup"
triggerall = power >= 500
triggerall = var(15) = 0
trigger1 = (statetype = A && ctrl) || (statetype = S && ctrl)
trigger1 = stateno != 10101
trigger2 = stateno = 1006
trigger3 = stateno = 2131 || (stateno = 214 && animelem = 4)
trigger4 = stateno = 1010
trigger5 = stateno = 10101
trigger6 = stateno = 10103

;Run Fast Up2
[State -1, Run Fast Up2]
type = ChangeState
value = 10102
triggerall = command = "holdup"
triggerall = power >= 500
triggerall = var(15) = 0
triggerall = Time > 10
trigger1 = stateno = 1010 && pos y < 0
trigger2 = stateno = 10101 && pos y < 0
trigger3 = stateno = 10103

;Run Fast Down Aura
[State -1, Run Fast Down Aura]
type = ChangeState
value = 10103
triggerall = command = "z" && command = "holddown"
triggerall = power >= 500
triggerall = var(15) = 0
trigger1 = (statetype = A && ctrl) || (statetype = S && ctrl)
trigger1 = stateno != 10101
trigger2 = stateno = 1006
trigger3 = stateno = 2131 || (stateno = 214 && animelem = 4)
trigger4 = stateno = 1010
trigger5 = stateno = 10102
trigger6 = stateno = 10101

;Run Fast Down
[State -1, Run Down Up2]
type = ChangeState
value = 10103
triggerall = command = "holddown"
triggerall = power >= 500
triggerall = var(15) = 0
triggerall = Time > 10
trigger1 = stateno = 1010 && pos y < 0
trigger2 = stateno = 10101 && pos y < 0
trigger3 = stateno = 10102

;Run Fast Normal
[State -1, Run Fast Normal]
type = ChangeState
value = 1006
triggerall = stateno != 633
triggerall = Alive = 1
triggerall = command = "z"
triggerall = power >= 500
triggerall = var(15) = 0
trigger1 = (statetype = A || (statetype = S && ctrl))
trigger1 = stateno != 1006 && gethitvar(fall) != 1 && stateno != [1008,1009]
trigger2 = stateno = 2131 || (stateno = 214 && animelem = 4) || stateno = 1008
trigger3 = (movetype = H && Time > 20)
trigger4 = var(17) = 1

;Zanzoken
[State -1, Zanzoken]
type = ChangeState
value = 1011
triggerall = Alive = 1
triggerall = command = "z"
triggerall = power >= 250
triggerall = var(15) = 1
trigger1 = ((statetype = A) || (statetype = S && ctrl))
trigger1 = stateno != 1011 && gethitvar(fall) != 1 && stateno != [1008,1009]
trigger2 = stateno = 2131 || (stateno = 214 && animelem = 4) || stateno = 1008
trigger3 = (movetype = H && Time > 20)
trigger4 = var(17) = 1

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;Run Air Back
[State -1, Run Air Back]
type = ChangeState
value = 1005
trigger1 = command = "BB"
trigger1 = statetype = A

;Run Air Fwd
[State -1, Run Air Fwd]
type = ChangeState
value = 1000
trigger1 = command = "FF"
trigger1 = statetype = A

;Run Air Down
[State -1, Run Air Down]
type = ChangeState
value = 107
trigger1 = command = "DD"
trigger1 = statetype = A

;Run Air Up
[State -1, Run Air Up]
type = ChangeState
value = 109
triggerall = pos y > -320
trigger1 = command = "UU"
trigger1 = statetype = A

;---------------------------------------------------------------------------
;Kung Fu Throw
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
;---------------------------------------------------------------------------
;Standing Near Light Punch
[State -1, Standing Light Near Punch]
type = ChangeState
value = 201
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = stateno = 200 && movehit

;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Standing Up Punch
[State -1, Standing Up Punch]
type = ChangeState
value = 411
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = (stateno = 211 || stateno = 241) && movehit && movehit

;Standing Up Down Punch
[State -1, Standing Up Down Punch]
type = ChangeState
value = 612
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = (stateno = 411 || stateno = 441) && movehit

;Standing Near Punch
[State -1, Standing Near Punch]
type = ChangeState
value = 211
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2bodydist x < 10
trigger2 = stateno = 210 && movehit
trigger3 = stateno = 100

;Standing Back Punch
[State -1, Standing Back Punch]
type = ChangeState
value = 2132
trigger1 = command = "qcf_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = command = "y" && command = "holdfwd"
trigger2 = (stateno = 211 || stateno = 241) && movehit

;Standing Air Back Punch
[State -1, Standing Air Back Punch]
type = ChangeState
value = 213
trigger1 = command = "qcf_y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = command = "y"
trigger2 = (stateno = 611 ||stateno = 641 || stateno = 642) && movehit

;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger3 = (stateno = 230 || stateno = 231)
trigger4 = stateno = 400

;---------------------------------------------------------------------------
;Standing Light Near Kick
[State -1, Standing Light Near Kick]
type = ChangeState
value = 231
triggerall = command = "a"
trigger1 = stateno = 230 && movehit

;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger3 = stateno = 400

;-------------------------------------------------------------------------------
;Standing Near Kick
[State -1, Standing Near Kick]
type = ChangeState
value = 241
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2bodydist x < 10
trigger2 = stateno = 240 && movehit
trigger3 = stateno = 100

;-------------------------------------------------------------------------------
;Standing Back Kick
[State -1, Standing Back Kick]
type = ChangeState
value = 242
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2bodydist x < 10
trigger2 = (stateno = 241 || stateno = 240) && movehit
trigger2 = command = "holdback"

;-------------------------------------------------------------------------------
;Standing Up Kick
[State -1, Standing Up Kick]
type = ChangeState
value = 243
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = (stateno = 241 || stateno = 240 || stateno = 242) && movehit
trigger1 = command = "holdup"

;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 201) && movehit
trigger3 = (stateno = 230 || stateno = 231) && movehit
trigger4 = (stateno = 210 || stateno = 211) && movehit
trigger5 = (stateno = 400 || stateno = 410) && movehit

;-------------------------------------------------------------------------------
;WindHitCombo
[State -1, WindHitCombo]
type = ChangeState
value = 2012
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = power >= 250
trigger1 = stateno = 241 && movehit

;BeamCombo
[State -1, BeamCombo]
type = ChangeState
value = 2014
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = command = "holdback"
triggerall = power >= 250
trigger1 = stateno = 241 && movehit

;-------------------------------------------------------------------------------
;Air Down Fireball
[State -1, Air Down FireBall]
type = ChangeState
value = 252
triggerall = var(21) < 20
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = power >= 100
triggerall = stateno != 1006
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = Time > 12 && stateno = 252
trigger3 = Time > 12 && stateno = 251

;Air Fireball
[State -1, Air FireBall]
type = ChangeState
value = 251
triggerall = var(21) < 20
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = power >= 100
triggerall = stateno != 1006
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = Time > 12 && stateno = 251
trigger3 = Time > 12 && stateno = 252

;FireBall
[State -1, FireBall]
type = ChangeState
value = 250
triggerall = var(21) < 20
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = power >= 100
triggerall = stateno != 1006
trigger1 = statetype = S
trigger1 = ctrl

;FireBall
[State -1, FireBall]
type = ChangeState
value = 250
triggerall = var(21) < 20
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = power >= 100
triggerall = stateno != 1006
trigger1 = Time > 10 && stateno = 250

;FireBall Crouch
[State -1, FireBall Crouch]
type = ChangeState
value = 253
triggerall = var(21) < 20
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = power >= 100
triggerall = stateno != 1006
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = Time > 12 && stateno = 253
;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

; Power Charge
[State -1, Power Charge]
type = ChangeState
value = 730
triggerall = command = "hold_b" && command = "hold_y"
trigger1 = statetype = S || Statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Crouching Strong Punch 2
[State -1, Crouching Strong Punch 2]
type = ChangeState
value = 411
trigger1 = command = "y"
trigger1 = command = "holddown"
trigger1 = stateno = 410 && movehit

;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
trigger3 = stateno = 210

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400)
trigger2 = (time > 9) || (movecontact && time > 5)
trigger3 = stateno = 230

;---------------------------------------------------------------------------
;Crouching Strong Kick 2
[State -1, Crouching Strong Kick 2]
type = ChangeState
value = 441
trigger1 = command = "b"
trigger1 = command = "holddown"
trigger1 = stateno = 440 && movehit

;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
trigger3 = stateno = 240 || stateno = 241

;---------------------------------------------------------------------------
;Jump Final Combo Light Punch
[State -1, Jump Final Combo Light Punch]
type = ChangeState
value = 602
triggerall = var(21) > 20
triggerall = command = "x"
trigger1 = (stateno = 600 || stateno = 601) && movehit

;Jump Light Punch2
[State -1, Jump Light Punch2]
type = ChangeState
value = 601
triggerall = var(21) < 20
triggerall = command = "x"
trigger1 = stateno = 600 && movehit

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(21) < 20
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 601 && movehit

;---------------------------------------------------------------------------
;Jump Punch Down Appear
[State -1, Jump Punch Down Appear]
type = ChangeState
value = 612
triggerall = command = "y" && command = "holddown"
trigger1 = ((stateno = 643 || stateno = 220) && hitcount < 10 && Time = [12,50]) && movehit

;Jump Punch Down Appear2
[State -1, Jump Punch Down Appear 2]
type = ChangeState
value = 612
triggerall = command = "y"
trigger1 = ((stateno = 643 || stateno = 220) && hitcount = 10 && Time = [2,80]) && movehit

;Jump Punch Down
[State -1, Jump Punch Down]
type = ChangeState
value = 612
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 601) && movehit
trigger3 = (stateno = 610 || stateno = 611) && movehit
trigger4 = (stateno = 630 || stateno = 631) && movehit

;Jump Strong Punch2
[State -1, Jump Strong Punch2]
type = ChangeState
value = 611
triggerall = command = "y"
trigger1 = stateno = 610 && movehit

;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 601) || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
;---------------------------------------------------------------------------
;Jump Light Kick 4
[State -1, Jump Light Kick 4]
type = ChangeState
value = 633
trigger1 = command = "a"
trigger1 = stateno = 632 && movehit && var(21) >= 20
trigger2 = command = "b" && command = "holdback"
trigger2 = (stateno = 642 && movehit)

;Jump Light Kick 3
[State -1, Jump Light Kick 3]
type = ChangeState
value = 632
trigger1 = command = "a" && (command = "holdup" || command = "holdfwd")
trigger1 = stateno = 631 && movehit
trigger2 = command = "a" && stateno = 632 && movehit

;Jump Light Kick 2
[State -1, Jump Light Kick 2]
type = ChangeState
value = 631
trigger1 = command = "a"
trigger1 = stateno = 630 && movehit
trigger2 = command = "b" && stateno = 611 && movehit

;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 || (stateno = 600 || stateno = 601)
;---------------------------------------------------------------------------
;Jump Strong Kick Back
[State -1, Jump Strong Kick Back]
type = ChangeState
value = 643
triggerall = command = "b"
trigger1 = (stateno = 411 || stateno = 441) && movehit

;Jump Punch Down Appear
[State -1, Jump Kick Down Appear]
type = ChangeState
value = 1100
triggerall = command = "b"
trigger1 = ((stateno = 643 || stateno = 220) && hitcount = 10 && Time = [12,50]) && movehit

;Jump Strong Kick Back2
[State -1, Jump Strong Kick Back2]
type = ChangeState
value = 643
triggerall = command = "b"
trigger1 = ((stateno = 643 || (stateno = 220 && pos y < 0)) && hitcount < 10 && Time = [12,50]) && movehit

;Jump Strong Kick Up
[State -1, Jump Strong Kick Up]
type = ChangeState
value = 641
trigger1 = command = "b" && command = "holdup"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = command = "b" && command = "holdup"
trigger2 = stateno = 610 || stateno = 611 || stateno = 632 || stateno = 631 || stateno = 630
trigger2 = movecontact
trigger3 = command = "b" && movehit
trigger3 = stateno = 631

;Jump Strong Kick Up 2
[State -1, Jump Strong Kick Up2]
type = ChangeState
value = 642
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = stateno = 641
trigger1 = movecontact

;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 601) || stateno = 611 || stateno = 632 || stateno = 631 || stateno = 610 || stateno = 630 || stateno = 641 || stateno = 642
trigger2 = movecontact
trigger3 = stateno = 1350
;---------------------------------------------------------------------------
