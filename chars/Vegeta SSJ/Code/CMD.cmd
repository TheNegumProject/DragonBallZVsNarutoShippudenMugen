;===========================================================================
;===========================================================================
;Command File
;===========================================================================
;===========================================================================
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;===========================================================================
;Default Values
;===========================================================================

[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1



;===========================================================================
;Double Tap
;===========================================================================

[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "DD"
command = D, D
time = 10

[Command]
name = "Long Jump"
command = ~D, UF
time = 10

[Command]
name = "Long Jump"
command = ~D, UB
time = 10

;===========================================================================
;2/3 Button Combination
;===========================================================================

[Command]
name = "charge";Required (do not remove)
command = x+y+a
time = 10

[Command]
name = "hard";Required (do not remove)
command = x+y
time = 5

[Command]
name = "throw";Required (do not remove)
command = a+b
time = 5

[Command]
name = "evade";Required (do not remove)
command = x+a
time = 5


;-----------------------------------------------------------------------------------Please Edit


;==========================Super Commands========================================
;-| Super Motions |--------------------------------------------------------
;Big Bang Attack--------------------
[Command]
name = "QCBQCF_y"
command = ~D,DB, D, DF, F,y
time = 30

[Command]
name = "QCBQCF_y"
command = ~D,DB, D, DF, F,~y
time = 30

;-----------------------------------
;Final Flash Attack
[Command]
name = "Final Flash Attack"
command = ~30$B, $F, $B, F,z
time = 21
[Command]
name = "Final Flash Attack"
command = ~30$B, $F, $B, F,~z
time = 21

[Command]
name = "QCFQCB_y"
command = ~D,DF, F, DB, B, y
time = 50

[Command]
name = "QCFQCB_y"
command = ~D,DF, F, DB, B,~y
time = 50
;-----------------------------------

;Million Dollar Renzoku-------------------------
[Command]
name = "QCB2_x"
command = ~D, DB, B, D, DB, B, x
time = 30
[Command]
name = "QCB2_x"
command = ~D, DB, B, D, DB, B,~x
time = 30


;Galic Ho-------------
[Command]
name = "QCF2_x"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "QCF2_x"
command = ~D, DF, F, D, DF, F,~x
time = 30


;===============================================================================
;Special Commands
;===============================================================================

;-------------------------
;--|Charged Commands|
;-------------------------

[Command]
name = "DU_x"
command = ~30$D, U, x
time = 15

[Command]
name = "DU_y"
command = ~30$D, U, y
time = 15

[Command]
name = "DU_z"
command = ~30$D, U, z
time = 15

[Command]
name = "DU_x"
command = ~30$D, U,~x
time = 15

[Command]
name = "DU_y"
command = ~30$D, U,~y
time = 15

[Command]
name = "DU_z"
command = ~30$D, U,~z
time = 15

;----------------------------------
;-|Quarter Circle Commands|
;-----------------------------------

  [Command]
name = "QCF_x"
command =~D,DF,F,x
time = 20

  [Command]
name = "QCF_x"
command =~D,DF,F,~x
time = 20


  [Command]
name = "QCF_y"
command =~D,DF,F,y
time = 20

  [Command]
name = "QCF_y"
command =~D,DF,F,~y
time = 20

  [Command]
name = "QCF_z"
command =~D,DF,F,z
time = 20

  [Command]
name = "QCF_z"
command =~D,DF,F,~z
time = 20

  [Command]
name = "QCF_a"
command =~D,DF,F,a
time = 20

  [Command]
name = "QCF_a"
command =~D,DF,F,~a
time = 20

  [Command]
name = "QCF_b"
command =~D,DF,F,b
time = 20

  [Command]
name = "QCF_b"
command =~D,DF,F,~b
time = 20

  [Command]
name = "QCF_c"
command =~D,DF,F,c
time = 20


  [Command]
name = "QCF_c"
command =~D,DF,F,~c
time = 20



  [Command]
name = "QCB_a"
command =~D,DB,B,a
time = 20

  [Command]
name = "QCB_b"
command =~D,DB,B,b
time = 20

  [Command]
name = "QCB_c"
command =~D,DB,B,c
time = 20

  [Command]
name = "QCB_x"
command =~D,DB,B,x
time = 20

  [Command]
name = "QCB_y"
command =~D,DB,B,y
time = 20

  [Command]
name = "QCB_y"
command =~DB,B,y
time = 20

  [Command]
name = "QCB_z"
command =~D,DB,B,z
time = 20

  [Command]
name = "QCB_a"
command =~D,DB,B,~a
time = 20

  [Command]
name = "QCB_b"
command =~D,DB,B,~b
time = 20

  [Command]
name = "QCB_c"
command =~D,DB,B,~c
time = 20

  [Command]
name = "QCB_x"
command =~D,DB,B,~x
time = 20

  [Command]
name = "QCB_y"
command =~D,DB,B,~y
time = 20

  [Command]
name = "QCB_y"
command =~DB,B,~y
time = 20

  [Command]
name = "QCB_z"
command =~D,DB,B,~z
time = 20

;----------------------------------
;-|Dragon punch commands|
;-----------------------------------

 [Command]
name = "RDP_x"
command =~B,D,DB,x
time = 20

 [Command]
name = "RDP_y"
command =~B,D,DB,y
time = 20

 [Command]
name = "RDP_z"
command =~B,D,DB,z
time = 20

 [Command]
name = "RDP_x"
command =~B,D,DB,~x
time = 20

 [Command]
name = "RDP_y"
command =~B,D,DB,~y
time = 20

 [Command]
name = "RDP_z"
command =~B,D,DB,~z
time = 20

 [Command]
name = "DP_x"
command =~F,D,DF,x
time = 20

 [Command]
name = "DP_y"
command =~F,D,DF,y
time = 20

 [Command]
name = "DP_z"
command =~F,D,DF,z
time = 20

 [Command]
name = "DP_x"
command =~F,D,DF,~x
time = 20

 [Command]
name = "DP_y"
command =~F,D,DF,~y
time = 20

 [Command]
name = "DP_z"
command =~F,D,DF,~z
time = 20

;-------------------------------------
;--|Half Circle Commands|
;-------------------------------------
 

  [Command]
name = "HCF_x"
command =~B,DB,D,DF,F,x
time = 30

  [Command]
name = "HCF_x"
command =~B,D,F,x
time = 30

  [Command]
name = "HCF_x"
command =~B,DB,D,DF,F,~x
time = 30

  [Command]
name = "HCF_x"
command =~B,D,F,~x
time = 30

  [Command]
name = "HCF_y"
command =~B,D,F,y
time = 30

  [Command]
name = "HCF_z"
command =~B,D,F,z
time = 30


  [Command]
name = "HCF_y"
command =~B,DB,D,DF,F,y
time = 30

  [Command]
name = "HCF_z"
command =~B,DB,D,DF,F,z
time = 30

  [Command]
name = "HCF_b"
command =~B,DB,D,DF,F,b
time = 30


  [Command]
name = "HCF_y"
command =~B,D,F,~y
time = 30

  [Command]
name = "HCF_z"
command =~B,D,F,~z
time = 30


  [Command]
name = "HCF_y"
command =~B,DB,D,DF,F,~y
time = 30

  [Command]
name = "HCF_z"
command =~B,DB,D,DF,F,~z
time = 30

  [Command]
name = "HCF_b"
command =~B,DB,D,DF,F,~b
time = 30


;===========================================================================
;Dir + Button
;===========================================================================

[Command]
name = "hijump"
command = ~$D, $U
time = 10 

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b

;===========================================================================
;Single Button
;===========================================================================

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

[Command]
name = "charge"
command = /$c
time = 1

;===========================================================================
;Hold Dir 
;===========================================================================

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
name = "holdupandfwd";Required (do not remove)
command = /UF
time = 1

[Command]
name = "holdupandback";Required (do not remove)
command = /UB
time = 1

[Command]
name = "holddownandfwd";Required (do not remove)
command = /DF
time = 1

;===========================================================================
;Hold Single Button
;===========================================================================

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

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holds"
command = /s
time = 1

[Command]
name = "recovery";Required (do not remove)
command = b
time = 1

;==========================================================================
;--|Release Button| 
;==========================================================================
[Command]
name = "release_up"
command = ~$U
time = 1
[Command]
name = "release_down"
command = ~$D
time = 1
[Command]
name = "release_back"
command = ~$B
time = 1
[Command]
name = "release_fwd"
command = ~$F
time = 1

[Command]
name = "release_a"
command = ~a
time = 1
[Command]
name = "release_b"
command = ~b
time = 1
[Command]
name = "release_c"
command = ~c
time = 1
[Command]
name = "release_x"
command = ~x
time = 1
[Command]
name = "release_y"
command = ~y
time = 1
[Command]
name = "release_z"
command = ~z
time = 1
[Command]
name = "release_start"
command = ~s
time = 1

;---------------------------------------------------------------------------

;===========================================================================
;===========================================================================
[Statedef -1]
;---------------------------------------------------------------------------
[State -1, Evade/Boost]
type = ChangeState
value = 1100
trigger1 = (command = "evade") && (statetype != C) && (ctrl)
trigger2 = (command = "a") && (stateno = 100 && AnimElem = 2,>=1)
trigger3 = (command = "a") && (stateno = 110 && AnimElem = 2,>=1) && (sysvar(1) != -1)
trigger4 = (command = "evade") && (stateno = [200,219]) && (movecontact) && (Power >= 1000)
trigger5 = (command = "evade") && (stateno = [400,419]) && (movecontact) && (Power >= 1000)
trigger6 = numhelper(1310)
trigger6 = numhelper(1315)
trigger6 = (command = "evade") && (stateno = 1300) && (helper(1310), numtarget = 1) && (Power >= 1000)
trigger7 = numhelper(1330)
trigger7 = numhelper(1350)
trigger7 = (command = "evade") && (stateno = 1310) && (helper(1330), numtarget = 1) && (Power >= 1000)
;---------------------------------------------------------------------------
[State -1,Galickgun air]
type = ChangeState
value = 3003
triggerall = (command = "QCF2_x") && (Power >= 1000)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = [600,620]) && (movecontact)
trigger3 = (stateno = [1500,1521]) && (movecontact)
trigger4 = numhelper(1310)
trigger4 = numhelper(1315)
trigger4 = (stateno = 1300) && (helper(1310), numtarget = 1)
trigger5 = numhelper(1330)
trigger5 = numhelper(1350)
trigger5 = (stateno = 1350) && (helper(1330), numtarget = 1)
trigger6 = stateno = 1305 
trigger7 = stateno = 2114 && (movecontact)

;-------------------------------------------------------------------------
[State -1,Final Flash]
type = ChangeState
value = 3400
triggerall = (command = "Final Flash Attack") && (Power >= 3000)
trigger1 = (ctrl) && (statetype != A)
trigger2 = (stateno = [200,219]) && (movecontact)
trigger3 = (stateno = [400,420]) && (movecontact)
trigger4 = numhelper(1310)
trigger4 = numhelper(1315)
trigger4 = (stateno = 1300) && (helper(1310), numtarget = 1)
trigger5 = numhelper(1330)
trigger5 = numhelper(1350)
trigger5 = (stateno = 1350) && (helper(1330), numtarget = 1)
trigger6 = stateno = 1300 
trigger7 = stateno = [100,105]


;-------------------------------------------------------------------------
[State -1,Big Bang Attack]
type = ChangeState
value = 3300
triggerall = (command = "QCBQCF_y") && (Power >= 2000)
trigger1 = (ctrl) && (statetype != A)
trigger2 = (stateno = [200,219]) && (movecontact)
trigger3 = (stateno = [400,420]) && (movecontact)
trigger4 = numhelper(1310)
trigger4 = numhelper(1315)
trigger4 = (stateno = 1300) && (helper(1310), numtarget = 1)
trigger5 = numhelper(1330)
trigger5 = numhelper(1350)
trigger5 = (stateno = 1350) && (helper(1330), numtarget = 1)
trigger6 = stateno = 1300 
trigger7 = stateno = [100,105]


;-------------------------------------------------------------------------
[State -1,Bakuhatsuha]
type = ChangeState
value = 3200
triggerall = (command = "QCFQCB_y") && (Power >= 2000)
trigger1 = (ctrl) && (statetype != A)
trigger2 = (stateno = [200,219]) && (movecontact)
trigger3 = (stateno = [400,420]) && (movecontact)
trigger4 = numhelper(1310)
trigger4 = numhelper(1315)
trigger4 = (stateno = 1300) && (helper(1310), numtarget = 1)
trigger5 = numhelper(1330)
trigger5 = numhelper(1350)
trigger5 = (stateno = 1350) && (helper(1330), numtarget = 1)
trigger6 = stateno = 1300 
trigger7 = stateno = [100,105]


;-------------------------------------------------------------------------
[State -1,MDR]
type = ChangeState
value = 3100
triggerall = (command = "QCB2_x") && (Power >= 1000)
trigger1 = (ctrl) && (statetype != A)
trigger2 = (stateno = [200,219]) && (movecontact)
trigger3 = (stateno = [400,420]) && (movecontact)
trigger4 = numhelper(1310)
trigger4 = numhelper(1315)
trigger4 = (stateno = 1300) && (helper(1310), numtarget = 1)
trigger5 = numhelper(1330)
trigger5 = numhelper(1350)
trigger5 = (stateno = 1350) && (helper(1330), numtarget = 1)
trigger6 = stateno = 1300 
trigger7 = stateno = [100,105]


;---------------------------------------------------------------------------

[State -1,Galickgun]
type = ChangeState
value = 3000
triggerall = (command = "QCF2_x") && (Power >= 1000) && prevstateno !=3001 
trigger1 = (ctrl) && (statetype != A)
trigger2 = (stateno = [200,219]) && (movecontact)
trigger3 = (stateno = [400,420]) && (movecontact)
trigger4 = numhelper(1310)
trigger4 = numhelper(1315)
trigger4 = (stateno = 1300) && (helper(1310), numtarget = 1)
trigger5 = numhelper(1330)
trigger5 = numhelper(1350)
trigger5 = (stateno = 1350) && (helper(1330), numtarget = 1)
trigger6 = stateno = 1300 
trigger7 = stateno = [100,105]



;-------------------------------------------------------------------------
[State -1, Zanzoken Attack]
type = ChangeState
value = 2110
triggerall = (command = "QCF_c" || command = "QCB_c") && (power >= 500) && (var(3) < 3)
trigger1 = (ctrl) && (Statetype = S || Statetype = A)
trigger2 = (stateno =  2112) && (AnimElem = 2,> 5) && (movehit)
trigger3 = (stateno =  2113) && (AnimElem = 3,> 5) && (movehit)
trigger4 = numhelper(1310)
trigger4 = (stateno = 1300) && (helper(1310), numtarget = 1)
trigger5 = numhelper(1315) 
trigger5 = (stateno = 1305) && (helper(1315), numtarget = 1)
trigger6 = numhelper(1330)
trigger6 = numhelper(1350)
trigger6 = (stateno = 1350) && (helper(1330), numtarget = 1)
trigger7 = (stateno = 220) && (movecontact)
trigger8 = (stateno = [200,219]) && (movecontact)
trigger9 = (stateno = [600,620]) && (movecontact)
trigger10 = (stateno = [400,410]) && (movecontact)
trigger11 = stateno = [100,105]

;---------------------------------------------------------------------------
[State -1, Zanzoken]
type = ChangeState
value = 2100
triggerall = (command = "c") && (power >= 500) && (var(3) < 3)
trigger1 = (ctrl) && (Statetype != C)
trigger2 = (stateno =  2112) && (AnimElem = 2,> 5) && (movehit)
trigger3 = (stateno =  2113) && (AnimElem = 3,> 5) && (movehit)
trigger4 = numhelper(1310)
trigger4 = numhelper(1315)
trigger4 = (stateno = 1300) && (helper(1310), numtarget = 1)
trigger5 = numhelper(1315)
trigger5 = (stateno = 1305) && (helper(1315), numtarget = 1)
trigger6 = numhelper(1330)
trigger6 = numhelper(1350)
trigger6 = (stateno = 1350) && (helper(1330), numtarget = 1)
trigger7 = (stateno = 220) && (movecontact)
trigger8 = (stateno = 1300)
trigger9 = stateno = [100,105]

;---------------------------------------------------------------------------
[State -1, Powerup]
type = ChangeState
value = 2000
triggerall = (command = "a")
trigger1 = (ctrl) && (statetype = S)
;---------------------------------------------------------------------------
[State -1, Ki blast hard]
type = ChangeState
value = 1350
triggerall = (command = "QCF_b")  && Power > 0 && var(13) < 7
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 1300 && anim = 1300 && AnimElem = 3,>3
trigger3 = stateno = 1300 && anim = 1301 && AnimElem = 3,>3
trigger4 = stateno = [100,105]
;---------------------------------------------------------------------------

[State -1, Ki blast weak AIR]
type = ChangeState
value = 1305
triggerall = (command = "b") && Power > 0 && (var(13) < 7)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = [600,610]) && (movecontact)
;---------------------------------------------------------------------------
[State -1, Ki blast weak]
type = ChangeState
value = 1300
triggerall = (command != "holddown") && (command = "b") && (var(13) < 7)
trigger1 = (ctrl) && (statetype = S)
trigger2 = (stateno = [200,219]) && (movecontact)
trigger3 = (stateno = [400,410]) && (movecontact)
trigger4 = stateno = [100,105]
;---------------------------------------------------------------------------
; Throw Attempt
[State -1:      Throw Attempt]
type            = ChangeState
value      = 800
triggerall      = ((command = "z")) && ((Command = "holdfwd")) &&(command != "holddown")  && (P2BodyDist X < 15)
trigger1        = (statetype = S) && (ctrl)
trigger1        = (stateno != 100) && (p2movetype != H)
trigger1        = (p2statetype != A)

