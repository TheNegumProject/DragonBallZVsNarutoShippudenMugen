;==================================
;"Piccolo", from Super Boutuden 2
;==================================

;----------------------------------------
;Author:	FlowaGirl
;		flowergirl@cutey.com
;----------------------------------------

;===========================================================================
;-| Notes |-----------------------------------------------------------------

;-| Hyper Motions |--------------------------------------------------------

[Command]
name = "Makankosappou"
command =D, DF, F, D, F, x
time = 50

[Command]
name = "Sai Sei"
command = D, DB, B, D, DB, B, x
time = 50


[Command]
name = "Gekiretsukoudan"
command = D, B, D, DF, F, x
time = 50

[Command]
name = "Yoroi Dooshi"
command = D, DF, F, D, DF, F, a
time =50


[Command]
name = "Bunshin no Jyutsu"
command = D, DB, B, D, DB, B, a
time =50

[Command]
name = "Kakusan Yuudou Kikou Ha"
command = D, DF, F, D, DF, F, x
time = 50


;-| Special Motions |------------------------------------------------------

[Command]
name = "Kikou Ha"
command =c
time = 30

[Command]
name = "Hasshu Ken"
command = F, D, DF, x
time = 30

[Command]
name = "Gaeshi"
command = a+x
time = 1


[Command]
name = "Nobiru Ude"
command = x,x,x
time = 50


[Command]
name = "Kasumi Gake Forward"
command =D,DF,F,a
time = 50

[Command]
name = "Joudan Sokutou Geri"
command = B, DB, D, DF, F, a
time = 50


[Command]
name = "Hyakuretsu Ken"
command = F, F, x
time = 20


;-| Misc Motions |---------------------------------------------------------

;-| Double Tap |-----------------------------------------------------------

[Command]
name = "FF"     
command = F, F
time = 12

[Command]
name = "BB"     
command = B, B
time = 12

[Command]
name = "DD"     
command = D, D
time = 12

[Command]
name = "UU"     
command = U, U
time = 12

[Command]
name = "Long Jump"
command = D, U
time = 12

[Command]
name = "Long Jump"
command = D, U
time = 12

[Command]
name = "Bukuu Jyutsu"
command =b+y
time = 12

;-| 2/3 Button Combination |-----------------------------------------------

[Command]
name = "recovery"
command = x
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
trigger1		= ((StateType = S) && (Ctrl))
trigger2		= (Var(0) != 3) && (((Var(3) = 1) && (HitPauseTime < 1)) || (Var(3) = 3)) || ((StateNo = [1050,1056]) && (AnimElem = 2, > 0))
ignorehitpause	= 1

;---------------------------------------------------------------------------
;Run Fwd
[State -1: 		Run Fwd]
type 			= ChangeState
value 		= 100
triggerall 		= (Command = "FF") && (StateNo != [100,106])
trigger1		= ((StateType = S) && (Ctrl)) || ((StateType = A) && (Ctrl) && (Var(0) = 0) && (Var(20) = 0))

;---------------------------------------------------------------------------
;Run Back
[State -1: 		Run Back]
type			= ChangeState
value 		= 105
triggerall 		= (Command = "BB") && (StateNo != [100,106])
trigger1		= ((StateType = S) && (Ctrl)) || ((StateType = A) && (Ctrl) && (Var(0) = 0) && (Var(20) = 0))

;===========================================================================
;-| Hyper |-----------------------------------------------------------------

;---------------------------------------------------------------------------
;Makankosappou
[State -1: 		Makankosappou]
type 			= ChangeState
value 		= 3000
triggerall 		= (Command = "Makankosappou") && (Power >= 2500) && (Pos Y >= 0) && (StateNo != 3000)
triggerall 		= (Var(5) := IfElse(Command = "holdx",1,IfElse(Command = "holdy",2,3)))
trigger1		= ((StateType = S) && (Ctrl)) || (Var(3) = 1) || (Var(3) = 3) || (Var(3) = 4) || (StateNo = [1050,1056])

