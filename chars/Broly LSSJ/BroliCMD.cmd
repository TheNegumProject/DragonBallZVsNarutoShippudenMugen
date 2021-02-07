;================================
;"Broli", from Super Boutuden 2
;================================

;----------------------------------------
;Author:	The Necromancer
;		
;		
;----------------------------------------

;===========================================================================
;-| Notes |-----------------------------------------------------------------

;-| Default Values |----------------------------------------------------
[Defaults]
command.time = 15
command.buffer.time = 1

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
name = "holdstart" 
command = /s
time = 1

;-| CPU |------------------------------------------------------------------

[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "start2"
command = s
time = 1

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2"
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

[Command]
name = "holda2"
command = /a
time = 1

[Command]
name = "holdb2"
command = /b
time = 1

[Command]
name = "holdc2"
command = /c
time = 1

[Command]
name = "holdx2"
command = /x
time = 1

[Command]
name = "holdy2"
command = /y
time = 1

[Command]
name = "holdz2"
command = /z
time = 1

[Command]
name = "holdstart2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+y
time = 1

;-| HYPER Motions |--------------------------------------------------------
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;kierom sloummmmm;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;==============================================================================
;==============================================================================
[Command]
name = "Gekimetsu Dama"     ;  devil
command = ~D, DB, B, a
time = 30

[Command]
name = "Gekimetsu Dama"   ; medio
command = ~D, DF, F, a
time = 30

[Command]
name = "Gekimetsu Dama"      ; fuerte
command = ~D, F, $D, F, z
time = 30

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;sheromm presa;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;==============================================================================
;==============================================================================
[Command]
name = "Minami Ginga Gouka"       ; medio
command = ~D, DB, B, x
time = 30

[Command]
name = "Minami Ginga Gouka"       ;  devil
command = a+x
time = 30

[Command]
name = "Minami Ginga Gouka"    ; fuerte
command =  ~D, B, F, z
time = 30

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;golpe de pared;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;==============================================================================
;==============================================================================
[Command]
name = "Magyo Satsuriku"      ; devil
command = ~D, DB, B, b
time = 30

[Command]
name = "Magyo Satsuriku"      ; medio
command = ~D, DF, F, b
time = 30

[Command]
name = "Magyo Satsuriku"      ; fuerte
command = ~D, $B, $D, F, c
time = 30
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;shinkidama;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;==============================================================================
;==============================================================================

[Command]
name = "shinkidama"
command = ~30s
time = 5

[Command]
name = "shinkidama"
command = ~D, DB, B, c
time = 30

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX henki dama tipo broli
[Command]
name = "energy"
command = ~D, x
time = 30

[Command]
name = "energy"
command = ~D, B, x
time = 30
;
;                             Special EX Motions

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX bolas perseguidoras
[Command]
name = "Kikou Ha EX"
command = ~D,z
time = 15

[Command]
name = "Kikou Ha EX"
command = ~D, DF, F, y+z
time = 15

[Command]
name = "Kikou Ha EX"
command = ~D, DF, F, x+z
time = 15
;XXX XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX pilar de poder

[Command]
name = "Bakuenha EX"
command = ~$D, $U, x+y
time = 15

[Command]
name = "Bakuenha EX"
command = ~$D, $U, y+z
time = 15

[Command]
name = "Bakuenha EX"
command = ~$D, $U, x+z
time = 15
;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX golpe con cuerpo
[Command]
name = "Tosshin Toubu Dageki EX"
command = ~F,y
time = 15

[Command]
name = "Tosshin Toubu Dageki EX"
command = ~F, D, $F, y+x
time = 15

[Command]
name = "Tosshin Toubu Dageki EX"
command = ~F, D, $F, x+z
time = 15
;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX super empujo invisible
[Command]
name = "Geki Kaze EX"
command = ~D,F, y
time = 15

[Command]
name = "Geki Kaze EX"
command = ~F, $D, B, y+z
time = 15

[Command]
name = "Geki Kaze EX"
command = ~F, $D, B, x+z
time = 15
;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX te golpea y rebota contra parede golpe fuerte
[Command]
name = "Tobi Rariatto EX"
command = ~30$B, F, x+y
time = 15

[Command]
name = "Tobi Rariatto EX"
command = ~30$B, F, y+z
time = 15

[Command]
name = "Tobi Rariatto EX"
command = ~30$B, F, x+z
time = 15
;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXcodo codo hasta que te dispara
[Command]
name = "Mawari Ken EX"
command = ~D, DF, F, a+b
time = 15

[Command]
name = "Mawari Ken EX"
command = ~D, DF, F, b+c
time = 15

[Command]
name = "Mawari Ken EX"
command = ~D, DF, F, a+c
time = 15
;XXXXXXXXXXXXXXXXXXXXXXXXXXX salta cerca tuyo y te ataca con pilar de peder
[Command]
name = "Attouteki Gekiha EX"
command = c+y
time = 15

[Command]
name = "Attouteki Gekiha EX"
command = ~30$D, $U, b+c
time = 15

[Command]
name = "Attouteki Gekiha EX"
command = ~30$D, $U, a+c
time = 15
;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX patada voladora con escudo
[Command]
name = "Naraku Otoshi EX"
command = y+z
time = 15

[Command]
name = "Naraku Otoshi EX"
command = ~F, D, $F, b+c
time = 15

[Command]
name = "Naraku Otoshi EX"
command = ~F, D, $F, a+c
time = 15
;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX combo de patadas
[Command]
name = "Satsubatsu Yakushin EX"
command = a+b
time = 15

[Command]
name = "Satsubatsu Yakushin EX"
command = b+c
time = 15

[Command]
name = "Satsubatsu Yakushin EX"
command = ~D, DB, B, z
time = 15



;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
;                                  Special Motions  2 poco menos fuertes
;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX


;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA bolitas debiles
[Command]
name = "Kikou Ha"
command = ~D, DF, F, x
time = 15

[Command]
name = "Kikou Ha"
command = ~D, DF, F, y
time = 15

[Command]
name = "Kikou Ha"
command = ~D, DF, F, z
time = 15
;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA tipo kierom salum devil devil
[Command]
name = "Gou Kikou Ha"
command = ~D, DB, B, z
time = 15

[Command]
name = "Gou Kikou Ha"
command = ~B, $D, F, y
time = 15

[Command]
name = "Gou Kikou Ha"
command = ~B, $D, F, z
time = 15
;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA pilar de poder sin cambios
[Command]
name = "Bakuenha"
command = ~$D, $U, x
time = 15

[Command]
name = "Bakuenha"
command = ~$D, $U, y
time = 15

[Command]
name = "Bakuenha"
command = ~$D, $U, z
time = 15
;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA codazo devil
[Command]
name = "Tosshin Toubu Dageki"
command = ~F, D, $F, x
time = 15

[Command]
name = "Tosshin Toubu Dageki"
command = ~F, D, $F, y
time = 15

[Command]
name = "Tosshin Toubu Dageki"
command = ~F, D, $F, z
time = 15
;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA poder invisible 2 devil
[Command]
name = "Geki Kaze"
command = x+z
time = 15

[Command]
name = "Geki Kaze"
command = ~F, $D, B, y
time = 15

[Command]
name = "Geki Kaze"
command = ~F, $D, B, z
time = 15
;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA codazo fuerte 2 devil
[Command]
name = "Tobi Rariatto"
command = ~30$B, F, x
time = 15

[Command]
name = "Tobi Rariatto"
command = ~30$B, F, y
time = 15

[Command]
name = "Tobi Rariatto"
command = ~30$B, F, z
time = 15
;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA te agarra y te explta poder en cara
[Command]
name = "Zugai Hasatsu"
command = a+z
time = 35

[Command]
name = "Zugai Hasatsu"
command = x+y
time = 35

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA codo codo hasta que te dispara  2 vevil
[Command]
name = "Mawari Ken"
command = ~D, DF, F, a
time = 15

[Command]
name = "Mawari Ken"
command = ~D, DF, F, b
time = 15

[Command]
name = "Mawari Ken"
command = ~D, DF, F, c
time = 15
;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA te salta ensima y te glpe muy devil
[Command]
name = "Attouteki Gekiha"
command = ~30$D, $U, a
time = 15

[Command]
name = "Attouteki Gekiha"
command = ~30$D, $U, b
time = 15

[Command]
name = "Attouteki Gekiha"
command = ~30$D, $U, c
time = 15
;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAApatada voladora sin escudo
[Command]
name = "Naraku Otoshi"
command = ~F, D, $F, a
time = 15

[Command]
name = "Naraku Otoshi"
command = ~F, D, $F, b
time = 15

[Command]
name = "Naraku Otoshi"
command = ~F, D, $F, c
time = 15
;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA combo devil
[Command]
name = "Satsubatsu Yakushin"
command = a+b
time = 15

[Command]
name = "Satsubatsu Yakushin"
command = b+c
time = 15

[Command]
name = "Satsubatsu Yakushin"
command = ~30$B, F, c
time = 15
;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA te patea y te mete en un poso
[Command]
name = "Jigoku Wari"
command = ~a+y
time = 30

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
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
command = ~D, UF
time = 12

[Command]
name = "Long Jump"
command = ~D, UB
time = 12

[Command]
name = "Bukuu Jyutsu"
command = U, U
time = 10

;-| 2/3 Button Combination |-----------------------------------------------

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "xz"
command = x+z
time = 1

[Command]
name = "ac"
command = a+c
time = 1

[Command]
name = "xa"
command = x+a
time = 1

[Command]
name = "by"
command = b+y
time = 1

[Command]
name = "cz"
command = c+z
time = 1

[Command]
name = "ja"
command = y+c
time = 1


;-| Dir + Button |----------------------------------------------------------

;---------------------------------------------------------------------------

[Statedef -1]

;===========================================================================
;-| Misc |------------------------------------------------------------------

[State -1:		AIHelper1]
type 			= ChangeState
trigger1 		= IsHelper(9741)
trigger1 		= Parent, Name = "[Necromancer's] Broli"
value 			= 9741

[State -1:		AIHelper2]
type 			= ChangeState
trigger1 		= IsHelper(9742)
trigger1 		= Parent, Name = "[Necromancer's] Broli"
value 			= 9742

;---------------------------------------------------------------------------
;Taunt
[State -1: 		Taunt]
type 			= ChangeState
value 			= 195
triggerall		= (BackEdgeBodyDist > -5) && (Var(2) <= 0)
trigger1 		= (Command = "start") && (StateType = S) && (Ctrl)
ignorehitpause		= 1

;---------------------------------------------------------------------------
;Long Jump
[State -1: 		Long Jump]
type 			= ChangeState
value 			= 40
triggerall		= (BackEdgeBodyDist > -5) && (Var(2) <= 0)
trigger1 		= ((Command = "Long Jump")) && (((StateType = S) && (Ctrl)) || ((Var(0) != 3) && (Var(3) = 1) && (HitPauseTime < 1)) || (Var(3) = 3))
trigger2		= ((Command = "holdup") && (Pos Y >= 0)) && (((Command = "holdfwd") && (StateNo = 100)) || ((Command = "holdback") && (StateNo = 105)))
ignorehitpause		= 1

;---------------------------------------------------------------------------
;Run Fwd
[State -1: 		Run Fwd]
type 			= ChangeState
value 			= 100
triggerall 		= (Command = "FF") && (StateNo != [100,106]) && (Pos Y >= 0) && (Var(2) <= 0)
trigger1		= (StateType = S) && (Ctrl)
trigger2		= (Var(3) = 1) || (Var(3) = 3)

;---------------------------------------------------------------------------
;Run Back
[State -1: 		Run Back]
type			= ChangeState
value 			= 105
triggerall 		= (Command = "BB") && (StateNo != [100,106]) && (Pos Y >= 0) && (Var(2) <= 0)
trigger1		= (StateType = S) && (Ctrl)

;---------------------------------------------------------------------------
;Ki Charge
[State -1: 		Ki Charge]
type 			= ChangeState
value 			= 8000
triggerall 		= (Command = "holdc") && (Command = "holdz") && (Command != "holdfwd") && (Command != "holdback") && (Var(2) <= 0)
trigger1		= ((StateType = S) && (Ctrl)) || ((StateType = A) && (Ctrl) && (Var(20) = 1))

;---------------------------------------------------------------------------
;Zanzouken
[State -1: 		Zanzouken]
type 			= ChangeState
value 			= 8010
triggerall 		= (Command = "by") && (Var(2) <= 0)
trigger1		= ((StateType != A) && (Ctrl)) || ((StateType = A) && (Ctrl) && (Var(20) = 1)) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= ((StateNo = [150,153]) && (Power >= 500)) || (Var(3) = 3) || ((StateNo = 1060) && (MoveContact))

;---------------------------------------------------------------------------
;Bukuu Jyutsu
[State -1: 		Bukuu Jyutsu]
type 			= ChangeState
value 			= IfElse(StateType = A,8021,8020)
triggerall 		= (Command = "Bukuu Jyutsu") && (Var(0) = 0) && (Var(2) <= 0)
trigger1		= ((StateType = S) && (Ctrl)) || ((StateType = C) && (Ctrl)) || ((StateType = A) && (Ctrl))
trigger2		= (Var(3) = 2) || ((StateNo = 730) && (MoveHit) && (NumTarget(730)))

;---------------------------------------------------------------------------
;Ki Shouheki
[State -1: 		Ki Shouheki]
type 			= ChangeState
value 			= 8040
triggerall 		= ((Command = "xz") ^^ (Command = "ac")) && (Var(2) <= 0)
trigger1		= (((StateType != A) && (Ctrl)) || ((StateType = A) && (Ctrl) && (Var(20) = 1))) && (Command != "holdfwd") && (Command != "holdback")
trigger2		= (Var(3) = 1) || ((Var(3) = 3) && (PrevStateNo != 8040)) || ((StateNo = [150,153]) && (Power >= 250))
;===========================================================================
;-| Hyper |-----------------------------------------------------------------


;---------------------------------------------------------------------------
;Gekimetsu Dama
[State -1: 		Gekimetsu Dama]
type 			= ChangeState
value 			= 3000
triggerall 		= (Command = "Gekimetsu Dama") && ((Power >= 1500) || (Life < 250)) && (StateNo != 3000) && (Var(2) <= 0)
triggerall		= (Var(5) := IfElse((Command = "holdz"),(1 + (Power >= 2000) + (Power >= 2500)),IfElse((Command = "holdy"),(1 + (Power >= 2000)),1)))
trigger1		= ((StateType = S) && (Ctrl)) || ((StateType = A) && (Ctrl) && (Var(20) = 1)) || (Var(3) = 1) || (Var(3) = 3) || (Var(3) = 4)

;---------------------------------------------------------------------------
;Minami Ginga Gouka
[State -1: 		Minami Ginga Gouka]
type 			= ChangeState
value 			= 3010
triggerall 		= (Command = "Minami Ginga Gouka") && (Power >= 4000) && (StateNo != 3010) && (Var(2) <= 0)
triggerall		= (Var(5) := IfElse((Command = "holdz"),(1 + (Power >= 4500) + (Power >= 5000)),IfElse((Command = "holdy"),(1 + (Power >= 4500)),1)))
trigger1		= ((StateType = S) && (Ctrl)) || ((StateType = A) && (Ctrl) && (Var(20) = 1)) || (Var(3) = 1) || (Var(3) = 3) || (Var(3) = 4)

;---------------------------------------------------------------------------
;Magyo Satsuriku
[State -1: 		Magyo Satsuriku]
type 			= ChangeState
value 			= 3020
triggerall 		= (Command = "Magyo Satsuriku") && (Power >= 4000) && (Pos Y >= 0) && (StateNo != 3020) && (Var(2) <= 0)
triggerall		= (Var(5) := IfElse((Command = "holdc"),(1 + (Power >= 4500) + (Power >= 5000)),IfElse((Command = "holdb"),(1 + (Power >= 4500)),1)))
trigger1		= ((StateType = S) && (Ctrl)) || (Var(3) = 1) || (Var(3) = 3) || (Var(3) = 4)

;===========================================================================
;-| Special |---------------------------------------------------------------

;---------------------------------------------------------------------------
;Jigoku Wari
[State -1: 		Jigoku Wari]
type 			= ChangeState
value 			= 1100
triggerall 		= (Command = "Jigoku Wari") && (Var(2) <= 0)
trigger1		= ((StateType != A) && (Ctrl)) || (StateNo = 40) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= (Var(3) = 1) || (Var(3) = 3)

;---------------------------------------------------------------------------
;Satsubatsu Yakushin
[State -1: 		Satsubatsu Yakushin]
type 			= ChangeState
value 			= 1090
triggerall 		= (Command = "Satsubatsu Yakushin") && (Command != "Satsubatsu Yakushin EX") && (Var(2) <= 0)
trigger1		= ((StateType != A) && (Ctrl)) || ((StateType = A) && (Ctrl) && (Var(20) = 1)) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= (Var(3) = 1) || ((Var(3) = 3) && (StateNo != 1090) && (StateNo != 2090))

;---------------------------------------------------------------------------
;Naraku Otoshi
[State -1: 		Naraku Otoshi]
type 			= ChangeState
value 			= 1080
triggerall 		= (Command = "Naraku Otoshi") && (Command != "Naraku Otoshi EX") && (Var(20) = 0) && (Var(2) <= 0)
trigger1		= ((StateType != A) && (Ctrl)) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= (Var(3) = 1) || ((Var(3) = 3) && (PrevStateNo != 1080) && (PrevStateNo != 2080))

;---------------------------------------------------------------------------
;Attouteki Gekiha
[State -1: 		Attouteki Gekiha]
type 			= ChangeState
value 			= 1070
triggerall 		= (Command = "Attouteki Gekiha") && (Command != "Attouteki Gekiha EX") && (Var(20) = 0) && (Var(2) <= 0)
trigger1 		= ((StateType != A) && (Ctrl)) || ((StateType = A) && (Ctrl) && (Var(20) = 1)) || ((StateNo = [100,101]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0)) || (StateNo = 40)
trigger2		= (Var(3) = 1) || ((Var(3) = 3) && (StateNo != 1070) && (StateNo != 2070))

;---------------------------------------------------------------------------
;Mawari Ken
[State -1: 		Mawari Ken]
type 			= ChangeState
value 			= 1060
triggerall 		= (Command = "Mawari Ken") && (Command != "Mawari Ken EX") && (Var(2) <= 0)
trigger1		= ((StateType != A) && (Ctrl)) || ((StateType = A) && (Ctrl) && (Var(20) = 1)) || ((StateNo = [100,101]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= (Var(3) = 1) || ((Var(3) = 3) && (StateNo != 1060) && (StateNo != 2060))

;---------------------------------------------------------------------------
;Zugai Hasatsu
[State -1: 		Zugai Hasatsu]
type 			= ChangeState
value 			= 1050
triggerall 		= (Command = "Zugai Hasatsu") && (Var(2) <= 0)
trigger1		= ((StateType != A) && (Ctrl)) || ((StateType = A) && (Ctrl) && (Var(20) = 1)) || (StateNo = 40) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0))

;---------------------------------------------------------------------------
;Tobi Rariatto
[State -1: 		Tobi Rariatto]
type 			= ChangeState
value 			= 1040
triggerall 		= (Command = "Tobi Rariatto") && (Command != "Tobi Rariatto EX") && (Var(2) <= 0)
trigger1		= ((StateType != A) && (Ctrl)) || ((StateType = A) && (Ctrl) && (Var(20) = 1)) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= (Var(3) = 1) || ((Var(3) = 3) && (StateNo != 1040) && (StateNo != 2040))

;---------------------------------------------------------------------------
;Geki Kaze
[State -1: 		Geki Kaze]
type 			= ChangeState
value 			= 1030
triggerall 		= (Command = "Geki Kaze") && (Command != "Geki Kaze EX") && (Var(2) <= 0)
trigger1		= ((StateType != A) && (Ctrl)) || ((StateType = A) && (Ctrl) && (Var(20) = 1)) || ((StateNo = [100,101]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= (Var(3) = 1) || ((Var(3) = 3) && (StateNo != 1030) && (StateNo != 2030))

;---------------------------------------------------------------------------
;Tosshin Toubu Dageki
[State -1: 		Tosshin Toubu Dageki]
type 			= ChangeState
value 			= 1020
triggerall 		= (Command = "Tosshin Toubu Dageki") && (Command != "Tosshin Toubu Dageki EX") && (Var(2) <= 0)
trigger1		= ((StateType != A) && (Ctrl)) || ((StateType = A) && (Ctrl) && (Var(20) = 1)) || ((StateNo = [100,101]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= (Var(3) = 1) || ((Var(3) = 3) && (StateNo != [1020,1021]) && (StateNo != [2020,2021]))

;---------------------------------------------------------------------------
;Bakuenha
[State -1: 		Bakuenha]
type 			= ChangeState
value 			= 1010
triggerall 		= (Command = "Bakuenha") && (Command != "Bakuenha EX") && (Var(20) = 0) && (Var(2) <= 0)
trigger1 		= ((StateType != A) && (Ctrl)) || ((StateNo = [100,101]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0)) || (StateNo = 40)
trigger2		= (Var(3) = 1) || ((Var(3) = 3) && (StateNo != 1010) && (StateNo != 2010))

;---------------------------------------------------------------------------
;Gou Kikou Ha
[State -1: 		Gou Kikou Ha]
type 			= ChangeState
value 			= 1005
triggerall 		= (Command = "Gou Kikou Ha") && (Var(2) <= 0)
trigger1		= ((StateType != A) && (Ctrl)) || ((StateType = A) && (Ctrl) && (Var(20) = 1)) || ((StateNo = [100,101]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= (Var(3) = 1) || ((Var(3) = 3) && (StateNo != 1000) && (StateNo != 1005) && (StateNo != 2000))

;---------------------------------------------------------------------------
;Kikou Ha
[State -1: 		Kikou Ha]
type 			= ChangeState
value 			= 1000
triggerall 		= (Command = "Kikou Ha") && (Command != "Kikou Ha EX") && (Command != "Gou Kikou Ha") && (Var(2) <= 0)
trigger1		= ((StateType != A) && (Ctrl)) || ((StateType = A) && (Ctrl) && (Var(20) = 1)) || ((StateNo = [100,101]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= (Var(3) = 1) || ((Var(3) = 3) && (StateNo != 1000) && (StateNo != 2000))

;===========================================================================
;-| Special EX |------------------------------------------------------------

;---------------------------------------------------------------------------
;Satsubatsu Yakushin (EX)
[State -1: 		Satsubatsu Yakushin EX]
type 			= ChangeState
value 			= 2090
triggerall 		= (Command = "Satsubatsu Yakushin EX") && (Power >= 500) && (Var(20) = 0) && (Var(2) <= 0)
trigger1		= ((StateType != A) && (Ctrl)) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= (Var(3) = 1) || ((Var(3) = 3) && (StateNo != 1090) && (StateNo != 2090))

;---------------------------------------------------------------------------
;Naraku Otoshi (EX)
[State -1: 		Naraku Otoshi EX]
type 			= ChangeState
value 			= 2080
triggerall 		= (Command = "Naraku Otoshi EX") && (Power >= 500) && (Var(20) = 0) && (Var(2) <= 0)
trigger1		= ((StateType != A) && (Ctrl)) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= (Var(3) = 1) || ((Var(3) = 3) && (PrevStateNo != 1080) && (PrevStateNo != 2080))

;---------------------------------------------------------------------------
;Attouteki Gekiha (EX)
[State -1: 		Attouteki Gekiha EX]
type 			= ChangeState
value 			= 2070
triggerall 		= (Command = "Attouteki Gekiha EX") && (Power >= 500) && (Var(20) = 0) && (Var(2) <= 0)
trigger1 		= ((StateType != A) && (Ctrl)) || ((StateNo = [100,101]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0)) || (StateNo = 40)
trigger2		= (Var(3) = 1) || ((Var(3) = 3) && (StateNo != 1070) && (StateNo != 2070))

;---------------------------------------------------------------------------
;Mawari Ken (EX)
[State -1: 		Mawari Ken EX]
type 			= ChangeState
value 			= 2060
triggerall 		= (Command = "Mawari Ken EX") && (Power >= 500) && (Var(20) = 0) && (Var(2) <= 0)
trigger1		= ((StateType != A) && (Ctrl)) || ((StateNo = [100,101]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= (Var(3) = 1) || ((Var(3) = 3) && (StateNo != 1060) && (StateNo != 2060))

;---------------------------------------------------------------------------
;Tobi Rariatto (EX)
[State -1: 		Tobi Rariatto EX]
type 			= ChangeState
value 			= 2040
triggerall 		= (Command = "Tobi Rariatto EX") && (Power >= 500) && (Var(20) = 0) && (Var(2) <= 0)
trigger1		= ((StateType != A) && (Ctrl)) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= (Var(3) = 1) || ((Var(3) = 3) && (StateNo != 1040) && (StateNo != 2040))

;---------------------------------------------------------------------------
;Geki Kaze (EX)
[State -1: 		Geki Kaze EX]
type 			= ChangeState
value 			= 2030
triggerall 		= (Command = "Geki Kaze EX") && (Power >= 500) && (Var(20) = 0) && (Var(2) <= 0)
trigger1		= ((StateType != A) && (Ctrl)) || ((StateNo = [100,101]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= (Var(3) = 1) || ((Var(3) = 3) && (StateNo != 1030) && (StateNo != 2030))

;---------------------------------------------------------------------------
;Tosshin Toubu Dageki (EX)
[State -1: 		Tosshin Toubu Dageki EX]
type 			= ChangeState
value 			= 2020
triggerall 		= (Command = "Tosshin Toubu Dageki EX") && (Power >= 500) && (Var(20) = 0) && (Var(2) <= 0)
trigger1		= ((StateType != A) && (Ctrl)) || ((StateNo = [100,101]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= (Var(3) = 1) || ((Var(3) = 3) && (StateNo != [1020,1021]) && (StateNo != [2020,2021]))

;---------------------------------------------------------------------------
;Bakuenha (EX)
[State -1: 		Bakuenha EX]
type 			= ChangeState
value 			= 2010
triggerall 		= (Command = "Bakuenha EX") && (Power >= 500) && (Var(20) = 0) && (Var(2) <= 0)
trigger1 		= ((StateType != A) && (Ctrl)) || ((StateNo = [100,101]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0)) || (StateNo = 40)
trigger2		= (Var(3) = 1) || ((Var(3) = 3) && (StateNo != 1010) && (StateNo != 2010))

;---------------------------------------------------------------------------
;Kikou Ha (EX)
[State -1: 		Kikou Ha EX]
type 			= ChangeState
value 			= 2000
triggerall 		= (Command = "Kikou Ha EX")  && (Command != "Gou Kikou Ha") && (Power >= 500) && (Var(20) = 0) && (Var(2) <= 0)
trigger1		= ((StateType != A) && (Ctrl)) || ((StateNo = [100,101]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= (Var(3) = 1) || ((Var(3) = 3) && (StateNo != 1000) && (StateNo != 2000))

;===========================================================================
;-| Basic |-----------------------------------------------------------------

;---------------------------------------------------------------------------
;Throw
[State -1: 		Throw]
type 			= ChangeState
value 			= 800
triggerall 		= (Command = "xa") && ((Command = "holdfwd") || (Command = "holdback")) && (Var(2) <= 0)
trigger1		= (StateType = S) && (Ctrl)
trigger2		= (StateNo = 1071) && (AnimElem = 3, > 0) && (NumTarget(1071) > 0)
ignorehitpause		= 1

;---------------------------------------------------------------------------
;Moushin Rariatto
[State -1: 		Moushin Rariatto]
type 			= ChangeState
value 			= 700
triggerall 		= ((Command = "x") || (Command = "y")) && (Command != "b") && (Var(2) <= 0)
trigger1		= (StateNo = [100,101]) && (AnimElem = 2, > 0) && (Command = "holdfwd") && (BackEdgeBodyDist > -5) && (Pos Y >= 0)
ignorehitpause		= 1

;---------------------------------------------------------------------------
;Satsubatsu Geri
[State -1: 		Satsubatsu Geri]
type 			= ChangeState
value 			= 710
triggerall 		= ((Command = "a") || (Command = "b")) && (Command != "y") && (Var(2) <= 0)
trigger1		= (StateNo = [100,101]) && (AnimElem = 2, > 0) && (Command = "holdfwd") && (BackEdgeBodyDist > -5) && (Pos Y >= 0)
ignorehitpause		= 1

;---------------------------------------------------------------------------

;tatada
[State -1,patada]
type 			= ChangeState
value 			= 222
triggerall 		= ((Command = "z") || (Command = "c")) && (Command != "a") && (Var(2) <= 0)
trigger1		= (StateNo = [100,101]) && (AnimElem = 2, > 0) && (Command = "holdfwd") && (BackEdgeBodyDist > -5) && (Pos Y >= 0)
ignorehitpause		= 1

;---------------------------------------------------------------------------
;Stand Weak Punch
[State -1: 		SWP]
type 			= ChangeState
value 			= 200
triggerall 		= (Command = "x") && (Command != "holddown") && (Var(2) <= 0)
trigger1		= ((StateType = S) && (Ctrl)) || ((StateNo = [100,106]) && (AnimElem = 2, > 0) && (Command != "holdfwd") && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= (StateNo = 200) && ((AnimElem = 2, > 5) || ((MoveContact) && (AnimElem = 2, > 3)))
trigger3		= (StateNo = 400) && ((AnimElem = 2, > 5) || ((MoveContact) && (AnimElem = 2, > 3)))
ignorehitpause		= 1

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1: 		SMP]
type 			= ChangeState
value 			= 210
triggerall 		= (Command = "y") && (Command != "holddown") && (Command != "holdfwd") && (Var(2) <= 0)
trigger1		= ((StateType = S) && (Ctrl)) || ((StateNo = [100,106]) && (AnimElem = 2, > 0) && (Command != "holdfwd") && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= ((StateNo = 200) || (StateNo = 230) || (StateNo = 400) || (StateNo = 430)) && (MoveContact)
ignorehitpause		= 1

;---------------------------------------------------------------------------
;Sakotsu Wari
[State -1: 		Sakotsu Wari]
type 			= ChangeState
value 			= 215
triggerall 		= (Command = "y") && (Command != "holddown") && (Command = "holdfwd") && (Var(2) <= 0)
trigger1		= (StateType = S) && (Ctrl)
trigger2		= ((StateNo = 200) || (StateNo = 230) || (StateNo = 400) || (StateNo = 430)) && (MoveContact)
ignorehitpause		= 1

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1: 		SSP]
type 			= ChangeState
value 			= 220
triggerall 		= (Command = "z") && (Command != "holddown") && (Var(2) <= 0)
trigger1		= ((StateType = S) && (Ctrl)) || ((StateNo = [100,106]) && (AnimElem = 2, > 0) && (Command != "holdfwd") && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= ((StateNo = 200) || (StateNo = [210,215]) || (StateNo = 230) || (StateNo = 240)) && (MoveContact)
trigger3		= ((StateNo = 400) || (StateNo = 410) || (StateNo = 430) || (StateNo = 440)) && (MoveContact)
ignorehitpause		= 1

;---------------------------------------------------------------------------
;Stand Weak Kick
[State -1: 		SWK]
type 			= ChangeState
value 			= 230
triggerall 		= (Command = "a") && (Command != "holddown") && (Var(2) <= 0)
trigger1		= ((StateType = S) && (Ctrl)) || ((StateNo = [100,106]) && (AnimElem = 2, > 0) && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
ignorehitpause		= 1

;---------------------------------------------------------------------------
;Stand Medium Kick
[State -1: 		SMK]
type 			= ChangeState
value 			= 240
triggerall 		= (Command = "b") && (Command != "holddown") && (Var(2) <= 0)
trigger1		= ((StateType = S) && (Ctrl)) || ((StateNo = [100,106]) && (AnimElem = 2, > 0) && (Command != "holdfwd") && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= ((StateNo = 200) || (StateNo = 230)) && (MoveContact)
trigger3		= ((StateNo = 400) || (StateNo = 430)) && (MoveContact)
ignorehitpause		= 1

;---------------------------------------------------------------------------
;Stand Strong Kick
[State -1: 		SSK]
type 			= ChangeState
value 			= 250
triggerall 		= (Command = "c") && (Command != "holddown") && (Var(2) <= 0)
trigger1		= ((StateType = S) && (Ctrl)) || ((StateNo = [100,106]) && (AnimElem = 2, > 0) && (Command != "holdfwd") && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= ((StateNo = 200) || (StateNo = [210,215]) || (StateNo = 230) || (StateNo = 240)) && (MoveContact)
trigger3		= ((StateNo = 400) || (StateNo = 410) || (StateNo = 430) || (StateNo = 440)) && (MoveContact)
ignorehitpause		= 1

;---------------------------------------------------------------------------
;Crouch Weak Punch
[State -1: 		CWP]
type 			= ChangeState
value 			= 400
triggerall 		= (Command = "x") && (Command = "holddown") && (Var(2) <= 0)
trigger1		= ((StateType = C) && (Ctrl)) || ((StateNo = [100,106]) && (AnimElem = 2, > 0) && (Command != "holdfwd") && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= (StateNo = 200) && ((AnimElem = 2, > 5) || ((MoveContact) && (AnimElem = 2, > 3)))
trigger3		= (StateNo = 400) && ((AnimElem = 2, > 5) || ((MoveContact) && (AnimElem = 2, > 3)))
ignorehitpause		= 1

;---------------------------------------------------------------------------
;Crouch Medium Punch
[State -1: 		CMP]
type 			= ChangeState
value 			= 410
triggerall 		= (Command = "y") && (Command = "holddown") && (Var(2) <= 0)
trigger1		= ((StateType = C) && (Ctrl)) || ((StateNo = [100,106]) && (AnimElem = 2, > 0) && (Command != "holdfwd") && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= ((StateNo = 200) || (StateNo = 230) || (StateNo = 400) || (StateNo = 430)) && (MoveContact)
ignorehitpause		= 1

;---------------------------------------------------------------------------
;Crouch Strong Punch
[State -1: 		CSP]
type 			= ChangeState
value 			= 420
triggerall 		= (Command = "z") && (Command = "holddown") && (Var(2) <= 0)
trigger1		= ((StateType = C) && (Ctrl)) || ((StateNo = [100,106]) && (AnimElem = 2, > 0) && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= ((StateNo = 200) || (StateNo = [210,215]) || (StateNo = 230) || (StateNo = 240)) && (MoveContact)
trigger3		= ((StateNo = 400) || (StateNo = 410) || (StateNo = 430) || (StateNo = 440)) && (MoveContact)
ignorehitpause		= 1

;---------------------------------------------------------------------------
;Crouch Weak Kick
[State -1: 		CWK]
type 			= ChangeState
value 			= 430
triggerall 		= (Command = "a") && (Command = "holddown") && (Var(2) <= 0)
trigger1		= ((StateType = C) && (Ctrl)) || ((StateNo = [100,106]) && (AnimElem = 2, > 0) && (Command != "holdfwd") && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
ignorehitpause		= 1

;---------------------------------------------------------------------------
;Crouch Medium Kick
[State -1: 		CMK]
type 			= ChangeState
value 			= 440
triggerall 		= (Command = "b") && (Command = "holddown") && (Var(2) <= 0)
trigger1		= ((StateType = C) && (Ctrl)) || ((StateNo = [100,106]) && (AnimElem = 2, > 0) && (Command != "holdfwd") && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= ((StateNo = 200) || (StateNo = 230)) && (MoveContact)
trigger3		= ((StateNo = 400) || (StateNo = 430)) && (MoveContact)
ignorehitpause		= 1

;---------------------------------------------------------------------------
;Crouch Strong Kick
[State -1: 		CSK]
type 			= ChangeState
value 			= 450
triggerall 		= (Command = "c") && (Command = "holddown") && (Var(2) <= 0)
trigger1		= ((StateType = C) && (Ctrl)) || ((StateNo = [100,106]) && (AnimElem = 2, > 0) && (Command != "holdfwd") && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= ((StateNo = 200) || (StateNo = [210,215]) || (StateNo = 230) || (StateNo = 240)) && (MoveContact)
trigger3		= ((StateNo = 400) || (StateNo = 410) || (StateNo = 430) || (StateNo = 440)) && (MoveContact)
ignorehitpause		= 1

;---------------------------------------------------------------------------
;Jump Weak Kick
[State -1: 		JWK]
type 			= ChangeState
value 			= 600
triggerall 		= ((Command = "a") || (Command = "x")) && (Var(2) <= 0)
trigger1		= ((StateType = A) && (Ctrl)) || ((StateNo = [100,106]) && (AnimElem = 2, > 0) && (BackEdgeBodyDist > -5) && (Pos Y < 0))
ignorehitpause		= 1

;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1: 		JMK]
type 			= ChangeState
value 			= 610
triggerall 		= ((Command = "b") || (Command = "y")) && (Var(2) <= 0)
trigger1		= ((StateType = A) && (Ctrl)) || ((StateNo = [100,106]) && (AnimElem = 2, > 0) && (BackEdgeBodyDist > -5) && (Pos Y < 0))
trigger2		= (StateNo = 600) && (MoveContact)
ignorehitpause		= 1

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1: 		JSK]
type 			= ChangeState
value 			= 620
triggerall 		= ((Command = "c") || (Command = "z")) && (Var(2) <= 0)
trigger1		= ((StateType = A) && (Ctrl)) || ((StateNo = [100,106]) && (AnimElem = 2, > 0) && (BackEdgeBodyDist > -5) && (Pos Y < 0))
trigger2		= ((StateNo = 600) || (StateNo = 610)) && (MoveContact)
ignorehitpause		= 1

;===========================================================================
;-| [StateDef -1] |---------------------------------------------------------

;---------------------------------------------------------------------------
;Artificial Intelligence

[State -1:		DestroySelf]
type			= DestroySelf
triggerall		= (IsHelper(9630)) || (IsHelper(9631)) || (IsHelper(11000)) || (IsHelper(11030)) || (IsHelper(9601))
trigger1		= (MoveType = H) || (StateNo = 0)

;---------------------------------------------------------------------------
;Stand Guard

[State -1:		StandGuard]
type 			= ChangeState
triggerall		= (Var(2) > 0) && (P2StateType != C) && (P2MoveType = A) && ((P2Dist X < 150) || (EnemyNear, NumProj > 0))
trigger1 		= (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing)
trigger2		= (StateNo = 52) || ((PrevStateNo = 5120) && (P2MoveType = A))
value 			= 130

;---------------------------------------------------------------------------
;Crouch Guard

[State -1:		CrouchGuard]
type 			= ChangeState
triggerall 		= (Var(2) > 0) && (P2StateType = C) && (P2MoveType = A) && ((P2Dist X < 150) || (EnemyNear, NumProj > 0))
trigger1 		= (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing)
trigger2		= (StateNo = 52) || ((PrevStateNo = 5120) && (P2MoveType = A))
value 			= 131

;---------------------------------------------------------------------------
;Aerial Guard

[State -1:		AerialGuard]
type 			= ChangeState
triggerall 		= (Var(2) > 0) && (P2MoveType = A) && ((P2Dist X < 150) || (EnemyNear, NumProj > 0))
trigger1		= ((StateType = A) && (Ctrl)) || (StateNo = 5210)
value			= 132

;---------------------------------------------------------------------------
;Stand Guarding

[State -1:		StandGuarding]
type 			= ChangeState
trigger1 		= (Var(2) > 0) && (StateType != A) && (P2StateType != C) && (P2MoveType = A) && (StateNo = [152,155]) && (EnemyNear, HitDefAttr != , NT,ST,HT)
value			= 150

;---------------------------------------------------------------------------
;Crouch Guarding

[State -1:		CrouchGuarding]
type 			= ChangeState
trigger1 		= (Var(2) > 0) && (StateType != A) && (P2StateType = C) && (P2MoveType = A) && ((StateNo = [150,151]) || (StateNo = [154,155])) && (EnemyNear, HitDefAttr != , NT,ST,HT)
value			= 152

;---------------------------------------------------------------------------
;Run Forward

[State -1:		ChangeState]
type 			= ChangeState
triggerall 		= (Var(2) > 0) && (StateType != A) && (Ctrl) && (StateNo != [100,101]) && (P2MoveType != A) && (EnemyNear, NumProj = 0) && (Random <= 499) && (StateNo != [3000,3021]) && (RoundState = 2)
trigger1		= (P2BodyDist X > 75) && (EnemyNear, Pos Y = 0) && (EnemyNear, Anim = 5300) && (P2MoveType != A)
trigger2		= ((P2Dist X > 150) || ((P2Dist X > 75) && (P2StateNo = 105)))
value			= 100

;---------------------------------------------------------------------------
;Zanzouken

[State -1:		Zanzouken]
type 			= ChangeState
triggerall		= (Var(2) > 0) && ((StateNo = 130) || (StateNo = 131) || (StateNo = 150) || (StateNo = 152)) && (P2Dist X <= 80) && (StateNo != [3000,3021])
trigger1		= (EnemyNear, HitDefAttr = S, ST) || (EnemyNear, HitDefAttr = C, ST) || (EnemyNear, HitDefAttr = A, ST)
trigger2		= (EnemyNear, HitDefAttr = S, HT) || (EnemyNear, HitDefAttr = C, HT) || (EnemyNear, HitDefAttr = A, HT)
value 			= 8010

[State -1:		Zanzouken]
type 			= ChangeState
triggerall 		= (Var(2) > 0) && (StateType != A) && (EnemyNear, HitDefAttr = SCA, AT) && (EnemyNear, Vel X > 0) && (P2Dist X < 100) && (StateNo != [3000,3021])
trigger1		= (Ctrl) || (StateNo = [150,153]) || (Var(3) = 3)
value 			= 8010

[State -1:		Zanzouken]
type 			= ChangeState
triggerall		= (Var(2) > 0) && (RoundState = 2)
trigger1		= (StateNo = 100) && (P2MoveType = A) && (Random <= 799) && (EnemyNear, Facing != Facing)
trigger2		= (P2Dist X < 250) && (Random <= 499) && (StateNo = [150,153]) && (EnemyNear, Facing != Facing) && (Power >= 250) && (P2MoveType = A)
trigger3		= (StateType != A) && (Ctrl) && (P2MoveType = A) && (P2Dist X > 125) && (EnemyNear, Facing != Facing) && (Random > 499)
trigger4		= (StateNo = 1030) && (AnimElem = 3, > 5) && (Random <= 499)
trigger5		= (StateType != A) && (Ctrl) && (P2Dist X > 150) && (EnemyNear, Pos Y < -70) && (EnemyNear, Facing != Facing) && (EnemyNear, Vel X < 0) && (EnemyNear, Vel Y < 0) && (Random <= 349)
trigger6		= (StateType != A) && (Ctrl) && (BackEdgeBodyDist < 20) && (P2MoveType = A) && (EnemyNear, Facing != Facing) && (Random <= 349)
trigger7		= (StateType != A) && (Ctrl) && (BackEdgeBodyDist < 50) && (P2Dist X < 150) && (EnemyNear, Facing != Facing) && (Random <= 499)
trigger8		= (StateNo = 5120) && (AnimTime <= 2) && (P2Dist X < 100) && (Random <= 349)
trigger9		= (StateNo = 8030) && (Var(3) = 3) && (Random <= 799)
trigger10		= (StateNo = 8030) && (Anim = 100) && (Random <= 499)
trigger11		= (StateNo = 8030) && (PrevStateNo = 130) && (Random <= 799)
value 			= 8010

;---------------------------------------------------------------------------
;Gekimetsu Dama

[State -1: 		Gekimetsu Dama]
type 			= ChangeState
value 			= 3000
triggerall 		= ((Power >= 1500) || (Life < 250)) && (StateNo != 3000) && (Pos Y >= 0) && (Var(2) > 0) && (RoundState = 2)
triggerall		= (Var(5) := IfElse((Command = "holdz"),(1 + (Power >= 2000) + (Power >= 2500)),IfElse((Command = "holdy"),(1 + (Power >= 2000)),1)))
trigger1		= (((StateType != A) && (Ctrl)) || (Var(3) = 1) || (Var(3) = 3)) && (Var(15) > 5) && (P2Dist X <= 70) && (EnemyNear, Pos Y >= -50) && (P2StateType != L) && (P2MoveType = H) && (Random <= 499)
trigger2		= (StateNo = 1090) && (AnimElem = 10, > 2) && (MoveContact) && (Random <= 799)
trigger3		= (StateType != A) && (StateNo = [120,155]) && (Ctrl) && (P2Dist X < 80) && (EnemyNear, Pos Y > -30) && (Random <= 499)

;---------------------------------------------------------------------------
;Minami Ginga Gouka

[State -1: 		Minami Ginga Gouka]
type 			= ChangeState
value 			= 3010
triggerall 		= (Power >= 4000) && (StateNo != 3010) && (Pos Y >= 0)  && (P2StateType != L) && (Var(2) > 0) && (RoundState = 2)
triggerall		= (Var(5) := IfElse((Command = "holdz"),(1 + (Power >= 4500) + (Power >= 5000)),IfElse((Command = "holdy"),(1 + (Power >= 4500)),1)))
trigger1		= (Random <= 499) && (P2StateType != L) && (P2Dist X <= 100) && (Var(3) = 1) || (Var(3) = 3)
trigger2		= (StateType != A) && (Ctrl) && (Var(15) > 5) && (P2Dist X <= 70) && (EnemyNear, Pos Y >= -50) && (P2MoveType = H) && (Random <= 499)
trigger3		= (StateType != A) && (Ctrl) && (P2Dist X <= 60) && (EnemyNear, Pos Y >= -50) && (EnemyNear, Anim = 5300) && (P2MoveType != A)
trigger5		= (StateType != A) && (StateNo = [120,155]) && (Ctrl) && (P2Dist X < 80) && (EnemyNear, Pos Y > -30) && (Random <= 499)

;---------------------------------------------------------------------------
;Magyo Satsuriku

[State -1: 		Magyo Satsuriku]
type 			= ChangeState
value 			= 3020
triggerall 		= (Power >= 4000) && (Pos Y >= 0) && (StateNo != 3020) && (Var(2) > 0) && (StateNo != [3000,3021]) && (RoundState = 2)
triggerall		= (Var(5) := IfElse((Command = "holdc"),(1 + (Power >= 4500) + (Power >= 5000)),IfElse((Command = "holdb"),(1 + (Power >= 4500)),1)))
trigger1		= (StateType != A) && (Ctrl) && (P2StateNo != 5120) && (P2StateType = L) && (P2Dist X > 150) && (Random <= 499)
trigger2		= ((Var(3) = 1) || (Var(3) = 3) || (Var(3) = 4)) && (EnemyNear, Pos Y >= -30) && (EnemyNear, Vel Y >= 0)
trigger3		= (StateType != A) && (StateNo = [120,155]) && (Ctrl) && (P2Dist X < 80) && (EnemyNear, Pos Y > -30) && (Random <= 499)

;---------------------------------------------------------------------------
;Ki Shouheki

[State -1: 		Ki Shouheki]
type 			= ChangeState
value 			= 8040
triggerall 		= (Pos Y >= 0) && (Var(2) > 0) && (StateNo != [3000,3021]) && (RoundState = 2)
trigger1		= (((Command = "x") && (Command = "z")) || ((Command = "a") && (Command = "c"))) && ((((StateType != A) && (Ctrl)) || ((StateType = A) && (Ctrl) && (Var(20) = 1))) && (Command != "holdfwd") && (Command != "holdback"))
trigger2		= (((Command = "x") && (Command = "z")) || ((Command = "a") && (Command = "c"))) && ((Var(3) = 1) || ((Var(3) = 3) && (PrevStateNo != 8040)))
trigger3		= (P2Dist X <= 125) && (Random <= 249) && (StateNo = [150,153]) && (Power >= 250)
trigger4		= (StateType != A) && (Ctrl) && (StateNo = 8010) && (AnimTime = 1) && (P2BodyDist X <= -10) && (EnemyNear, Pos Y >= -30) && (Random <= 499)
trigger5		= (P2Dist X <= 120) && (((StateNo = 5120) && (AnimTime = 1)) || (PrevStateNo = 5120))

;---------------------------------------------------------------------------
;Jigoku Wari

[State -1: 		Jigoku Wari]
type 			= ChangeState
value 			= 1100
triggerall 		= (Pos Y >= 0) && (Var(2) > 0) && (StateNo != [3000,3021]) && (RoundState = 2)
trigger1		= (Command = "Jigoku Wari") && (((StateType != A) && (Ctrl)) || (StateNo = 40) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0)))
trigger2		= (Random <= 249) && (P2Dist X <= 70) && (Var(15) > 2) && ((Var(3) = 1) || (Var(3) = 3))

;---------------------------------------------------------------------------
;Satsubatsu Yakushin

[State -1: 		Satsubatsu Yakushin]
type 			= ChangeState
value 			= 1090
triggerall 		= (Pos Y >= 0) && (Var(2) > 0) && (StateNo != [3000,3021]) && (StateNo != 1090) && (StateNo != 2090) && (RoundState = 2)
trigger1		= (Random <= 499) && (P2Dist X < 100) && (Var(15) > 2) && ((Var(3) = 1) || (Var(3) = 3))
trigger2		= (StateType != A) && (Ctrl) && (FrontEdgeBodyDist > 75) && (P2Dist X <= 100) && (P2StateNo = [5100,5120]) && (Random <= 499)
trigger3		= (StateNo = 52) && (PrevStateNo = 1080) && (P2MoveType = H) && (P2StateType = A) && (P2Dist X <= 70) && (FrontEdgeBodyDist > 50) && (Random <= 499)

;---------------------------------------------------------------------------
;Satsubatsu Yakushin (EX)

[State -1: 		Satsubatsu Yakushin EX]
type 			= ChangeState
value 			= 2090
triggerall 		= (Var(20) = 0) && (Power >= 500) && (Var(2) > 0) && (StateNo != [3000,3021]) && (StateNo != 1090) && (StateNo != 2090) && (RoundState = 2)
trigger1		= (StateType != A) && (Ctrl) && (FrontEdgeBodyDist > 75) && (P2Dist X <= 100) && (P2StateNo = [5100,5120]) && (Random <= 249)
trigger2		= ((StateNo = 52) && (PrevStateNo = 1080) && (P2MoveType = H) && (P2StateType = A)) && (P2Dist X <= 70) && (Random <= 249)
trigger3		= (StateNo = [120,155]) && (Ctrl) && (P2Dist X = [71,120]) && (EnemyNear, NumProj = 0) && (Random <= 249)

;---------------------------------------------------------------------------
;Naraku Otoshi

[State -1: 		Naraku Otoshi]
type 			= ChangeState
value 			= 1080
triggerall 		= (Pos Y >= 0) && (Var(2) > 0) && (StateNo != [3000,3021]) && (RoundState = 2)
trigger1		= (Command = "Naraku Otoshi") && (((StateType != A) && (Ctrl)) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0)))
trigger2		= (Command = "Naraku Otoshi") && ((Var(3) = 1) || ((Var(3) = 3) && (PrevStateNo != 1080) && (PrevStateNo != 2080)))
trigger3		= (StateType != A) && (Ctrl) && (P2MoveType = H) && (P2StateType = A) && (P2Dist X > 100) && (Random <= 499)
trigger4		= (StateNo = 8040) && (AnimTime = 1) && (Random <= 499)
trigger5		= (StateType != A) && (Ctrl) && (Random <= 249) && (P2Dist X > 100) && (P2Dist X < 150) && (P2MoveType != A) && (P2StateType != A) && (P2StateType != L)
trigger6		= (StateNo = 1090) && (PrevStateNo != 1090) && (AnimElem = 10, > 2) && (MoveContact) && (Random <= 149)
trigger7		= (StateNo = 1051) && (AnimTime = 1) && (BackEdgeBodyDist < 30) && (NumTarget(1051) = 1) && (Random <= 499)

;---------------------------------------------------------------------------
;Naraku Otoshi (EX)

[State -1: 		Naraku Otoshi EX]
type 			= ChangeState
value 			= 2080
triggerall 		= (Var(20) = 0) && (Pos Y >= 0) && (Power >= 500) && (Var(2) > 0) && (StateNo != [3000,3021]) && (RoundState = 2)
trigger1		= (Command = "Naraku Otoshi EX") && (((StateType != A) && (Ctrl)) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0)))
trigger2		= (Command = "Naraku Otoshi EX") && ((Var(3) = 1) || ((Var(3) = 3) && (PrevStateNo != 1080) && (PrevStateNo != 2080)))
trigger3		= (StateType != A) && (Ctrl) && (P2MoveType = H) && (P2StateType = A) && (P2Dist X > 100) && (Random <= 249)
trigger4		= (StateType != A) && (Ctrl) && (Random <= 349) && (P2Dist X > 100) && (P2Dist X < 150) && (P2MoveType != A) && (P2StateType != A) && (P2StateType != L)

;---------------------------------------------------------------------------
;Attouteki Gekiha

[State -1: 		Attouteki Gekiha]
type 			= ChangeState
value 			= 1070
triggerall 		= (Pos Y >= 0) && (Var(2) > 0) && (StateNo != [3000,3021]) && (NumTarget(1051) = 0) && (NumTarget(2040) = 0) && (RoundState = 2)
trigger1 		= (Command = "Attouteki Gekiha") && (((StateType != A) && (Ctrl)) || ((StateType = A) && (Ctrl) && (Var(20) = 1)) || ((StateNo = [100,101]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0)) || (StateNo = 40))
trigger2		= (Random <= 199) && (P2Dist X > 100) && ((Var(3) = 1) || ((Var(3) = 3) && (StateNo != 1070) && (StateNo != 2070)))
trigger3		= (StateType != A) && (Ctrl) && (P2Dist X > 150) && (P2StateType = A) && (P2MoveType = I) && (Random <= 499)
trigger4		= (StateType != A) && (Ctrl) && (EnemyNear, Pos Y < -200) && (P2MoveType != A) && (EnemyNear, NumProj = 0)
trigger5		= (StateType != A) && (Ctrl) && (P2Dist X > 150) && (EnemyNear, Pos Y < -70) && (EnemyNear, Vel X < 0) && (EnemyNear, Vel Y < 0) && (Random <= 249) && (P2MoveType != A)
trigger6		= (StateType != A) && (Ctrl) && (P2Dist X > 100) && (P2StateNo = [5100,5110]) && (Random <= 249)

;---------------------------------------------------------------------------
;Attouteki Gekiha (EX)

[State -1: 		Attouteki Gekiha EX]
type 			= ChangeState
value 			= 2070
triggerall 		= (Var(20) = 0) && (Pos Y >= 0) && (Power >= 500) && (Var(2) > 0) && (StateNo != [3000,3021]) && (RoundState = 2)
trigger1 		= (Command = "Attouteki Gekiha EX") && (((StateType != A) && (Ctrl)) || ((StateType = A) && (Ctrl) && (Var(20) = 1)) || ((StateNo = [100,101]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0)) || (StateNo = 40))
trigger2		= (Command = "Attouteki Gekiha EX") && ((Var(3) = 1) || ((Var(3) = 3) && (StateNo != 1070) && (StateNo != 2070)))
trigger3		= (StateType != A) && (Ctrl) && (P2Dist X > 150) && (P2StateType = A) && (P2MoveType = I) && (Random <= 499)
trigger4		= (StateType != A) && (Ctrl) && (P2Dist X > 100) && (P2StateNo = [5100,5110]) && (Random <= 499)

;---------------------------------------------------------------------------
;Mawari Ken

[State -1: 		Mawari Ken]
type 			= ChangeState
value 			= 1060
triggerall 		= (Var(2) > 0) && (Pos Y >= 0) && (EnemyNear, Const(Size.Head.Pos.Y) < -50) && (StateNo != [3000,3021]) && (RoundState = 2)
trigger1		= (Command = "Mawari Ken") && (((StateType != A) && (Ctrl)) || ((StateType = A) && (Ctrl) && (Var(20) = 1)) || ((StateNo = [100,101]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0)))
trigger2		= (Random <= 199) && (P2Dist X <= 100) && (NumTarget > 0) && ((Var(3) = 1) || ((Var(3) = 3) && (StateNo != 1060) && (StateNo != 2060)))
trigger3		= ((StateNo = 151) || (StateNo = 153)) && (P2Dist X <= 70) && (EnemyNear, NumProj = 0) && (Random <= 499)
trigger4		= (StateNo = 52) && (PrevStateNo = [600,620]) && (P2MoveType = H) && (P2StateType != C) && (P2StateType != L) && (P2Dist X <= 70) && (Random <= 449)
trigger5		= (StateType != A) && (Ctrl) && (PrevStateNo = 8010) && (P2StateType != S) && (P2Dist X < 60) && (Power < 500)
trigger6		= (StateNo = 1021) && (MoveContact) && (FrontEdgeBodyDist < 50) && (Random <= 799)

;---------------------------------------------------------------------------
;Mawari Ken (EX)

[State -1: 		Mawari Ken EX]
type 			= ChangeState
value 			= 2060
triggerall 		= (Var(20) = 0) && (Pos Y >= 0) && (EnemyNear, Const(Size.Head.Pos.Y) < -50) && (Power >= 500) && (Var(2) > 0) && (StateNo != [3000,3021])
trigger1		= (Command = "Mawari Ken EX") && (((StateType != A) && (Ctrl)) || ((StateType = A) && (Ctrl) && (Var(20) = 1)) || ((StateNo = [100,101]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0)))
trigger2		= (Command = "Mawari Ken EX") && ((Var(3) = 1) || ((Var(3) = 3) && (StateNo != 1060) && (StateNo != 2060)))
trigger3		= ((StateNo = 151) || (StateNo = 153)) && (P2Dist X <= 70) && (EnemyNear, NumProj = 0) && (Random <= 249)
trigger4		= (StateNo = 52) && (PrevStateNo = [600,620]) && (P2MoveType = H) && (P2StateType != C) && (P2StateType != L) && (P2Dist X <= 70) && (Random <= 249)
trigger5		= (StateType != A) && (Ctrl) && (PrevStateNo = 8010) && (P2StateType != S) && (P2Dist X < 60) && (Power >= 500)

;---------------------------------------------------------------------------
;Tobi Rariatto

[State -1: 		Tobi Rariatto]
type 			= ChangeState
value 			= 1040
triggerall 		= (Pos Y >= 0) && (Var(2) > 0) && (StateNo != [3000,3021]) && (RoundState = 2)
trigger1		= (Command = "Tobi Rariatto") && (((StateType != A) && (Ctrl)) || ((StateType = A) && (Ctrl) && (Var(20) = 1)) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0)))
trigger2		= (Random <= 199) && (P2Dist X = [50,75]) && (P2StateType != L) && ((Var(3) = 1) || ((Var(3) = 3) && (StateNo != 1040) && (StateNo != 2040)))
trigger3		= (StateType != A) && (Ctrl) && (PrevStateNo = 8010) && (EnemyNear, Ctrl = 0)
trigger4		= (StateType != A) && (Ctrl) && (P2StateNo = 100) && (P2Dist X <= 100) && (Random <= 149)
trigger5		= ((StateType != A) && (Ctrl) && (EnemyNear, Vel X > 5) && (P2MoveType != A) && (P2Dist X <= 75))

;---------------------------------------------------------------------------
;Tobi Rariatto (EX)

[State -1: 		Tobi Rariatto EX]
type 			= ChangeState
value 			= 2040
triggerall 		= (Var(20) = 0) && (Pos Y = 0) && (Power >= 500) && (Var(2) > 0) && (StateNo != [3000,3021]) && (RoundState = 2)
trigger1		= (Command = "Tobi Rariatto EX") && (((StateType != A) && (Ctrl)) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0)))
trigger2		= (Command = "Tobi Rariatto EX") && ((Var(3) = 1) || ((Var(3) = 3) && (StateNo != 1040) && (StateNo != 2040)))
trigger3		= (StateType != A) && (Ctrl) && (PrevStateNo = 8010) && (EnemyNear, Ctrl = 0) && (P2Dist X < 75)
trigger4		= ((StateType != A) && (Ctrl) && (P2StateNo = 100) && (P2Dist X <= 100) && (Random <= 99)) || ((StateType != A) && (Ctrl) && (EnemyNear, Vel X > 5) && (P2MoveType != A) && (P2Dist X <= 75))

;---------------------------------------------------------------------------
;Geki Kaze

[State -1: 		Geki Kaze]
type 			= ChangeState
value 			= 1030
triggerall 		= (Pos Y >= 0) && (Var(2) > 0) && (StateNo != [3000,3021]) && (RoundState = 2)
trigger1		= (Command = "Geki Kaze") && (((StateType != A) && (Ctrl)) || ((StateType = A) && (Ctrl) && (Var(20) = 1)) || ((StateNo = [100,101]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0)))
trigger2		= (Command = "Geki Kaze") && ((Var(3) = 1) || ((Var(3) = 3) && (StateNo != 1030) && (StateNo != 2030)))
trigger3		= (StateType != A) && (Ctrl) && (P2StateNo = 100) && (P2Dist X <= 75) && (Random <= 499)
trigger4		= (StateType != A) && (Ctrl) && (P2Dist X > 125) && (P2MoveType != H) && (P2StateType != L) && (EnemyNear, Anim != 5300) && (EnemyNear, Ctrl = 0) && (EnemyNear, Pos Y >= -30) && (Random <= 249)
trigger5		= (StateType != A) && (Ctrl) && ((StateNo = 151) || (PrevStateNo = 151) || (StateNo = 153) || (PrevStateNo = 153)) && (P2Dist X > 120) && (EnemyNear, NumProj = 0) && (Random <= 199)
trigger6		= (StateType != A) && (Ctrl) && (P2MoveType = A) && (P2Dist X > 125) && (Random <= 399)
trigger7		= (StateNo = 8040) && (AnimTime = 1) && (Random > 499)
trigger8		= (StateType != A) && (Ctrl) && (P2Dist X > 150) && (EnemyNear, Pos Y < -70) && (EnemyNear, Vel X < 0) && (EnemyNear, Vel Y < 0) && (Random <= 349) && (P2MoveType = A)
trigger9		= (StateType != A) && (Ctrl) && (Random <= 249) && (P2Dist X > 100) && (P2Dist X < 150) && (P2MoveType != A) && (P2StateType != A) && (P2StateType != L)

;---------------------------------------------------------------------------
;Geki Kaze (EX)

[State -1: 		Geki Kaze EX]
type 			= ChangeState
value 			= 2030
triggerall 		= (Var(20) = 0) && (Pos Y >= 0) && (Power >= 500) && (Var(2) > 0) && (StateNo != [3000,3021]) && (RoundState = 2)
trigger1		= (Command = "Geki Kaze EX") && (((StateType != A) && (Ctrl)) || ((StateNo = [100,101]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0)))
trigger2		= (Command = "Geki Kaze EX") && ((Var(3) = 1) || ((Var(3) = 3) && (StateNo != 1030) && (StateNo != 2030)))
trigger3		= (StateType != A) && (Ctrl) && (P2StateNo = 100) && (P2Dist X <= 75) && (Random <= 249)
trigger4		= (StateType != A) && (Ctrl) && (P2Dist X > 125) && (P2MoveType != H) && (P2StateType != L) && (EnemyNear, Anim != 5300) && (EnemyNear, Ctrl = 0) && (EnemyNear, Pos Y >= -30) && (Random <= 249)
trigger5		= (StateType != A) && (Ctrl) && ((StateNo = 151) || (PrevStateNo = 151) || (StateNo = 153) || (PrevStateNo = 153)) && (P2Dist X > 120) && (EnemyNear, NumProj = 0) && (Random <= 199)

;---------------------------------------------------------------------------
;Tosshin Toubu Dageki

[State -1: 		Tosshin Toubu Dageki]
type 			= ChangeState
value 			= 1020
triggerall 		= (Pos Y >= 0) && (Var(2) > 0) && (StateNo != [3000,3021]) && (RoundState = 2)
trigger1		= (Command = "Tosshin Toubu Dageki") && (((StateType != A) && (Ctrl)) || ((StateType = A) && (Ctrl) && (Var(20) = 1)) || ((StateNo = [100,101]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0)))
trigger2		= (Random <= 199) && ((Var(3) = 1) || ((Var(3) = 3) && (StateNo != [1020,1021]) && (StateNo != [2020,2021])))
trigger3		= (StateType != A) && (Ctrl) && (EnemyNear, NumProj = 0) && (P2Dist X > 150) && (Random <= 499)
trigger4		= (StateNo = [200,250]) && (!AnimTime) && (!MoveContact) && (P2Dist X <= 100) && (Random <= 499)
trigger5		= (StateNo = 1060) && (MoveContact) && (Var(12) = 3) && (FrontEdgeBodyDist < 50) && (Random <= 799)

;---------------------------------------------------------------------------
;Tosshin Toubu Dageki (EX)

[State -1: 		Tosshin Toubu Dageki EX]
type 			= ChangeState
value 			= 2020
triggerall 		= (Var(20) = 0) && (Pos Y >= 0) && (Power >= 500) && (Var(2) > 0) && (StateNo != [3000,3021]) && (RoundState = 2)
trigger1		= (Command = "Tosshin Toubu Dageki EX") && (((StateType != A) && (Ctrl)) || ((StateNo = [100,101]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0)))
trigger2		= (Command = "Tosshin Toubu Dageki EX") && ((Var(3) = 1) || ((Var(3) = 3) && (StateNo != [1020,1021]) && (StateNo != [2020,2021])))
trigger3		= (StateType != A) && (Ctrl) && (EnemyNear, NumProj > 0) && (P2Dist X > 150) && (Power >= 500) && (Random <= 499)

;---------------------------------------------------------------------------
;Bakuenha

[State -1: 		Bakuenha]
type 			= ChangeState
value 			= 1010
triggerall 		= (Var(20) = 0) && (Pos Y >= 0) && (Var(2) > 0) && (StateNo != [3000,3021]) && (RoundState = 2)
trigger1 		= (Command = "Bakuenha") && (((StateType != A) && (Ctrl)) || ((StateNo = [100,101]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0)) || (StateNo = 40))
trigger2		= (Command = "Bakuenha") && ((Var(3) = 1) || ((Var(3) = 3) && (StateNo != 1010) && (StateNo != 2010)))
trigger3		= (StateType != A) && (Ctrl) && (P2Dist X <= 150) && ((P2StateType = L) || (P2StateType = C)) && (Random <= 499)
trigger4		= (StateNo = 1090) && (AnimElem = 10, > 2) && (MoveContact) && (FrontEdgeBodyDist > 60) && (Random <= 249)
trigger5		= (Var(3) = 1) && (P2StateType = L) && (P2MoveType = H)
trigger6		= (StateNo = 1010) && (AnimElem = 3, > 20) && (AnimElem = 4, < 0) && (Var(12) < 2) && (Power > 0) && (P2MoveType = H) && (Random <= 799)
trigger7		= (StateNo = 1090) && (AnimElem = 10, > 2) && (MoveContact) && (Random > 749)

;---------------------------------------------------------------------------
;Bakuenha (EX)

[State -1: 		Bakuenha EX]
type 			= ChangeState
value 			= 2010
triggerall 		= (Var(20) = 0) && (Pos Y >= 0) && (Power >= 500) && (Var(2) > 0) && (StateNo != [3000,3021]) && (RoundState = 2)
trigger1 		= (Command = "Bakuenha EX") && (((StateType != A) && (Ctrl)) || ((StateNo = [100,101]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0)) || (StateNo = 40))
trigger2		= (Command = "Bakuenha EX") && ((Var(3) = 1) || ((Var(3) = 3) && (StateNo != 1010) && (StateNo != 2010)))
trigger3		= (StateType != A) && (Ctrl) && (P2Dist X <= 150) && ((P2StateType = L) || (P2StateType = C)) && (Random <= 249)
trigger4		= (StateNo = 1090) && (AnimElem = 10, > 2) && (MoveContact) && (FrontEdgeBodyDist > 60) && (Random <= 149)
trigger5		= (Var(3) = 1) && (P2StateType = L) && (P2MoveType = H)

;---------------------------------------------------------------------------
;Gou Kikou Ha

[State -1: 		Gou Kikou Ha]
type 			= ChangeState
value 			= 1005
triggerall 		= (Power >= 300) && (StateNo != [1000,1005]) && (StateNo != 2000) && (Pos Y >= 0) && (Var(2) > 0) && (RoundState = 2)
trigger1		= (StateNo = 1090) && (AnimElem = 10, > 2) && (MoveContact) && (FrontEdgeBodyDist < 60) && (Random <= 399)

;---------------------------------------------------------------------------
;Kikou Ha

[State -1: 		Kikou Ha]
type 			= ChangeState
value 			= (IfElse(Power >= 500,2000,1000))
triggerall 		= (Pos Y >= 0) && (Var(2) > 0) && (StateNo != [3000,3021]) && (RoundState = 2)
trigger1		= (Command = "Kikou Ha") && (((StateType != A) && (Ctrl)) || ((StateType = A) && (Ctrl) && (Var(20) = 1)) || ((StateNo = [100,101]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0)))
trigger2		= (Command = "Kikou Ha") && ((Var(3) = 1) || ((Var(3) = 3) && (StateNo != 1000) && (StateNo != 2000)))
trigger3		= (StateType != A) && (Ctrl) && (P2Dist X > 175) && (P2MoveType = I) && (P2StateType = S) && (EnemyNear, Vel X <= 0) && (EnemyNear, Anim != 5300) && (EnemyNear, Pos Y >= -30) && (Random <= 499)
trigger4		= (StateNo = 1000) && (AnimElem = 3, > 5) && (AnimElem = 4, < 0) && (Var(12) < 3) && (Power > 0) && (P2MoveType = H)
trigger5		= (StateNo = 1090) && (AnimElem = 10, > 2) && (MoveContact) && (Random > 799)
trigger6		= (StateType != A) && (Ctrl) && (P2MoveType != A) && (P2StateType != L) && (P2Dist X > 125) && (Random <= 349)
trigger7		= (StateType != A) && (Ctrl) && (Power >= 500) && (P2Dist X > 150) && (EnemyNear, Pos Y < -70) && (EnemyNear, Vel X < 0) && (EnemyNear, Vel Y < 0) && (Random <= 249)

;---------------------------------------------------------------------------
;Kikou Ha (EX)

[State -1: 		Kikou Ha EX]
type 			= ChangeState
value 			= 2000
triggerall 		= (Pos Y >= 0) && (Power >= 500) && (Var(2) > 0) && (StateNo != [3000,3021]) && (RoundState = 2)
trigger1		= (Command = "Kikou Ha EX") && (((StateType != A) && (Ctrl)) || ((StateType = A) && (Ctrl) && (Var(20) = 1)) || ((StateNo = [100,101]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0)))
trigger2		= (Command = "Kikou Ha EX") && ((Var(3) = 1) || ((Var(3) = 3) && (StateNo != 1000) && (StateNo != 2000)))
trigger3		= (StateType != A) && (Ctrl) && (P2Dist X > 175) && (P2MoveType = I) && (P2StateType = S) && (EnemyNear, Vel X <= 0) && (EnemyNear, Anim != 5300) && (EnemyNear, Pos Y >= -30) && (Random <= 249)
trigger4		= (StateNo = 2000) && (AnimElem = 3, > 5) && (AnimElem = 4, < 0) && (Var(12) < 3) && (P2MoveType = H)
trigger5		= (StateType != A) && (Ctrl) && (EnemyNear, Pos Y < -100) || ((StateType != A) && (Ctrl) && (P2BodyDist X > 100) && (EnemyNear, Pos Y < -70) && (EnemyNear, Vel X < 0) && (EnemyNear, Vel Y < 0))
trigger6		= (StateType != A) && (Ctrl) && (StateNo != [100,150]) && (P2Dist X > 150) && (NumHelper(9601) = 0) && (Random <= 249)

;---------------------------------------------------------------------------
;Throw

[State -1: 		Throw]
type 			= ChangeState
value 			= 800
triggerall		= (Var(2) > 0) && (StateType != A) && (Ctrl) && (P2Dist X <= 75) && (EnemyNear, Pos Y <= 0) && (Random <= 499) && (RoundState = 2)
trigger1		= (P2MoveType != A) && (P2StateType != L) && (EnemyNear, Pos Y >= -30)
trigger2		= (StateNo = 1071) && (AnimElem = 3, > 0) && (NumTarget > 0) && (Random <= 499)

;---------------------------------------------------------------------------
;Moushin Rariatto

[State -1: 		Moushin Rariatto]
type 			= ChangeState
value 			= 700
triggerall 		= (BackEdgeBodyDist > -5) && (Pos Y >= 0) && (Var(2) > 0) && (StateNo != [3000,3021]) && (RoundState = 2)
trigger1		= (StateNo = 100) && (P2Dist X <= 75) && (P2StateType != C) && (P2StateType != L) && (EnemyNear, Pos Y >= -50) && (Random <= 349)
trigger2		= (((StateNo = 1010) && (AnimElem = 3, > 5)) || ((StateNo = 1090) && (AnimElem = 10, > 2))) && (P2StateNo = [150,152]) && (P2StateType = C) && (Random <= 249)
trigger3		= (StateNo = 8010) && (PrevStateNo = 100) && (P2Dist X >= 0) && (P2Dist X < 150) && (Random <= 499)
ignorehitpause		= 1

;---------------------------------------------------------------------------
;Satsubatsu Geri

[State -1: 		Satsubatsu Geri]
type 			= ChangeState
value 			= 710
triggerall 		= (BackEdgeBodyDist > -5) && (Pos Y >= 0) && (Var(2) > 0) && (StateNo != [3000,3021]) && (RoundState = 2)
trigger1		= (StateNo = 100) && (P2Dist X <= 75) && (P2StateType != S) && (P2StateType != A) && (EnemyNear, Pos Y >= -50) && (Random <= 349)
trigger2		= (((StateNo = 1010) && (AnimElem = 3, > 5)) || ((StateNo = 1090) && (AnimElem = 10, > 2))) && (P2StateNo = [150,152]) && (P2StateType != C) && (Random <= 249)
ignorehitpause		= 1

;---------------------------------------------------------------------------
;Stand Weak Punch

[State -1: 		SWP]
type 			= ChangeState
value 			= 200
triggerall 		= (Var(2) > 0) && (StateNo != [3000,3021]) && (P2MoveType != A) && (RoundState = 2)
trigger1		= (Command = "x") && (Command != "holddown") && (((StateType = S) && (Ctrl)) || ((StateNo = [100,106]) && (Command != "holdfwd") && (BackEdgeBodyDist > -5) && (Pos Y >= 0)))
trigger2		= (Command = "x") && (Command != "holddown") && ((StateNo = 200) && ((AnimElem = 2, > 5) || ((MoveContact) && (AnimElem = 2, > 3))))
trigger3		= (Command = "x") && (Command != "holddown") && ((StateNo = 400) && ((AnimElem = 2, > 5) || ((MoveContact) && (AnimElem = 2, > 3))))
trigger4 		= (P2Dist X <= 70) && (P2MoveType != A) && (P2StateType != L) && (StateType = S) && (Ctrl) && (Random <= 149)
trigger5		= (P2BodyDist X <= 20) && (P2StateType = S) && (EnemyNear, NumProj = 0) && (Random <= 150) && (StateType = S) && (Ctrl)
ignorehitpause		= 1

;---------------------------------------------------------------------------
;Stand Medium Punch

[State -1: 		SMP]
type 			= ChangeState
value 			= 210
triggerall 		= (Var(2) > 0) && (StateNo != [3000,3021]) && (P2MoveType != A) && (RoundState = 2)
trigger1		= (Command = "y") && (Command != "holddown") && (Command != "holdfwd") && (((StateType = S) && (Ctrl)) || ((StateNo = [100,106]) && (Command != "holdfwd") && (BackEdgeBodyDist > -5) && (Pos Y >= 0)))
trigger2		= (Command = "y") && (Command != "holddown") && (Command != "holdfwd") && (((StateNo = 200) || (StateNo = 230) || (StateNo = 400) || (StateNo = 430)) && (MoveContact))
trigger3 		= (Command = "y") && (Command != "holddown") && (P2Dist X <= 120) && (P2MoveType != A) && (StateType = S) && (Ctrl)
trigger4		= (P2BodyDist X <= 30) && (P2StateType = S) && (EnemyNear, NumProj = 0) && (Random <= 150) && (StateType = S) && (Ctrl)
trigger5		= ((StateNo = 200) || (StateNo = 230)) && (MoveContact) && (Random <= 799)
ignorehitpause		= 1

;---------------------------------------------------------------------------
;Sakotsu Wari

[State -1: 		Sakotsu Wari]
type 			= ChangeState
value 			= 215
triggerall 		= (Var(2) > 0) && (StateNo != [3000,3021]) && (P2Dist X <= 120) && (P2MoveType != A) && (RoundState = 2)
trigger1		= (Command = "y") && (Command != "holddown") && (Command = "holdfwd") && (StateType = S) && (Ctrl)
trigger2		= (Command = "y") && (Command != "holddown") && (Command = "holdfwd") && ((StateNo = 200) || (StateNo = 230) || (StateNo = 400) || (StateNo = 430)) && (MoveContact)
trigger3 		= (Command = "y") && (Command != "holddown") && (P2MoveType != A) && (StateType = S) && (Ctrl)
trigger4		= (P2BodyDist X <= 40) && (P2StateType = C) && (EnemyNear, NumProj = 0) && (Random <= 250) && (StateType = S) && (Ctrl)
ignorehitpause		= 1

;---------------------------------------------------------------------------
;Stand Strong Punch

[State -1: 		SSP]
type 			= ChangeState
value 			= 220
triggerall 		= (Var(2) > 0) && (StateNo != [3000,3021]) && (P2Dist X <= 120) && (StateNo != [120,155]) && (RoundState = 2)
trigger1		= (Command = "z") && (Command != "holddown") && (((StateType = S) && (Ctrl)) || ((StateNo = [100,106]) && (Command != "holdfwd") && (BackEdgeBodyDist > -5) && (Pos Y >= 0)))
trigger2		= (Command = "z") && (Command != "holddown") && (((StateNo = 200) || (StateNo = [210,215]) || (StateNo = 230) || (StateNo = 240)) && (MoveContact))
trigger3		= (Command = "z") && (Command != "holddown") && (((StateNo = 400) || (StateNo = 410) || (StateNo = 430) || (StateNo = 440)) && (MoveContact))
trigger4 		= (Command = "z") && (Command != "holddown") && (P2MoveType != A) && (StateType = S) && (Ctrl)
trigger5		= (P2BodyDist X <= 40) && (P2StateType = S) && (EnemyNear, NumProj = 0) && (Random <= 200) && (StateType != A) && (Ctrl)
trigger6		= ((StateNo = 210) || (StateNo = 240)) && (MoveContact) && (Random <= 799)
trigger7		= (StateNo = 8010) && (AnimElem = 3, > 0) && (P2Dist X < 50) && (EnemyNear, Pos Y > -50) && (Random <= 249)
ignorehitpause		= 1

;---------------------------------------------------------------------------
;Stand Weak Kick

[State -1: 		SWK]
type 			= ChangeState
value 			= 230
triggerall 		= (Var(2) > 0) && (StateNo != [3000,3021]) && (P2Dist X <= 120) && (StateNo != [120,155]) && (RoundState = 2)
trigger1		= (Command = "a") && (Command != "holddown") && (((StateType = S) && (Ctrl)) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0)))
trigger2 		= (Command = "a") && (Command != "holddown") && (P2MoveType != A) && (StateType = S) && (Ctrl)
trigger3		= (P2BodyDist X <= 20) && (P2StateType = S) && (EnemyNear, NumProj = 0) && (Random <= 300) && (StateType = S) && (Ctrl)
trigger4		= (P2BodyDist X <= 40) && (P2StateType = L) && (P2MoveType = H) && (Random <= 499) && (StateType != A) && (Ctrl)
trigger5		= (StateNo = 52) && (PrevStateNo = 1080) && (P2MoveType = H) && (P2StateType = A) && (P2Dist X <= 70) && (FrontEdgeBodyDist <= 50) && (Random <= 799)
ignorehitpause		= 1

;---------------------------------------------------------------------------
;Stand Medium Kick

[State -1: 		SMK]
type 			= ChangeState
value 			= 240
triggerall 		= (Var(2) > 0) && (StateNo != [3000,3021]) && (P2Dist X <= 120) && (StateNo != [120,155]) && (RoundState = 2)
trigger1		= (Command = "b") && (Command != "holddown") && (((StateType = S) && (Ctrl)) || ((StateNo = [100,106]) && (Command != "holdfwd") && (BackEdgeBodyDist > -5) && (Pos Y >= 0)))
trigger2		= (Command = "b") && (Command != "holddown") && (((StateNo = 200) || (StateNo = 230)) && (MoveContact))
trigger3		= (Command = "b") && (Command != "holddown") && (((StateNo = 400) || (StateNo = 430)) && (MoveContact))
trigger4 		= (Command = "b") && (Command != "holddown") && (P2MoveType != A) && (StateType = S) && (Ctrl)
trigger5		= (P2BodyDist X <= 40) && (P2StateType = S) && (EnemyNear, NumProj = 0) && (Random <= 350) && (StateType != A) && (Ctrl)
trigger6		= ((StateNo = 200) || (StateNo = 230)) && (MoveContact) && (Random <= 799)
ignorehitpause		= 1

;---------------------------------------------------------------------------
;Stand Strong Kick

[State -1: 		SSK]
type 			= ChangeState
value 			= 250
triggerall 		= (Var(2) > 0) && (StateNo != [3000,3021]) && (P2Dist X <= 120) && (StateNo != [120,155]) && (RoundState = 2)
trigger1		= (Command = "c") && (Command != "holddown") && (((StateType = S) && (Ctrl)) || ((StateNo = [100,106]) && (Command != "holdfwd") && (BackEdgeBodyDist > -5) && (Pos Y >= 0)))
trigger2		= (Command = "c") && (Command != "holddown") && (((StateNo = 200) || (StateNo = [210,215]) || (StateNo = 230) || (StateNo = 240)) && (MoveContact))
trigger3		= (Command = "c") && (Command != "holddown") && (((StateNo = 400) || (StateNo = 410) || (StateNo = 430) || (StateNo = 440)) && (MoveContact))
trigger4 		= (Command = "c") && (Command != "holddown") && (P2MoveType != A) && (StateType = S) && (Ctrl)
trigger5		= (P2BodyDist X <= 30) && (P2StateType = S) && (EnemyNear, NumProj = 0) && (Random <= 400) && (StateType != A) && (Ctrl)
trigger6		= ((StateNo = 210) || (StateNo = 240)) && (MoveContact) && (Random <= 799)
ignorehitpause		= 1

;---------------------------------------------------------------------------
;Crouch Weak Punch

[State -1: 		CWP]
type 			= ChangeState
value 			= 400
triggerall 		= (Command = "x") && (Command = "holddown") && (P2Dist X <= 120) && (Var(2) > 0) && (StateNo != [3000,3021]) && (StateNo != [120,155])
trigger1		= ((StateType = C) && (Ctrl)) || ((StateNo = [100,106]) && (Command != "holdfwd") && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= (StateNo = 200) && ((AnimElem = 2, > 5) || ((MoveContact) && (AnimElem = 2, > 3)))
trigger3		= (StateNo = 400) && ((AnimElem = 2, > 5) || ((MoveContact) && (AnimElem = 2, > 3)))
ignorehitpause		= 1

;---------------------------------------------------------------------------
;Crouch Medium Punch

[State -1: 		CMP]
type 			= ChangeState
value 			= 410
triggerall 		= (Command = "y") && (Command = "holddown")  && (P2Dist X <= 120) && (Var(2) > 0) && (P2Dist X <= 120) && (P2MoveType != A) && (StateNo != [3000,3021]) && (StateNo != [120,155])
trigger1		= ((StateType = C) && (Ctrl)) || ((StateNo = [100,106]) && (Command != "holdfwd") && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= ((StateNo = 200) || (StateNo = 230) || (StateNo = 400) || (StateNo = 430)) && (MoveContact)
ignorehitpause		= 1

;---------------------------------------------------------------------------
;Crouch Strong Punch

[State -1: 		CSP]
type 			= ChangeState
value 			= 420
triggerall 		= (Command = "z") && (Command = "holddown")  && (P2Dist X <= 120) && (Var(2) > 0) && (P2Dist X <= 120) && (P2MoveType != A) && (StateNo != [3000,3021]) && (StateNo != [120,155])
trigger1		= ((StateType = C) && (Ctrl)) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= ((StateNo = 200) || (StateNo = [210,215]) || (StateNo = 230) || (StateNo = 240)) && (MoveContact)
trigger3		= ((StateNo = 400) || (StateNo = 410) || (StateNo = 430) || (StateNo = 440)) && (MoveContact)
ignorehitpause		= 1

;---------------------------------------------------------------------------
;Crouch Weak Kick

[State -1: 		CWK]
type 			= ChangeState
value 			= 430
triggerall 		= (Command = "a") && (Command = "holddown")  && (P2Dist X <= 120) && (Var(2) > 0) && (P2Dist X <= 120) && (P2MoveType != A) && (StateNo != [3000,3021]) && (StateNo != [120,155])
trigger1		= ((StateType = C) && (Ctrl)) || ((StateNo = [100,106]) && (Command != "holdfwd") && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
ignorehitpause		= 1

;---------------------------------------------------------------------------
;Crouch Medium Kick

[State -1: 		CMK]
type 			= ChangeState
value 			= 440
triggerall 		= (Command = "b") && (Command = "holddown")  && (P2Dist X <= 120) && (Var(2) > 0) && (P2Dist X <= 120) && (P2MoveType != A) && (StateNo != [3000,3021]) && (StateNo != [120,155])
trigger1		= ((StateType = C) && (Ctrl)) || ((StateNo = [100,106]) && (Command != "holdfwd") && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= ((StateNo = 200) || (StateNo = 230)) && (MoveContact)
trigger3		= ((StateNo = 400) || (StateNo = 430)) && (MoveContact)
ignorehitpause		= 1

;---------------------------------------------------------------------------
;Crouch Strong Kick

[State -1: 		CSK]
type 			= ChangeState
value 			= 450
triggerall 		= (Command = "c") && (Command = "holddown")  && (P2Dist X <= 120) && (Var(2) > 0) && (P2Dist X <= 120) && (P2MoveType != A) && (StateNo != [3000,3021]) && (StateNo != [120,155])
trigger1		= ((StateType = C) && (Ctrl)) || ((StateNo = [100,106]) && (Command != "holdfwd") && (BackEdgeBodyDist > -5) && (Pos Y >= 0))
trigger2		= ((StateNo = 200) || (StateNo = [210,215]) || (StateNo = 230) || (StateNo = 240)) && (MoveContact)
trigger3		= ((StateNo = 400) || (StateNo = 410) || (StateNo = 430) || (StateNo = 440)) && (MoveContact)
ignorehitpause		= 1

;---------------------------------------------------------------------------
;Jump Weak Kick

[State -1: 		JWK]
type 			= ChangeState
value 			= 600
triggerall 		= (Var(2) > 0) && (P2Dist X <= 120) && (StateNo != [3000,3021]) && (StateNo != [120,155])
trigger1		= ((Command = "a") || (Command = "x")) && (((StateType = A) && (Ctrl)) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y < 0)))
trigger2		= (StateType = A) && (Ctrl) && (Var(20) = 0) && (P2Dist X <= 100) && (Random <= 449)
ignorehitpause		= 1

;---------------------------------------------------------------------------
;Jump Medium Kick

[State -1: 		JMK]
type 			= ChangeState
value 			= 610
triggerall 		= (Var(2) > 0) && (P2Dist X <= 120) && (StateNo != [3000,3021]) && (StateNo != [120,155])
trigger1		= ((Command = "a") || (Command = "x")) && (((StateType = A) && (Ctrl)) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y < 0)))
trigger2		= ((Command = "a") || (Command = "x")) && ((StateNo = 600) && (MoveContact))
trigger3		= (StateType = A) && (Ctrl) && (Var(20) = 0) && (P2Dist X <= 100) && (Random <= 349)
ignorehitpause		= 1

;---------------------------------------------------------------------------
;Jump Strong Kick

[State -1: 		JSK]
type 			= ChangeState
value 			= 620
triggerall 		= (Var(2) > 0) && (P2Dist X <= 120) && (StateNo != [3000,3021]) && (StateNo != [120,155])
trigger1		= ((Command = "c") || (Command = "z")) && (((StateType = A) && (Ctrl)) || ((StateNo = [100,106]) && (BackEdgeBodyDist > -5) && (Pos Y < 0)))
trigger2		= ((Command = "c") || (Command = "z")) && (((StateNo = 600) || (StateNo = 610)) && (MoveContact))
trigger3		= (StateType = A) && (Ctrl) && (Var(20) = 0) && (P2Dist X <= 100) && (Random <= 249)
ignorehitpause		= 1






[State -1,shikidam]
type = ChangeState
value = 4022
triggerall = command= "shinkidama"
trigger2 = hitdefattr = SC, NA, SA, HA,H
trigger1 = ctrl = 1
trigger1 = statetype = S


;shiin ki dama
[State -1, 		maxi]
type = null;ChangeState
value = 4022
triggerall = (Command = "shinkidama")
trigger1 = (Command = "shinkidama") && (Var(2) <= 0)
triggerall = command = "shinkidama" && (P2Dist X <= 600)
trigger2 = statetype = S
trigger3 = ctrl
ignorehitpause		= 0



; “Á‘åƒGƒlƒ‹ƒM[’e
[State -1,popop]
type = ChangeState
value = 2050
triggerall = command = "energy"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 220 && movecontact = 1
trigger6 = stateno = 243 && movecontact = 1
trigger7 = stateno = 240 && movecontact = 1
trigger8 = stateno = 410 && movecontact = 1
trigger9 = stateno = 430 && movecontact = 1
trigger10 = stateno = 440 && movecontact = 1