;-------------------------------------------------------------------------------
[State -1,Air Raid] ;eww no
type = null; ChangeState
value = 1261
triggerall = (command ="DP_x") || (command = "DP_y") || (command = "DP_z") 
trigger1 = statetype = A && ctrl
trigger3 = (stateno = [600,620]) && (movecontact)
trigger4 = (stateno = 1305)
ignorehitpause = 0
;-------------------------------------------------------------------------

[State -1,Air Raid] ;ewww no
type = null; ChangeState
value = 1260
triggerall = (command ="DP_x") || (command = "DP_y") || (command = "DP_z") 
trigger1 = statetype != A && ctrl
trigger3 = (stateno = [200,219]) && (movecontact)
trigger4 = (stateno = 1300)
trigger5 = (stateno = [400,410]) && (movecontact)
ignorehitpause = 0
;-------------------------------------------------------------------------


[State -1,Air Raid]
type = ChangeState
value = 1260
triggerall = (command ="DU_x") || (command = "DU_y") || (command = "DU_z") 
trigger1 = statetype = S && ctrl
trigger2 = stateno = 40
trigger3 = (stateno = [200,219]) && (movecontact)
trigger4 = (stateno = 1300)
trigger5 = (stateno = [400,410]) && (movecontact)
trigger6 = stateno = [100,105]