;---------------------------------------------------------------------------
;Sai Sei
[State -: 		Sai Sei]
type 			= ChangeState
value 		= 3010
triggerall 		= (Command = "Sai Sei") && (Power >= 2500) && (Life < Const(Data.Life)) && (StateNo != 3010)
triggerall 		= (Var(5) := IfElse(Command = "holdx",1,IfElse(Command = "holdy",2,3)))
trigger1		= ((StateType = S) && (Ctrl)) || ((StateType = A) && (Ctrl))

;---------------------------------------------------------------------------
;Gekiretsukoudan
[State -1: 		Gekiretsukoudan]
type 			= ChangeState
value 		= 3020
triggerall 		= (Command = "Gekiretsukoudan") && (Power >= 5000) && (Pos Y >= 0) && (StateNo != 3020)
triggerall 		= (Var(5) := IfElse(Command = "holdx",1,IfElse(Command = "holdy",2,3)))
trigger1 		= ((StateType = S) && (Ctrl)) || (Var(3) = 1) || (Var(3) = 3) || (Var(3) = 4) || (StateNo = [1050,1056])

;---------------------------------------------------------------------------
;Yoroi Dooshi
[State -1: 		Yoroi Dooshi]
type 			= ChangeState
value 		= IfElse(StateType != A,3030,3031)
triggerall 		= (Command = "Yoroi Dooshi") && (Power >= 2500) && (StateNo != [3030,3031])
triggerall 		= (Var(5) := IfElse(Command = "holda",1,IfElse(Command = "holdb",2,3)))
trigger1		= ((StateType = S) && (Ctrl)) || ((StateType = A) && (Ctrl))
trigger2		= (Var(3) > 0) || (StateNo = [1050,1051])

;---------------------------------------------------------------------------
;Bunshin no Jyutsu
[State -1: 		Bunshin no Jyutsu]
type 			= ChangeState
value 		= 3070
triggerall 		= (Command = "Bunshin no Jyutsu") && (Power >= 2500) && (NumHelper(3070) <= 0) && (StateNo != 3070)
triggerall 		= (Var(5) := IfElse(Command = "holda",1,IfElse(Command = "holdb",2,3)))
trigger1		= ((StateType = S) && (Ctrl)) || ((StateType = A) && (Ctrl))

;---------------------------------------------------------------------------
;Kakusan Yuudou Kikou Ha
[State -1: 		Kakusan Yuudou Kikou Ha]
type 			= ChangeState
value 		= 3060
triggerall 		= (Command = "Kakusan Yuudou Kikou Ha") && (Power >= 2500) && (NumHelper(9194) <= 0) && (StateNo != 3060)
triggerall 		= (Var(5) := IfElse(Command = "holdx",1,IfElse(Command = "holdy",2,3)))
trigger1		= ((StateType = A) && (Ctrl)) || (Var(3) = 2) || (Var(3) = 4)

;---------------------------------------------------------------------------
;Kakusan Yuudou Kikou Ha Release
[State -1: 		Kakusan Yuudou Kikou Ha Release]
type 			= ChangeState
value 		= 3061
triggerall 		= ((Command = "xy") || (Command = "yz") || (Command = "xz")) && (Command != "holddown") && (Var(2) <= 0) && (StateNo != 3061)
trigger1		= (((StateType = S) && (Ctrl)) || (StateNo = [8021,8022])) && (NumHelper(9194) > 0)

;===========================================================================
;-| Special |---------------------------------------------------------------

;---------------------------------------------------------------------------
;Hasshu Ken
[State -1: 		Hasshu Ken]
type 			= ChangeState
value 		= 1010
triggerall 		= (Command = "Hasshu Ken")
trigger1		= ((StateType = S) && (Ctrl)) || ((StateType = A) && (Ctrl) && (Var(20) = 1)) || (Var(3) = 1) || ((Var(3) = 2) && (Var(20) = 1)) || (StateNo = [1050,1056])

