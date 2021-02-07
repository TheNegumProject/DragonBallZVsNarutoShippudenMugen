;Yamcha's CMD! By Chrono_Strife
;You can modify commands from this file and such...Just don't steal...ANYTHING! I want MUGEN to
;remain clean...So please don't taint my stuff by stealing it...Although I would be happy if you 
;used this as a reference if it's needed! ^_^
;-| Super Motions |--------------------------------------------------------

[Command]
name = "KameHameHa1"
command = ~D, DB, B, a+b
time = 10

[Command]
name = "KameHameHa2"
command = ~D, DB, B, b+c
time = 10

[Command]
name = "KameHameHa3"
command = ~D, DB, B, a+c
time = 10

[Command]
name = "WolfFangFist1"
command = ~D, DF, F, x+y
time = 10

[Command]
name = "WolfFangFist2"
command = ~D, DF, F, y+z
time = 10

[Command]
name = "WolfFangFist3"
command = ~D, DF, F, x+z
time = 10

[Command]
name = "Sokidan1"
command = ~D, DB, B, x+y
time = 10

[Command]
name = "Sokidan2"
command = ~D, DB, B, y+z
time = 10

[Command]
name = "Sokidan3"
command = ~D, DB, B, x+z
time = 10

;-| Special Motions |------------------------------------------------------
[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_c"
command = ~D, DF, F, c

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_c"
command = ~D, DB, B, c

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
command = ~D, DB, B, z

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "fly"
command = b+y
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
name = "s"
command = s
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

[Command]
name = "SuperJump" ;Required (do not remove)
command = D, /$U
time = 1

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_yb"
command = /y+b
time = 1

[Command]
name = "hold_xa"
command = /x+a
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
name = "hold_s"
command = /s
time = 1
;-| AI Activation |--------------------------------------------------------------
; Artificial Intelligence
[Command]
name = "AI_01"
command = ~D, DF, F, F, DF, D, DB, B, a
time = 1

[Command]
name = "AI_02"
command = ~D, DF, F, F, DF, D, DB, B, b
time = 1

[Command]
name = "AI_03"
command = ~D, DF, F, F, DF, D, DB, B, c
time = 1

[Command]
name = "AI_04"
command = ~D, DF, F, F, DF, D, DB, B, x
time = 1

[Command]
name = "AI_05"
command = ~D, DF, F, F, DF, D, DB, B, y
time = 1

[Command]
name = "AI_06"
command = ~D, DF, F, F, DF, D, DB, B, z
time = 1

[Command]
name = "AI_07"
command = ~D, DB, B, B, DB, D, DF, F, a
time = 1

[Command]
name = "AI_08"
command = ~D, DB, B, B, DB, D, DF, F, b
time = 1

[Command]
name = "AI_09"
command = ~D, DB, B, B, DB, D, DF, F, c
time = 1

[Command]
name = "AI_10"
command = ~D, DB, B, B, DB, D, DF, F, x
time = 1

[Command]
name = "AI_11"
command = ~D, DB, B, B, DB, D, DF, F, y
time = 1

[Command]
name = "AI_12"
command = ~D, DB, B, B, DB, D, DF, F, z
time = 1
;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.  
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;AI Activation
;---------------------------------------------------------------------------
[State -1, ArtificialIntelligence]
type = VarSet	
triggerall = Var(39) != 1
trigger1 = command = "AI_01" 
trigger2 = command = "AI_02"
trigger3 = command = "AI_03"
trigger4 = command = "AI_04"
trigger5 = command = "AI_05"
trigger6 = command = "AI_06"
trigger7 = command = "AI_07"
trigger8 = command = "AI_08"
trigger9 = command = "AI_09"
trigger10 = command = "AI_10"
trigger11 = command = "AI_11"
trigger12 = command = "AI_12"
v = 39
value = 1
;===========================================================================
;Hyper Attacks
;---------------------------------------------------------------------------
;Wolf Fang Fist/Rouga Fufu Ken
[State -1, WolfFangFist]
type = ChangeState
value = 1900
triggerall = (command = "WolfFangFist1" || command = "WolfFangFist2" || command = "WolfFangFist3") && command != "holddown" && power >= 1000
trigger1 = statetype = S && ctrl
trigger2 = stateno = 3100
;---------------------------------------------------------------------------
;Wolf Fang Fist/Rouga Fufu Ken Chain
[State -1, WolfFangFist]
type = ChangeState
value = 1915
triggerall = (command = "WolfFangFist1" || command = "WolfFangFist2" || command = "WolfFangFist3") && command != "holddown" && power >= 1000
trigger1 = (stateno = [200,450]) && movecontact && stateno != 260
;---------------------------------------------------------------------------
;Turtle Destruction Blast/KameHameHa
[State -1, KameHameHa]
type = ChangeState
value = 1800
triggerall = (command = "KameHameHa1" || command = "KameHameHa2" || command = "KameHameHa3") && command != "holddown" && power >= 1000
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Turtle Destruction Blast/KameHameHa Chain
[State -1, KameHameHa]
type = ChangeState
value = 1805
triggerall = (command = "KameHameHa1" || command = "KameHameHa2" || command = "KameHameHa3") && command != "holddown" && power >= 1000
trigger1 = (stateno = [200,450]) && movecontact && pos y = 0 && stateno != 260
trigger2 = (stateno = [1000,1150]) && movecontact  && pos y = 0
;---------------------------------------------------------------------------
;Aerial Turtle Destruction Blast/Aerial KameHameHa
[State -1, KameHameHa]
type = ChangeState
value = 1850
triggerall = (command = "KameHameHa1" || command = "KameHameHa2" || command = "KameHameHa3") && command != "holddown" && power >= 1000
trigger1 = statetype = A && ctrl
trigger2 = stateno = 3100
;---------------------------------------------------------------------------
;Aerial Turtle Destruction Blast/Aerial KameHameHa Chain
[State -1, KameHameHa]
type = ChangeState
value = 1855
triggerall = (command = "KameHameHa1" || command = "KameHameHa2" || command = "KameHameHa3") && command != "holddown" && power >= 1000
trigger1 = (stateno = [200,450]) && movecontact && pos y < 0
trigger2 = (stateno = [1000,1150]) && movecontact  && pos y < 0
trigger3 = (stateno = [600,650]) && movecontact
;---------------------------------------------------------------------------
;Spirit Bomb/Souki Dan
[State -1, Sokidan]
type = ChangeState
value = 2200
triggerall = (command = "Sokidan1" || command = "Sokidan2" || command = "Sokidan3") && command != "holddown" && power >= 2000 && NumHelper(2250) = 0
trigger1 = statetype = S && ctrl
trigger2 = stateno = 3100
;---------------------------------------------------------------------------
;Spirit Bomb/Souki Dan
[State -1, Sokidan]
type = ChangeState
value = 2201
triggerall = command = "c" && command = "z" && command != "holddown" && NumHelper(2250) = 1
trigger1 = statetype = S && ctrl
trigger2 = stateno = 3100
;===========================================================================
;-=Special Attacks/Special Abilities/Throws/Combinations=-
;---------------------------------------------------------------------------
; Fly-Lift Off/Buku Jyutsu(Start)
[State -1, FlyStart]
type = ChangeState
value = 3000
trigger1 = statetype = S && ctrl = 1 && stateno != 3100 && stateno = 0
triggerall = command = "fly"
;---------------------------------------------------------------------------
; Fly in action/Buku Jyutsu
[State -1, Flying]
type = ChangeState
value = 3100
trigger1 = statetype = A && ctrl = 1
triggerall = command = "fly"
;---------------------------------------------------------------------------
; Fall from Flight
[State -1, Fall]
type = ChangeState
value = 3105
trigger1 = statetype = A && ctrl = 1 && stateno = 3100 && stateno != 0
triggerall = command = "fly"
;---------------------------------------------------------------------------
;Super Jump
[State -1, SuperJump]
type = ChangeState
value = 41
triggerall = command = "holdup"
trigger1 = statetype = C && ctrl = 1 && stateno != 3100
;---------------------------------------------------------------------------
; Run_Fwd
[State -1, RunFwd]
type = ChangeState
value = 100
trigger1 = command = "FF" && statetype = S && ctrl && (stateno != 100 || stateno != 102)

; Air Run_Fwd
[State -1, AirRunFwd]
type = ChangeState
value = 102
trigger1 = command = "FF" && statetype = A && ctrl && (stateno != 100 || stateno != 102)
;---------------------------------------------------------------------------
; Run_Back
[State -1, RunBack]
type = ChangeState
value = 105
trigger1 = command = "BB" && statetype = S && ctrl

; Air Run_Back
[State -1, AirRunBack]
type = ChangeState
value = 107
trigger1 = command = "BB" && statetype = A && ctrl && stateno != 105
;---------------------------------------------------------------------------
;Flight Guard
[State -1, FlyGuard]
type = ChangeState
value = 120
triggerall = p2movetype = A && ctrl = 1 && stateno = 3100
trigger1 = command = "holdback"
;---------------------------------------------------------------------------
; Zanzoken Forward
[State -1, Zanzoken.F]
type = ChangeState
value = 2900
triggerall = (command = "a"  && command = "x") && (prevstateno != 2900 || prevstateno != 2901) && (stateno = 100 || stateno = 102)
trigger1 = (statetype = S || statetype = A) && ctrl = 1 
;---------------------------------------------------------------------------
; Zanzoken Backward
[State -1, Zanzoken.B]
type = ChangeState
value = 2905
triggerall = (command = "a"  && command = "x") && (prevstateno != 2905 || prevstateno != 2906) && (stateno = 105)
trigger1 = (statetype = S || statetype = A) && ctrl = 1 
;---------------------------------------------------------------------------
; Zanzoken Air Backward
[State -1, Zanzoken.B]
type = ChangeState
value = 2907
triggerall = (command = "a"  && command = "x") && (prevstateno != 2905 || prevstateno != 2906) && (stateno = 107)
trigger1 = (statetype = S || statetype = A) && ctrl = 1 
;---------------------------------------------------------------------------
;Charge Up/Power Up
[State -1, ChargePower]
type = ChangeState
value = 1700
triggerall = power < 3000 && time > 2
trigger1 = command = "hold_a" && command = "hold_x" && statetype = S && ctrl = 1 && command != "holdfwd" && stateno != 150
trigger2 = command = "hold_a" && command = "hold_x" && stateno = 3100 && command != "holdfwd"
;---------------------------------------------------------------------------
; Sliding Wolf Smash
[State -1, SlidingWolfSmash]
type = ChangeState
value = 1600
triggerall = (command = "x" || command = "y" || command = "z") && command != "holddown" && stateno = 100
trigger1 = statetype = S && ctrl = 1 
;---------------------------------------------------------------------------
; Sliding Tiger Kick
[State -1, SlidingTigerKick]
type = ChangeState
value = 1630
triggerall = (command = "a" || command = "b" || command = "c") && command != "holddown" && stateno = 100
trigger1 = statetype = S && ctrl = 1 
;---------------------------------------------------------------------------
; Weak Fireball
[State -1, W.Fireball]
type = ChangeState
value = 1000
triggerall = command = "QCB_x" && command != "holddown" && power >= 20
trigger1 = statetype = S && ctrl
trigger2 = stateno = 3100
trigger3 = (stateno = [200,260]) && movecontact
trigger4 = (stateno = 1100 || stateno = 1110 || stateno = 1120) && movecontact
;---------------------------------------------------------------------------
; Medium Fireball
[State -1, M.Fireball]
type = ChangeState
value = 1010
triggerall = command = "QCB_y" && command != "holddown" && power >= 40
trigger1 = statetype = S && ctrl = 1 
trigger2 = stateno = 3100
trigger3 = (stateno = [200,260]) && movecontact
trigger4 = (stateno = 1100 || stateno = 1110 || stateno = 1120) && movecontact
;---------------------------------------------------------------------------
; Strong Fireball
[State -1, S.Fireball]
type = ChangeState
value = 1020
triggerall = command = "QCB_z" && command != "holddown" && power >= 60
trigger1 = statetype = S && ctrl = 1 
trigger2 = stateno = 3100
trigger3 = (stateno = [200,260]) && movecontact
trigger4 = (stateno = 1100 || stateno = 1110 || stateno = 1120) && movecontact
;---------------------------------------------------------------------------
; KameHameHa Blast(weak)
[State -1, KHHBlast.W]
type = ChangeState
value = 1050
triggerall = command = "QCB_a" && command != "holddown" && power >= 20
trigger1 = statetype = S && ctrl
trigger2 = stateno = 3100
trigger3 = (stateno = [200,260]) && movecontact
trigger4 = (stateno = [1000,1022]) && movecontact
trigger5 = (stateno = 1100 || stateno = 1110 || stateno = 1120) && movecontact
;---------------------------------------------------------------------------
; KameHameHa Blast(medium)
[State -1, KHHBlast.M]
type = ChangeState
value = 1060
triggerall = command = "QCB_b" && command != "holddown" && power >= 20
trigger1 = statetype = S && ctrl
trigger2 = stateno = 3100
trigger3 = (stateno = [200,260]) && movecontact
trigger4 = (stateno = [1000,1022]) && movecontact
trigger5 = (stateno = 1100 || stateno = 1110 || stateno = 1120) && movecontact
;---------------------------------------------------------------------------
; KameHameHa Blast(Strong)
[State -1, KHHBlast.S]
type = ChangeState
value = 1070
triggerall = command = "QCB_c" && command != "holddown" && power >= 20
trigger1 = statetype = S && ctrl
trigger2 = stateno = 3100
trigger3 = (stateno = [200,260]) && movecontact
trigger4 = (stateno = [1000,1022]) && movecontact
trigger5 = (stateno = 1100 || stateno = 1110 || stateno = 1120) && movecontact
;---------------------------------------------------------------------------
; Wolf Slash(Weak)
[State -1, WolfSlash.W]
type = ChangeState
value = 1100
triggerall = command = "QCF_x" && command != "holddown"
trigger1 = statetype = S && ctrl = 1 
trigger2 = stateno = 3100
trigger3 = (stateno = [200,260]) && movecontact
;---------------------------------------------------------------------------
; Wolf Slash(Medium)
[State -1, WolfSlash.M]
type = ChangeState
value = 1110
triggerall = command = "QCF_y" && command != "holddown"
trigger1 = statetype = S && ctrl = 1 
trigger2 = stateno = 3100
trigger3 = (stateno = [200,260]) && movecontact
;---------------------------------------------------------------------------
; Wolf Slash(Strong)
[State -1, WolfSlash.S]
type = ChangeState
value = 1120
triggerall = command = "QCF_z" && command != "holddown"
trigger1 = statetype = S && ctrl = 1 
trigger2 = stateno = 3100
trigger3 = (stateno = [200,260]) && movecontact
;---------------------------------------------------------------------------
; Power-Dive Kick
[State -1, PDkick]
type = ChangeState
value = 1200
triggerall = (command = "QCF_a" || command = "QCF_b" || command = "QCF_c") && command != "holddown"
trigger1 = statetype = A && ctrl
trigger2 = (stateno = [600,660]) && movecontact
trigger3 = stateno = 3100
;---------------------------------------------------------------------------
; Tiger Pounce(Weak)
[State -1, TigerPounce.W]
type = ChangeState
value = 1130
triggerall = command = "QCF_a" && command != "holddown"
trigger1 = statetype = S && ctrl = 1 
trigger2 = stateno = 3100
trigger3 = (stateno = [200,260]) && movecontact
;---------------------------------------------------------------------------
; Tiger Pounce(Medium)
[State -1, TigerPounce.M]
type = ChangeState
value = 1140
triggerall = command = "QCF_b" && command != "holddown"
trigger1 = statetype = S && ctrl = 1 
trigger2 = stateno = 3100
trigger3 = (stateno = [200,260]) && movecontact
;---------------------------------------------------------------------------
; Tiger Pounce(Strong)
[State -1, TigerPounce.S]
type = ChangeState
value = 1150
triggerall = command = "QCF_c" && command != "holddown"
trigger1 = statetype = S && ctrl = 1 
trigger2 = stateno = 3100
trigger3 = (stateno = [200,260]) && movecontact
;---------------------------------------------------------------------------
; Flying Tiger Kick
;[State -1, FlyingTiger]
;type = ChangeState
;value = 1200
;triggerall = (command = "QCF_a" || command = "QCF_b" || command = "QCF_c") && command != "holddown"
;trigger1 = ((stateno = 1130 || stateno = 1140 || stateno = 1150) && movecontact);statetype = A && ctrl = 1
;---------------------------------------------------------------------------
; Shoulder Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = (command = "x" && command = "y") && statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 3 && (p2statetype = S || p2statetype = C) && p2movetype != H
trigger2 = command = "holdback" && p2bodydist X < 5 && (p2statetype = S || p2statetype = C) && p2movetype != H
trigger3 = stateno = 3100
;---------------------------------------------------------------------------
; Toss Up
[State -1, TossUp]
type = ChangeState
value = 850
triggerall = (command = "a" && command = "b") && statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 3 && (p2statetype = S || p2statetype = C) && p2movetype != H
trigger2 = command = "holdback" && p2bodydist X < 5 && (p2statetype = S || p2statetype = C) && p2movetype != H
trigger3 = stateno = 3100
;---------------------------------------------------------------------------
; Aerial Smash
[State -1, AerialSmash]
type = null;ChangeState
value = 860
triggerall = (command = "a" || command = "b"|| command = "c") && (stateno = 851)
trigger1 = (statetype = S) && ctrl = 1 
;---------------------------------------------------------------------------
; Tiger Jack Hammer
[State -1, TigerJackHammer]
type = ChangeState
value = 900
triggerall = (command = "y" && command = "z") && statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 3 && (p2statetype = S || p2statetype = C) && p2movetype != H
trigger2 = command = "holdback" && p2bodydist X < 5 && (p2statetype = S || p2statetype = C) && p2movetype != H
trigger3 = stateno = 3100
;---------------------------------------------------------------------------
; Advance Guard
[State -1, Advance Guard]
type = ChangeState
value = 330
triggerall = ((command = "x" && command = "y") || (command = "x" && command = "z") || (command = "z" && command = "y")) && command != "holddown" && power >= 200
trigger1 = stateno = [150, 156]
;===========================================================================
;-=Basic Attacks=-
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 3100
;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 3100
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 3100
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 240 && movecontact
;---------------------------------------------------------------------------
; Standing High Kick/Launcher
[State -1, Standing Strong Kick]
type = ChangeState
value = 260
triggerall = ((command = "a" && command = "b") || (command = "b" && command = "c") || (command = "a" && command = "c")) && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 3100
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 240 && movecontact
;---------------------------------------------------------------------------
; Stand Light Kick-Middle
[State -1, Stand Light Kick-M]
type = ChangeState
value = 230
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 3100
trigger3 = stateno = 200 && movecontact
;---------------------------------------------------------------------------
; Stand Light Kick-Low
[State -1, Stand Light Kick-L]
type = ChangeState
value = 231
triggerall = command = "a" && command != "holddown" && stateno = 230 && movehit = 1
trigger1 = statetype = S
trigger2 = stateno = 3100
;---------------------------------------------------------------------------
; Stand Light Kick-High
[State -1, Stand Light Kick-H]
type = ChangeState
value = 232
triggerall = command = "a" && command != "holddown" && stateno = 231 && movehit = 1
trigger1 = statetype = S
trigger2 = stateno = 3100
;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 3100
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
;---------------------------------------------------------------------------
; Stand Medium Kick-Leap
[State -1, Stand Medium Kick-L]
type = ChangeState
value = 241
triggerall = command = "b" && command != "holddown" && stateno = 232 && movehit = 1
trigger1 = statetype = S
trigger2 = stateno = 3100
;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 3100
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 240 && movecontact
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 3100
;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 430 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 230 && movecontact
;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 410 && movecontact
trigger3 = stateno = 440 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 240 && movecontact
;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 400 && movecontact
trigger4 = stateno = 200 && movecontact
trigger5 = stateno = 230 && movecontact
;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 410 && movecontact
trigger3 = stateno = 430 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, CrouchingStrongKick]
type = ChangeState
value = 450
triggerall = command = "c" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 420 && movecontact
trigger3 = stateno = 440 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 250 && movecontact
;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, JumpLightPunch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, JumpMediumPunch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact
;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, JumpStrongPunch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 610 && movecontact
trigger3 = stateno = 640 && movecontact
;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 610 && movecontact
trigger3 = stateno = 630 && movecontact
;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 620 && movecontact
trigger3 = stateno = 640 && movecontact
;---------------------------------------------------------------------------
; Sprite Set
[State -1, Sprite.Var]
type = VarSet
v=1
value=1
triggerall=Var(1)=0
trigger1=(PalNo=[4,6])||(PalNo=[10,12])