ignorehitpause = 0
;-------------------------------------------------------------------------
[State -1,Sayajin Strike]
type = ChangeState
value = 1250
triggerall = (command ="RDP_x") || (command = "RDP_y") || (command = "RDP_z") 
trigger1 = (ctrl) && (statetype != A)
trigger2 = (stateno = [200,219]) && (movecontact)
trigger3 = (stateno = 1300)
trigger4 = (stateno = [400,410]) && (movecontact)

;-------------------------------------------------------------------------
[State -1,Gut Check]
type = ChangeState
value = 1230
triggerall = (command ="QCB_x") || (command ="QCB_y") || (command ="QCB_z")
trigger1 = (ctrl) && (statetype != A)
trigger2 = (stateno = [200,219]) && (movecontact)
trigger3 = (stateno = 1300)
trigger4 = (stateno = [400,410]) && (movecontact)
trigger5 = stateno = [100,105]

;---------------------------------------------------------------------------
[State -1,Sayajin Dive 3]
type = ChangeState
value = 1502
triggerall = (command ="QCF_z")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = [600,620]) && (movecontact)
trigger3 = (stateno = 1305)
;-------------------------------------------------------------------------

[State -1,Sayajin Dive 2]
type = ChangeState
value = 1501
triggerall = (command ="QCF_y")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = [600,620]) && (movecontact)
trigger3 = (stateno = 1305)
;-------------------------------------------------------------------------
[State -1,Sayajin Dive]
type = ChangeState
value = 1500
triggerall = (command ="QCF_x")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = [600,620]) && (movecontact)
trigger3 = (stateno = 1305)