;---------------------------------------------------------------------------
;Kikou Ha
[State -1: 		Kikou Ha]
type 			= ChangeState
value 		= IfElse(StateType = A,1090,1000)
triggerall 		= (Command = "Kikou Ha")
trigger1		= ((StateType = S) && (Ctrl)) || ((StateType = A) && (Ctrl))
trigger2		= (Var(3) = 1) || (Var(3) = 2) || ((StateNo = 1010) && (AnimElem = 6, > 0)) || (StateNo = [1050,1056])

;---------------------------------------------------------------------------
;Gaeshi
[State -1: 		Gaeshi]
type 			= ChangeState
value 		= 1020
triggerall 		= (Command = "Gaeshi")
trigger1		= (StateType = S) && (Ctrl)

;---------------------------------------------------------------------------
;Nobiru Ude
[State -1: 		Nobiru Ude]
type 			= ChangeState
value 		= 1030
triggerall 		= (Command = "Nobiru Ude") && (Var(22) = 0)
trigger1		= ((StateType = S) && (Ctrl)) || (Var(3) = 1) || (StateNo = [1050,1056])

;---------------------------------------------------------------------------
;Joudan Sokutou Geri
[State -1: 		Joudan Sokutou Geri]
type 			= ChangeState
value 		= 1070
triggerall 		= (Command = "Joudan Sokutou Geri")
trigger1		= ((StateType = S) && (Ctrl))
trigger2		= (Var(3) = 1) || ((StateNo = 1010) && (AnimElem = 6, > 0)) || (StateNo = [1050,1056])

;---------------------------------------------------------------------------
;Kasumi Gake: Forward
[State -1: 		Kasumi Gake Forward]
type 			= ChangeState
value 		= 1050
triggerall 		= (Command = "Kasumi Gake Forward")
trigger1		= ((StateType = S) && (Ctrl))


;---------------------------------------------------------------------------
;Hyakuretsu Ken
[State -1: 		Hyakuretsu Ken]
type 			= ChangeState
value 		= 1080
triggerall 		= (Command = "Hyakuretsu Ken") && (Power >= 250) && (Var(15) > 3)
trigger1		= ((StateType = S) && (Ctrl)) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0)) || (Var(3) > 0) || (StateNo = [1050,1056])

;---------------------------------------------------------------------------
;Ki Charge
[State -1: 		Ki Charge]
type 			= ChangeState
value 		= 8000
triggerall 		= (Command = "holda") && (Command = "holdb") && (Command != "holdfwd") && (Command != "holdback") && (NumHelper(3070) = 0) && (Var(2) <= 0)
trigger1		= (StateType = S) && (Ctrl)
triggerall=power<5000

;---------------------------------------------------------------------------
;Dodge
[State -1: 		Dodge]
type 			= ChangeState
value 		= 8010
triggerall 		= (Command = "s") && (Command = "s") && (Var(2) <= 0)
trigger1		= (StateType != A) && (Ctrl)

;---------------------------------------------------------------------------
;Bukuu Jyutsu
[State -1: 		Bukuu Jyutsu]
type 			= ChangeState
value 		= IfElse(StateType = A,8021,8020)
triggerall 		= (Command = "Bukuu Jyutsu") && (Power > 100)
trigger1		= ((StateType = S) && (Ctrl)) || ((StateType = C) && (Ctrl)) || ((StateType = A) && (Ctrl))
trigger2		= (Var(3) = 2) || ((StateNo = 730) && (MoveHit) && (NumTarget(730)))

;===========================================================================
;-| Basic |-----------------------------------------------------------------

;---------------------------------------------------------------------------
;Knock Down
[State -1: 		Knock Down]
type 			= ChangeState
value 		= 700
triggerall 		= ((Command = "xy") || (Command = "yz") || (Command = "xz") || (Command = "ab") || (Command = "bc") || (Command = "ac")) && (Command = "holddown")
triggerall		= (Power >= 500) && (Var(2) <= 0) && (Var(15) > 3) && (Alive)
trigger1		= ((StateType = C) && (Ctrl)) || ((StateNo = 700) && (AnimElem = 3, > 0) && (MoveContact)) || (StateNo = 1080) || (Var(3) = [1,3])
ignorehitpause	= 1

;---------------------------------------------------------------------------
;Knock Back
[State -1: 		Knock Back]
type 			= ChangeState
value 		= 710
triggerall 		= ((Command = "ab") || (Command = "bc") || (Command = "ac")) && (Power >= 500) && (Var(2) <= 0) && (Var(15) > 3)
trigger1		= ((StateType = S) && (Ctrl)) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0)) || (StateNo = 1080)
trigger2		= (Var(3) = [1,3])
ignorehitpause	= 1

;---------------------------------------------------------------------------
;Knock Up, Air
[State -1: 		Knock Up Air]
type 			= ChangeState
value 		= 720
triggerall 		= ((Command = "xy") || (Command = "yz") || (Command = "xz")) && (Command != "holddown") && (Power >= 500) && (Var(2) <= 0) && (Var(15) > 3)
trigger1		= ((StateNo = 1080) && (Pos Y < 0))
trigger2		= (Var(3) = 2)
ignorehitpause	= 1

;---------------------------------------------------------------------------
;Knock Up, Ground
[State -1: 		Knock Up Ground]
type 			= ChangeState
value 		= 730
triggerall 		= ((Command = "xy") || (Command = "yz") || (Command = "xz")) && (Command != "holddown") && (Var(2) <= 0)
trigger1		= ((StateType = S) && (Ctrl) && (NumHelper(9194) < 1)) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0) && (NumHelper(9194) < 1)) || ((StateNo = 1080) && (Pos Y >= 0))
trigger2		= (Var(3) = 1)
ignorehitpause	= 1

;---------------------------------------------------------------------------
;Throw
[State -1: 		Throw]
type 			= ChangeState
value 		= IfElse(StateType = A,805,800)
triggerall 		= (Command = "xa") && ((Command = "holdfwd") || (Command = "holdback")) && (Var(2) <= 0)
trigger1		= ((StateType = S) && (Ctrl)) || ((StateType = A) && (Ctrl) && (Var(20) = 0))

;---------------------------------------------------------------------------
;Stand Weak Punch
[State -1: 		SWP]
type 			= ChangeState
value 		= 200
triggerall 		= (Command = "x") && (Command != "holddown") && (Var(2) <= 0)
trigger1		= ((StateType = S) && (Ctrl)) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= ((StateNo = 200) || (StateNo = 400)) && ((AnimElem = 2, > 5) || ((MoveContact) && (AnimElem = 2, > 3)))
ignorehitpause	= 1

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1: 		SMP]
type 			= ChangeState
value 		= 210
triggerall 		= (Command = "y") && (Command != "holddown") && (P2BodyDist X > 15) && (Var(2) <= 0)
trigger1		= ((StateType = S) && (Ctrl)) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= ((StateNo = 200) || (StateNo = [230,235]) || (StateNo = 400) || (StateNo = 430)) && (MoveContact)
ignorehitpause	= 1

;---------------------------------------------------------------------------
;Stand Medium Punch (Close)
[State -1: 		SMPC]
type 			= ChangeState
value 		= 215
triggerall 		= (Command = "y") && (Command != "holddown") && (P2BodyDist X <= 15) && (Var(2) <= 0)
trigger1		= ((StateType = S) && (Ctrl)) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= ((StateNo = 200) || (StateNo = [230,235]) || (StateNo = 400) || (StateNo = 430)) && (MoveContact)
ignorehitpause	= 1

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1: 		SSP]
type 			= ChangeState
value 		= IfElse((Command = "holdfwd"),221,220)
triggerall 		= (Command = "z") && (Command != "holddown") && (P2BodyDist X > 15) && (Var(2) <= 0)
trigger1		= ((StateType = S) && (Ctrl)) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= ((StateNo = 200) || (StateNo = [210,215]) || (StateNo = [230,235]) || (StateNo = 240)) && (MoveContact)
trigger3		= ((StateNo = 400) || (StateNo = 410) || (StateNo = 430) || (StateNo = 440)) && (MoveContact)
ignorehitpause	= 1