;-------------------------------------------------------------------------
[State -1,Sayajin Beatdown Launch]
type = ChangeState
value = 1220
triggerall = (command ="QCF_z")
trigger1 = (ctrl) && (statetype != A)
trigger2 = (stateno = [200,219]) && (movecontact)
trigger3 = (stateno = 1300)
trigger4 = (stateno = [400,410]) && (movecontact)
trigger5 = stateno = [100,105]

;-------------------------------------------------------------------------

[State -1,Sayajin Beatdown Low]
type = ChangeState
value = 1200
triggerall = (command ="QCF_y")
trigger1 = (ctrl) && (statetype != A)
trigger2 = (stateno = [200,219]) && (movecontact)
trigger3 = (stateno = 1300)
trigger4 = (stateno = [400,410]) && (movecontact)
trigger5 = stateno = [100,105]

;--------------------------------------------------------------------------
[State -1,Sayajin Beatdown High]
type = ChangeState
value = 1200
triggerall = (command ="QCF_x")
trigger1 = (ctrl) && (statetype != A)
trigger2 = (stateno = [200,219]) && (movecontact)
trigger3 = (stateno = 1300)
trigger4 = (stateno = [400,410]) && (movecontact)
trigger5 = stateno = [100,105]

;---------------------------------------------------------------------------

[State -1, Jumping Hard attack]
type = ChangeState
value = 620
triggerall = (command = "z")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 610) && (Movecontact)
;---------------------------------------------------------------------------
[State -1, Jumping Hard attack]
type = ChangeState
value = 610
triggerall = (command = "y")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = [600,601]) && (Movecontact)
;---------------------------------------------------------------------------
[State -1, Jumping light attack]
type = null; ChangeState
value = 601
triggerall = (command = "x") && (P2BodyDist X < 15)
trigger1 = (ctrl) && (statetype = A)
;---------------------------------------------------------------------------

[State -1, Jumping light attack]
type = ChangeState
value = 600
triggerall = (command = "x")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 601) && (Movecontact)

;---------------------------------------------------------------------------

[State -1, Crouching Launch attack]
type = ChangeState
value = 420
triggerall = (command = "holddown") && (command = "holdback") && (command = "z")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400 || stateno = 410) && (Movecontact)
trigger3 = (stateno = [210,213]) && (movecontact)
trigger4 = stateno = [100,105]

;---------------------------------------------------------------------------

[State -1, Crouching Launch attack]
type = ChangeState
value = 425
triggerall = (command = "holddown") && (command = "z")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400 || stateno = 410) && (Movecontact)
trigger3 = (stateno = [200,213]) && (movecontact)
trigger4 = stateno = [100,105]