;---------------------------------------------------------------------------
;Stand Strong Punch (Close)
[State -1: 		SSPC]
type 			= ChangeState
value 		= 225
triggerall 		= (Command = "z") && (Command != "holddown") && (P2BodyDist X <= 15) && (Var(2) <= 0)
trigger1		= ((StateType = S) && (Ctrl)) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= ((StateNo = 200) || (StateNo = [210,215]) || (StateNo = [230,235]) || (StateNo = 240)) && (MoveContact)
trigger3		= ((StateNo = 400) || (StateNo = 410) || (StateNo = 430) || (StateNo = 440)) && (MoveContact)
ignorehitpause	= 1

;---------------------------------------------------------------------------
;Stand Weak Kick
[State -1: 		SWK]
type 			= ChangeState
value 		= 230
triggerall 		= (Command = "a") && (Command != "holddown") && (P2BodyDist X > 15) && (Var(2) <= 0)
trigger1		= ((StateType = S) && (Ctrl)) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= ((StateNo = 200) || (StateNo = 400)) && (MoveContact)
ignorehitpause	= 1

;---------------------------------------------------------------------------
;Stand Weak Kick (Close)
[State -1: 		SWKC]
type 			= ChangeState
value 		= 235
triggerall 		= (Command = "a") && (Command != "holddown") && (P2BodyDist X <= 15) && (Var(2) <= 0)
trigger1		= ((StateType = S) && (Ctrl)) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= ((StateNo = 200) || (StateNo = 400)) && (MoveContact)
ignorehitpause	= 1

;---------------------------------------------------------------------------
;Stand Medium Kick
[State -1: 		SMK]
type 			= ChangeState
value 		= 240
triggerall 		= (Command = "b") && (Command != "holddown") && (Var(2) <= 0)
trigger1		= ((StateType = S) && (Ctrl)) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= ((StateNo = 200) || (StateNo = [210,215]) || (StateNo = [230,235])) && (MoveContact)
trigger3		= ((StateNo = 400) || (StateNo = 410) || (StateNo = 430)) && (MoveContact)
ignorehitpause	= 1

;---------------------------------------------------------------------------
;Stand Strong Kick
[State -1: 		SSK]
type 			= ChangeState
value 		= 250
triggerall 		= (Command = "c") && (Command != "holddown") && (Var(2) <= 0)
trigger1		= ((StateType = S) && (Ctrl)) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= ((StateNo = 200) || (StateNo = [210,215]) || (StateNo = [220,225]) || (StateNo = [230,235]) || (StateNo = 240)) && (MoveContact)
trigger3		= ((StateNo = 400) || (StateNo = 410) || (StateNo = 420) || (StateNo = 430) || (StateNo = 440)) && (MoveContact)
ignorehitpause	= 1

;---------------------------------------------------------------------------
;Crouch Weak Punch
[State -1: 		CWP]
type 			= ChangeState
value 		= 400
triggerall 		= (Command = "x") && (Command = "holddown") && (Var(2) <= 0)
trigger1		= ((StateType = C) && (Ctrl)) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= ((StateNo = 200) || (StateNo = 400)) && ((AnimElem = 2, > 5) || ((MoveContact) && (AnimElem = 2, > 3)))
ignorehitpause	= 1

;---------------------------------------------------------------------------
;Crouch Medium Punch
[State -1: 		CMP]
type 			= ChangeState
value 		= 410
triggerall 		= (Command = "y") && (Command = "holddown") && (Var(2) <= 0)
trigger1		= ((StateType = C) && (Ctrl)) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= ((StateNo = 200) || (StateNo = [230,235]) || (StateNo = 400) || (StateNo = 430)) && (MoveContact)
ignorehitpause	= 1

;---------------------------------------------------------------------------
;Crouch Strong Punch
[State -1: 		CSP]
type 			= ChangeState
value 		= 420
triggerall 		= (Command = "z") && (Command = "holddown") && (Var(2) <= 0)
trigger1		= ((StateType = C) && (Ctrl)) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= ((StateNo = 200) || (StateNo = [210,215]) || (StateNo = [230,235]) || (StateNo = 240)) && (MoveContact)
trigger3		= ((StateNo = 400) || (StateNo = 410) || (StateNo = 430) || (StateNo = 440)) && (MoveContact)
ignorehitpause	= 1