;---------------------------------------------------------------------------

[State -1, Crouching hard attack]
type = ChangeState
value = 405
triggerall = (command = "holddown") && (command = "y")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 401) && (Movecontact)
trigger3 = (stateno = [200,203]) && (movecontact)
trigger4 = stateno = [100,101]

;-------------------------------------------------------------------------

[State -1, Crouching hard attack]
type = ChangeState
value = 410
triggerall = (command = "holddown") && (command = "y")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 405) && (Movecontact)
trigger3 = (stateno = [200,203]) && (movecontact)
;---------------------------------------------------------------------------
-
[State -1, Crouching light attack]
type = ChangeState
value = 400
triggerall = (command = "holddown") && (command = "x")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 201) && (Movecontact)
trigger3 = stateno = [100,101]

;---------------------------------------------------------------------------
[State -1, Crouching light attack 2]
type = ChangeState
value = 401
triggerall = (command = "holddown") && (command = "x")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400) && (Movecontact)

;--------------------------------------------------------------------------
[State -1, Meteor Attack 2]
type = ChangeState
value = 304
triggerall = (command = "c")
trigger1 = (stateno = 303) && (Movehit) && numtarget
;---------------------------------------------------------------------------
[State -1, Meteor Attack 2]
type = ChangeState
value = 302
triggerall = (command = "c")
trigger1 = (stateno = 301) && (Movehit) && numtarget
;---------------------------------------------------------------------------
[State -1, Meteor Attack 1]
type = ChangeState
value = 300
triggerall = (command = "c")
trigger1 = (stateno = 225) && (Movehit) && numtarget
trigger2 = (stateno = 230) && (Movehit) && numtarget
;---------------------------------------------------------------------------
[State -1, Launching After Dash]
type = ChangeState
value = 230
triggerall = (command != "holddown") && (command = "z") && (statetype = S)
trigger1 = (stateno = 1100)

;---------------------------------------------------------------------------
[State -1, Launching after stun attack]
type = ChangeState
value = 225
triggerall = (command = "z")
trigger1 = (stateno = 212 && var(20)=15) && (Movecontact)
;---------------------------------------------------------------------------
[State -1, Launching Knee attack]
type = ChangeState
value = 220
triggerall = (command != "holddown") && (command = "z")
trigger1 = (ctrl) && (statetype = S)
trigger2 = (stateno = [200,213]) && (Movecontact)
trigger3 = (!ctrl) && (statetype = S) && stateno = [100,105]


;---------------------------------------------------------------------------
[State -1, Gut Punch Stun]
type = ChangeState
value = 212
triggerall = (command != "holddown")  && (command = "y")
trigger1 = (ctrl) && (statetype = S) && (command = "holdback")
trigger2 = (command = "holdfwd") && (stateno = [200,203]) && (Movecontact)
trigger3 = (stateno = 210) && (Movecontact)
trigger4 = stateno = 105

;---------------------------------------------------------------------------
[State -1, Standing Hard attack 2]
type = ChangeState
value = 213
triggerall = (command != "holddown")  && (command = "y")
trigger1 = (stateno = 212) && (Movecontact)
;---------------------------------------------------------------------------
[State -1, Standing Hard attack close]
type = ChangeState
value = 211
triggerall = (command != "holddown") && (command = "y") && (P2BodyDist X < 15)
trigger1 = (ctrl) && (statetype = S) && (P2Statetype != A)
trigger4 = stateno = [100,105]

;---------------------------------------------------------------------------
[State -1, Standing Hard attack (right kick)]
type = ChangeState
value = 210
triggerall = (command != "holddown") && (command = "y")
trigger1 = (ctrl) && (statetype = S)
trigger2 = (stateno = [200,203]) && (Movecontact)
trigger3 = (stateno = 211) && (Movecontact)
trigger4 = (stateno = 410) && (Movecontact)
trigger4 = stateno = [100,105]

;---------------------------------------------------------------------------
[State -1, light attack close]
type = ChangeState
value = 201
triggerall = (command != "holddown") && (command = "x") && (P2BodyDist X < 15)
trigger1 = (ctrl) && (statetype = S) && (P2Statetype != A)

;---------------------------------------------------------------------------
[State -1, Standing light attack 3]
type = ChangeState
value = 203
triggerall = (command != "holddown")  && (command = "x")
trigger1 = (ctrl) && (statetype = S) && (command = "holdback")
trigger2 = (stateno = 202) && (Movecontact)
trigger3 = (stateno = 201) && (Movecontact) && (command = "holdback")
trigger4 = stateno = 105

;---------------------------------------------------------------------------
[State -1, Standing light attack 2]
type = ChangeState
value = 202
triggerall = (command != "holddown")  && (command = "x")
trigger1 = (ctrl) && (statetype = S) && (command = "holdfwd")
trigger2 = (stateno = 200) && (Movecontact)
trigger3 = (stateno = 401) && (Movecontact)


;---------------------------------------------------------------------------
[State -1, Standing light attack]
type = ChangeState
value = 200
triggerall = (command != "holddown") && (command = "x") 
trigger1 = (ctrl) && (statetype = S)
trigger2 = (stateno = 201) && (Movecontact)
trigger3 = (stateno = 400) && (Movecontact)
trigger4 = stateno = [100,105]
;------------------------------------------------------------------------
[State -1, Standing light attack]
type = ChangeState
value = 198
triggerall = (command = "s") 
trigger1 = (ctrl) && (statetype != A)

;---------------------------------------------------------------------------
[State -1, AIR Dash]
type = ChangeState
value = 110
triggerall = var(59) = 0
trigger1 = (command = "FF" || command = "BB") && (statetype = A) && (ctrl)

;---------------------------------------------------------------------------
[State -1, Dash Fwd]
type = ChangeState
value = 100
triggerall = var(59) = 0
trigger1 = (command = "FF") && (statetype = S) && (ctrl)
;---------------------------------------------------------------------------
[State -1, Dash Fwd]
type = ChangeState
value = 105
triggerall = var(59) = 0
trigger1 = (command = "BB") && (statetype = S) && (ctrl)
;-----------------------------------------------------------------------
[State -1, Jump]
type = ChangeState
value = 40
triggerall = (command = "holdup")  
trigger1 = (statetype = S) && (ctrl)
trigger2 = stateno = [100,105]