;---------------------------------------------------------------------------
;Crouch Weak Kick
[State -1: 		CWK]
type 			= ChangeState
value 		= 430
triggerall 		= (Command = "a") && (Command = "holddown") && (Var(2) <= 0)
trigger1		= ((StateType = C) && (Ctrl)) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= ((StateNo = 200) || (StateNo = 400)) && (MoveContact)
ignorehitpause	= 1

;---------------------------------------------------------------------------
;Crouch Medium Kick
[State -1: 		CMK]
type 			= ChangeState
value 		= 440
triggerall 		= (Command = "b") && (Command = "holddown") && (Var(2) <= 0)
trigger1		= ((StateType = C) && (Ctrl)) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= ((StateNo = 200) || (StateNo = [210,215]) || (StateNo = [230,235])) && (MoveContact)
trigger3		= ((StateNo = 400) || (StateNo = 410) || (StateNo = 430)) && (MoveContact)
ignorehitpause	= 1

;---------------------------------------------------------------------------
;Crouch Strong Kick
[State -1: 		CSK]
type 			= ChangeState
value 		= 450
triggerall 		= (Command = "c") && (Command = "holddown") && (Var(2) <= 0)
trigger1		= ((StateType = C) && (Ctrl)) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= ((StateNo = 200) || (StateNo = [210,215]) || (StateNo = [220,225]) || (StateNo = [230,235]) || (StateNo = 240)) && (MoveContact)
trigger3		= ((StateNo = 400) || (StateNo = 410) || (StateNo = 420) || (StateNo = 430) || (StateNo = 440)) && (MoveContact)
ignorehitpause	= 1

;---------------------------------------------------------------------------
;Jump Weak Punch
[State -1: 		JWP]
type 			= ChangeState
value 		= 600
triggerall 		= (Command = "x") && (Var(2) <= 0)
trigger1		= ((StateType = A) && (Ctrl)) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y < 0))
ignorehitpause	= 1

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1: 		JMP]
type 			= ChangeState
value 		= 610
triggerall 		= (Command = "y") && (Var(2) <= 0)
trigger1		= ((StateType = A) && (Ctrl)) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y < 0))
trigger2		= ((StateNo = 600) || (StateNo = 630)) && (MoveContact)
ignorehitpause	= 1

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1: 		JSP]
type 			= ChangeState
value 		= 620
triggerall 		= (Command = "z") && (Var(2) <= 0)
trigger1		= ((StateType = A) && (Ctrl)) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y < 0))
trigger2		= ((StateNo = 600) || (StateNo = 610) || (StateNo = 630) || (StateNo = 640)) && (MoveContact)
ignorehitpause	= 1

;---------------------------------------------------------------------------
;Jump Weak Kick
[State -1: 		JWK]
type 			= ChangeState
value 		= 630
triggerall 		= (Command = "a") && (Var(2) <= 0)
trigger1		= ((StateType = A) && (Ctrl)) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y < 0))
trigger2		= (StateNo = 600) && (MoveContact)
ignorehitpause	= 1

;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1: 		JMK]
type 			= ChangeState
value 		= 640
triggerall 		= (Command = "b") && (Var(2) <= 0)
trigger1		= ((StateType = A) && (Ctrl)) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y < 0))
trigger2		= ((StateNo = 600) || (StateNo = 610) || (StateNo = 630)) && (MoveContact)
ignorehitpause	= 1

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1: 		JSK]
type 			= ChangeState
value 		= 650
triggerall 		= (Command = "c") && (Var(2) <= 0)
trigger1		= ((StateType = A) && (Ctrl)) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y < 0))
trigger2		= ((StateNo = 600) || (StateNo = 610) || (StateNo = 630) || (StateNo = 640)) && (MoveContact)
ignorehitpause	= 1
