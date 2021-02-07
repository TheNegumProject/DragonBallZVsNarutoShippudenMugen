; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional)
;   buffer.time = time (optional)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas. Each of these
;   buttons or directions is referred to as a "symbol".
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   greater-than (>) - means there must be no other keys pressed or released
;                      between the previous and the current symbol.
;          egs. command = a, >~a   ;press a and release it without having hit
;                                  ;or released any other keys in between
;   You can combine the symbols:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;
;   Note: Successive direction symbols are always expanded in a manner similar
;         to this example:
;           command = F, F
;         is expanded when MUGEN reads it, to become equivalent to:
;           command = F, >~F, >F
;
;   It is recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This makes the command easier
;   to do.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. The default
;   value for this is set in the [Defaults] section below. A typical
;   value is 15.
;
; - buffer.time (optional)
;   Time that the command will be buffered for. If the command is done
;   successfully, then it will be valid for this time. The simplest
;   case is to set this to 1. That means that the command is valid
;   only in the same tick it is performed. With a higher value, such
;   as 3 or 4, you can get a "looser" feel to the command. The result
;   is that combos can become easier to do because you can perform
;   the command early. Attacks just as you regain control (eg. from
;   getting up) also become easier to do. The side effect of this is
;   that the command is continuously asserted, so it will seem as if
;   you had performed the move rapidly in succession during the valid
;   time. To understand this, try setting buffer.time to 30 and hit
;   a fast attack, such as KFM's light punch.
;   The default value for this is set in the [Defaults] section below. 
;   This parameter does not affect hold-only commands (eg. /F). It
;   will be assumed to be 1 for those commands.
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
;
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10
;-| Button Remapping |----------------------------------------------------------
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

;-| Default Values |------------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |-------------------------------------------------------------
[Command]
name = "hyper kamehameha"
command = ~D, DF, F, D, DF, F, c
time = 30

[Command]
name = "flame kamehameha"
command = ~D, DB, B, D, DB, B, c
time = 30

[command]
name = "Machine-Ki-Gun"
command = D, DF, F, D, DF, F, b+c
time = 30

;-| Special Motions |-----------------------------------------------------------
[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

;-| Double Tap |----------------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |----------------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "teleporthit"
command = b+z

;-| Dir + Button |--------------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "holddown_z"
command = /$D,z
time = 1

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
name = "holdz"
command = /z
time = 1

[Command]
name = "holdc"
command = /c
time = 1


;-------------------------------------------------------------------------------
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

[State -1, AI Activate]
Type = VarSet
triggerall = RoundState = 2
Trigger1 = AiLevel != 0
V=59
Value=1

[State -1, AI Desacivate]
Type = VarSet
Trigger1 = Win||Lose||DrawGame
Trigger2 = !Alive
Trigger3 = !P2Life
V=59
Value=0

[State -1, AI Set Level]
Type=VarSet
Trigger1=1
v=58
value=(AILevel=1)*10+(AILevel=2)*20+(AILevel=3)*35+(AILevel=4)*70+(AILevel=5)*90+(AILevel=6)*110+(AILevel=7)*180+(AILevel=8)*360

[State -1, AI Defence]
Type=Changestate
Triggerall=InGuardDist
Triggerall=Var(59)=1
Triggerall=ctrl
Trigger1 = Random<(Var(58)*2+(AiLevel>=3)*30)
value=120

[State -1, AI Defence*]
Type=Assertspecial
Triggerall=StateNo!=[120,160]
Trigger1=Var(59)=1
flag=noairguard
flag2=nocrouchguard
flag3=nostandguard

[state -1, Recover]
type=changestate
value=5200
trigger1=Var(59)=1 && (stateno=5050||stateno=5071)
trigger1=vel y > 0
trigger1=pos y>=const(movement.air.gethit.groundrecover.ground.threshold)
trigger1=gethitvar(fall.recover) && Random<(Var(58)*2+(AiLevel>=3)*30)

[state -1, Recover]
type=changestate
value=5210
trigger1= Var(59)=1 && stateno=5050
trigger1= vel y>const(movement.air.gethit.airrecover.threshold)
trigger1= pos y<const(movement.air.gethit.groundrecover.ground.threshold)
trigger1= CanRecover && Random<(Var(58)*2+(AiLevel>=3)*30)

[State -1, AI Jump]
Type=Changestate
Triggerall=Var(59)=1 && Statetype=S && !Inguarddist
Trigger1=ctrl && random<var(58)*1.0 && enemynear,statetype=A && p2bodydist x<160 && enemynear,hitdefattr=SC,AT
value=40

[State -1, AI hyper kamehameha]
Type=Changestate
value=3000
Triggerall=Var(59)=1 && Statetype=S && Abs(P2Bodydist X)>=110 && (P2Dist y=[-55,5]) && !InGuardDist
Triggerall=power >= 3000 && Random<var(58)*0.4 && P2StateType != L
trigger1 = var(1)

[State -1, AI flame kamehameha]
Type=Changestate
value=3400
Triggerall=Var(59)=1 && Statetype=S && Abs(P2Bodydist X)>=105 && (P2Dist y=[-55,5]) && !InGuardDist
Triggerall=power >= 2000 && Random<var(58)*0.4 && P2StateType != L
trigger1 = var(1)

[State -1, AI Machine-Ki-Gun]
type = ChangeState
value = 3300
Triggerall=Var(59)=1 && Statetype=S && Abs(P2Bodydist X)>=100 && (P2Dist y=[-50,0]) && !InGuardDist
Triggerall=power >= 1000 && Random<var(58)*0.4 && P2StateType != L
;trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 201 || stateno = 211) && movecontact
trigger3 = (stateno = 230 || stateno = 240) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 430) && movecontact

[State -1, AI Fire Balls]
type = ChangeState
value = 2000
Triggerall=Var(59)=1 && Statetype=S && Abs(P2Bodydist X)>=50 && (P2Dist y=[-50,0]) && !InGuardDist
Triggerall=power >= 150 && Random<var(58)*0.4 && P2StateType != L
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 200 || stateno = 201 || stateno = 211) && movecontact
trigger3 = (stateno = 230 || stateno = 240) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 430) && movecontact


[State -1, AI Zanzouken]
type = ChangeState
Triggerall=Var(59)=1 && Statetype=S && Abs(P2Bodydist X)>=60 && (P2Dist y=[-50,0]) && !InGuardDist
Triggerall=power >= 250 && Random<var(58)*0.4 && P2StateType != L
trigger1 = ctrl &&  stateno !=[711,712]
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440 || stateno = 450) && movecontact
trigger5 = stateno = [130,155]
trigger6 = stateno = 710
value = ifelse(statetype = A,709,710)
ctrl = 0

[State -1, AI Taunt]
type = ChangeState
value = 192
Triggerall= Var(59)=1 && !InGuardDist
Triggerall= Random<var(58)*0.4 && P2StateType = L
trigger1 = ctrl
trigger1 = statetype != A
trigger1 = ctrl

[State -1, AI Run Fwd]
Type=Changestate
value=100
Triggerall=Var(59)=1 && Statetype=S && abs(P2Bodydist X)>= 50 &&P2Movetype!=A && !InGuardDist && random<var(58)*0.5
triggerall=(stateno!=[100,101])&&(prevstateno!=[100,101])
Trigger1=Ctrl

;[State -1, AI Run Back]
;type = ChangeState
;value = 105
;Trigger1=Var(59)=1 && Statetype=S && random<var(58)*0.2 && Ctrl && Abs(P2Bodydist X)<= 50
;Trigger2=Var(59)=1 && Abs(P2Bodydist X)<= 70 && P2MoveType = A  && random<var(58)*0.5 && Ctrl

[State -1, AI Superjump]
type = changestate
Triggerall=Var(59)=1 && Statetype!=A && Abs(P2Bodydist X)>=0 && (P2Dist y=[-160,-60]) && !InGuardDist
Triggerall=Random<var(58)*0.4
trigger1 = ctrl
value = 55

[State -1, AI SuperjumpF]
type=changestate
Triggerall=Var(59)=1 && Statetype!=A && Abs(P2Bodydist X)>=70 && (P2Dist y=[-160,-60]) && !InGuardDist
Triggerall=Random<var(58)*0.4
trigger1 = ctrl
value = 57

[State -1, AI SuperjumpB]
type = changestate
Triggerall=Var(59)=1 && Statetype!=A && Abs(P2Bodydist X)<=0 && (P2Dist y=[-160,-60]) && !InGuardDist
Triggerall=Random<var(58)*0.4
trigger1 = ctrl
value = 59

[State -1, AI Charge]
type = ChangeState
value = 700
Triggerall=Var(59)=1 && Statetype!=A && Abs(P2Bodydist X)<=100 && (P2Dist y=[-160,-60]) && !InGuardDist
Triggerall=Random<var(58)*0.6 && power < 3000
trigger1 = ctrl

[State -1, AI Stand Light Punch]
type = ChangeState
value = 200
Triggerall=Var(59)=1 && Abs(P2Bodydist X)<=10 && (P2Dist y=[-20,5])
Triggerall=!InGuardDist && P2StateType != L  && Random<var(58)*1.0
Trigger1= Statetype=S && Ctrl

[State -1, AI Stand Strong Punch]
type = ChangeState
value = 210
Triggerall=Var(59)=1 && Abs(P2Bodydist X)<=10 && (P2Dist y=[-20,5])
Triggerall=!InGuardDist && P2StateType != L  && Random<var(58)*1.0
Trigger1= Statetype=S && Ctrl
trigger2 = (stateno = 200) && (Movecontact)

[State -1, AI Run Down kick]
type = changestate
Triggerall=Var(59)=1 && Abs(P2Bodydist X)>=50 && (P2Dist y=[-20,5]) && stateno = 100 && pos y = 0
Triggerall=!InGuardDist && P2StateType != L  && Random<var(58)*1.0
Trigger1= Statetype=S && Ctrl
value = 1201

[State -1, AI combo run down kick 1]
type = ChangeState
value = 229
Triggerall=Var(59)=1 && Abs(P2Bodydist X)>=50 && (P2Dist y=[-20,5]) && stateno =  1201
Triggerall=!InGuardDist && P2StateType != L  && Random<var(58)*1.0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 1201) && (Movecontact)

[State -1, AI combo run down kick 2]
type = ChangeState
value = 2290
Triggerall=Var(59)=1 && Abs(P2Bodydist X)>=50 && (P2Dist y=[-20,5]) && stateno =  229
Triggerall=!InGuardDist && P2StateType != L  && Random<var(58)*1.0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 229) && (Movecontact)
trigger2 = movehit && var(16) < 5 && Time = [12,30]

[State -1, AI combo run down kick big finish]
type = ChangeState
value = 3900
Triggerall=Var(59)=1 && Abs(P2Bodydist X)>=50 && (P2Dist y=[-20,5]) && stateno =  2290
Triggerall=!InGuardDist && P2StateType != L  && Random<var(58)*1.0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 2290) && (Movecontact)
trigger2 = movehit && var(16) < 5 && Time = [12,30]

[State -1, AI Teleport Back Strong Kick]
type = ChangeState
value = 252
Triggerall=Var(59)=1 && Random<var(58)*1.0
trigger1 = stateno = 100 && pos y = 0 && p2bodydist x < 60

[State -1, AI COMBO FLY PUNCH A]
type = ChangeState
value = 1110
Triggerall=Var(59)=1 && Abs(P2Bodydist X)>=50 && (P2Dist y=[-20,5])
Triggerall=!InGuardDist && P2StateType != L  && Random<var(58)*1.0
trigger1 = stateno = 252 && movehit
trigger2 = stateno = [1110,1114]
trigger2 = movehit && var(16) < 5 && Time = [12,30]

[State -1, AI Stand Light Kick]
type = ChangeState
value = 230
Triggerall=Var(59)=1 && Abs(P2Bodydist X)<=10 && (P2Dist y=[-20,5])
Triggerall=!InGuardDist && P2StateType != L  && Random<var(58)*1.0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (Movecontact)
trigger3 = (stateno = 210) && (Movecontact)

[State -1, AI Standing Strong Kick]
type = ChangeState
value = 240
Triggerall=Var(59)=1 && Abs(P2Bodydist X)<=10 && (P2Dist y=[-20,5])
Triggerall=!InGuardDist && P2StateType != L  && Random<var(58)*1.0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 230) && (Movecontact)

[State -1, AI combo kick 1]
type = ChangeState
value = 502
Triggerall=Var(59)=1 && Abs(P2Bodydist X)>=50 && (P2Dist y=[-20,5])
Triggerall=!InGuardDist && P2StateType != L  && Random<var(58)*1.0
triggerall = stateno = 230
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 230) && (Movecontact)

[State -1, AI combo kick 3]
type = ChangeState
value = 501
Triggerall=Var(59)=1 && Abs(P2Bodydist X)>=50 && (P2Dist y=[-20,5])
Triggerall=!InGuardDist && P2StateType != L  && Random<var(58)*1.0
triggerall = stateno = 502
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 502) && (Movecontact)

[State -1, AI combo kick 4]
type = ChangeState
value = 226
Triggerall=Var(59)=1 && Abs(P2Bodydist X)>=50 && (P2Dist y=[-20,5])
Triggerall=!InGuardDist && P2StateType != L  && Random<var(58)*1.0
triggerall = stateno = 501
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 501) && (Movecontact)

[State -1, AI combo kick 5]
type = ChangeState
value = 227
Triggerall=Var(59)=1 && Abs(P2Bodydist X)>=50 && (P2Dist y=[-20,5])
Triggerall=!InGuardDist && P2StateType != L  && Random<var(58)*1.0
triggerall = stateno = 226
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 226) && (Movecontact)


[State -1, AI Crouching Light Punch]
type = ChangeState
value = 400
Triggerall=Var(59)=1 && Abs(P2Bodydist X)<=10 && (P2Dist y=[-20,5])
Triggerall=!InGuardDist && P2StateType != L  && Random<var(58)*1.0
trigger1 = statetype = C
trigger1 = ctrl

[State -1, AI Crouching Strong Punch]
type = ChangeState
value = 410
Triggerall=Var(59)=1 && Abs(P2Bodydist X)<=10 && (P2Dist y=[-20,5])
Triggerall=!InGuardDist && P2StateType != L  && Random<var(58)*1.0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && (Movecontact)

[State -1, AI Crouching Light Kick]
type = ChangeState
value = 430
Triggerall=Var(59)=1 && Abs(P2Bodydist X)<=10 && (P2Dist y=[-20,5])
Triggerall=!InGuardDist && P2StateType != L  && Random<var(58)*1.0
trigger1 = statetype = C
trigger1 = ctrl

[State -1, AI Crouching Strong Kick]
type = ChangeState
value = 440
Triggerall=Var(59)=1 && Abs(P2Bodydist X)<=10 && (P2Dist y=[-20,5])
Triggerall=!InGuardDist && P2StateType != L  && Random<var(58)*1.0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 430) && (Movecontact)

[State -1, AI Jump Light Punch]
type = ChangeState
value = 600
Triggerall=Var(59)=1 && Abs(P2Bodydist X)<=10 && (P2Dist y=[-25,25]) && !InGuardDist
Triggerall=Random<var(58)*1.4 && P2StateType != L
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7
trigger3 = stateno = 1350 ;Air blocking
trigger4 = (stateno = 610) && (Movecontact)
trigger5 = (stateno = 630) && (Movecontact)
trigger6 = (stateno = 640) && (Movecontact)
trigger7 = (stateno = 1110) && (Movecontact)

[State -1, AI Jump Strong Punch]
type = ChangeState
value = 610
Triggerall=Var(59)=1 && Abs(P2Bodydist X)<=10 && (P2Dist y=[-25,25]) && !InGuardDist
Triggerall=Random<var(58)*1.4 && P2StateType != L
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
trigger11 = (stateno = 630) && (Movecontact)
trigger12 = (stateno = 640) && (Movecontact)
trigger13 = (stateno = 600) && (Movecontact)

[State -1, AI Jump Light Kick]
type = ChangeState
value = 630
Triggerall=Var(59)=1 && Abs(P2Bodydist X)<=10 && (P2Dist y=[-25,25]) && !InGuardDist
Triggerall=Random<var(58)*1.4 && P2StateType != L
trigger1 = statetype = A
trigger1 = ctrl
trigger3 = stateno = 1350 ;Air blocking
trigger4 = (stateno = 600) && (Movecontact)
trigger5 = (stateno = 610) && (Movecontact)
trigger6 = (stateno = 640) && (Movecontact)

[State -1, AI Jump Strong Kick]
type = ChangeState
value = 640
Triggerall=Var(59)=1 && Abs(P2Bodydist X)<=10 && (P2Dist y=[-25,25]) && !InGuardDist
Triggerall=Random<var(58)*1.4 && P2StateType != L
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 || stateno= 610
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
trigger4 = (stateno = 600) && (Movecontact)
trigger5 = (stateno = 610) && (Movecontact)
trigger6 = (stateno = 630) && (Movecontact)

[State -1, AI AirRunBack]
type = ChangeState
value = 107
triggerall = var(4) = 0
Triggerall=Var(59)=1 && Abs(P2Bodydist X)<=20 && (P2Dist y=[-25,25]) && !InGuardDist
Triggerall=Random<var(58)*1.4 && P2StateType != L
trigger1 = statetype = A && ctrl && stateno != 105
trigger2 = (stateno = [600,650]) && time > 25

;                                AI END
;===============================================================================
;===============================================================================
;===============================================================================


;===============================================================================
;-------------------------------------------------------------------------------
;Smash Kung Fu Upper (uses one super bar)
;スマッシュ・カンフー・ウッパー（ゲージレベル１）
;[State -1, Smash Kung Fu Upper]
;type = ChangeState
;value = 3050
;triggerall = command = "SmashKFUpper"
;triggerall = power >= 1000
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2 = hitdefattr = SC, NA, SA, HA
;trigger2 = stateno != [3050,3100)
;trigger2 = movecontact

;===============================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
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
;Hyper kamehameha
[State -1, hyper kamehameha]
type = ChangeState
value = 3000
triggerall = command = "hyper kamehameha"
triggerall = power >= 3000
trigger1 = var(1) ;Use combo condition (above)

;-------------------------------------------------------------------------------
;Flame kamehameha
[State -1, flame kamehameha]
type = ChangeState
value = 3400
triggerall = command = "flame kamehameha"
triggerall = power >= 2000
trigger1 = var(1) ;Use combo condition (above)

;-------------------------------------------------------------------------------
;Machine-Ki-Gun
[State -1,Machine-Ki-Gun]
type = ChangeState
value = 3300
triggerall = power >= 1000
triggerall = command = "Machine-Ki-Gun"
triggerall = command != "holddown"
;trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 201 || stateno = 211) && movecontact
trigger3 = (stateno = 230 || stateno = 240) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 430) && movecontact

;-------------------------------------------------------------------------------
;Fire Balls
[State -1, Fire Balls]
type = ChangeState
value = 2000
triggerall = power >= 150
triggerall = command = "c"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 200 || stateno = 201 || stateno = 211) && movecontact
trigger3 = (stateno = 230 || stateno = 240) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 430) && movecontact

;-------------------------------------------------------------------------------
[State -1, Zanzouken]
type = ChangeState
triggerall = command = "z" && power >=250
trigger1 = ctrl &&  stateno !=[711,712]
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440 || stateno = 450) && movecontact
trigger5 = stateno = [130,155]
trigger6 = stateno = 710
value = ifelse(statetype = A,709,710)
ctrl = 0

;-------------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 192
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;-------------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;-------------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;-------------------------------------------------------------------------------
;Super Jump
[State -1, Superjump]
type = changestate
triggerall = command = "superjump" && statetype!= A
trigger1 = ctrl = 1
value = 55

[State -1, SuperjumpF]
type=changestate
triggerall = command = "superjumpF" && statetype != A
trigger1 = ctrl = 1
value = 57

[State -1,SuperjumpB]
type = changestate
triggerall = command = "superjumpB" && statetype != A
trigger1 = ctrl = 1
value = 59

;-------------------------------------------------------------------------------
;Ki Charge
[State -1, Charge]
type = ChangeState
value = 700
triggerall = statetype = s
triggerall = power < 3000
triggerall = command = "holdz"
triggerall = command = "holdc"
trigger1 = ctrl = 1

;-------------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = Command = "x"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 400) && (Movecontact)
trigger3 = (stateno = 210) && (Movecontact)
trigger4 = (stateno = 220) && (Movecontact)
trigger5 = (stateno = 230) && (Movecontact)
trigger6 = (stateno = 240) && (Movecontact)
trigger7 = (stateno = 410) && (Movecontact)
trigger8 = (stateno = 430) && (Movecontact)
trigger9 = (stateno = 500) && (Movecontact)
trigger10 = (stateno = 501) && (Movecontact)
trigger11 = (stateno = 502) && (Movecontact)
trigger12 = (stateno = 3196) && (Movecontact)
trigger13 = (stateno = 897) && (Movecontact)

[State -1, combo punch 1]
type = ChangeState
value = 501
triggerall = command = "a"
triggerall = stateno = 200
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (Movecontact)
trigger3 = (stateno = 210) && (Movecontact)
trigger4 = (stateno = 220) && (Movecontact)
trigger5 = (stateno = 230) && (Movecontact)
trigger6 = (stateno = 240) && (Movecontact)
trigger7 = (stateno = 400) && (Movecontact)
trigger8 = (stateno = 410) && (Movecontact)
trigger9 = (stateno = 430) && (Movecontact)
trigger10 = (stateno = 500) && (Movecontact)
trigger11 = (stateno = 501) && (Movecontact)
trigger12 = (stateno = 502) && (Movecontact)
trigger13 = (stateno = 3196) && (Movecontact)

[State -1, combo punch 2]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = stateno = 501
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (Movecontact)
trigger3 = (stateno = 220) && (Movecontact)
trigger4 = (stateno = 230) && (Movecontact)
trigger5 = (stateno = 240) && (Movecontact)
trigger6 = (stateno = 400) && (Movecontact)
trigger7 = (stateno = 410) && (Movecontact)
trigger8 = (stateno = 430) && (Movecontact)
trigger9 = (stateno = 500) && (Movecontact)
trigger10 = (stateno = 501) && (Movecontact)
trigger11 = (stateno = 502) && (Movecontact)
trigger12 = (stateno = 3196) && (Movecontact)
trigger13 = (stateno = 897) && (Movecontact)

[State -1, combo punch 3]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = stateno = 210
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (Movecontact)
trigger3 = (stateno = 210) && (Movecontact)
trigger4 = (stateno = 220) && (Movecontact)
trigger5 = (stateno = 230) && (Movecontact)
trigger6 = (stateno = 240) && (Movecontact)
trigger7 = (stateno = 400) && (Movecontact)
trigger8 = (stateno = 410) && (Movecontact)
trigger9 = (stateno = 430) && (Movecontact)
trigger10 = (stateno = 500) && (Movecontact)
trigger11 = (stateno = 501) && (Movecontact)
trigger12 = (stateno = 502) && (Movecontact)
trigger13 = (stateno = 3196) && (Movecontact)
trigger14 = (stateno = 897) && (Movecontact)

[State -1, combo punch 4]
type = ChangeState
value = 3196
triggerall = command = "z"
triggerall = stateno = 440
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (Movecontact)
trigger3 = (stateno = 210) && (Movecontact)
trigger4 = (stateno = 220) && (Movecontact)
trigger5 = (stateno = 230) && (Movecontact)
trigger6 = (stateno = 240) && (Movecontact)
trigger7 = (stateno = 400) && (Movecontact)
trigger8 = (stateno = 410) && (Movecontact)
trigger9 = (stateno = 430) && (Movecontact)
trigger10 = (stateno = 500) && (Movecontact)
trigger11 = (stateno = 501) && (Movecontact)
trigger12 = (stateno = 502) && (Movecontact)
trigger13 = (stateno = 897) && (Movecontact)

[State -1, combo punch 4]
type = ChangeState
value = 897
triggerall = command = "c"
triggerall = stateno = 3196
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (Movecontact)
trigger3 = (stateno = 210) && (Movecontact)
trigger4 = (stateno = 220) && (Movecontact)
trigger5 = (stateno = 230) && (Movecontact)
trigger6 = (stateno = 240) && (Movecontact)
trigger7 = (stateno = 400) && (Movecontact)
trigger8 = (stateno = 410) && (Movecontact)
trigger9 = (stateno = 430) && (Movecontact)
trigger10 = (stateno = 500) && (Movecontact)
trigger11 = (stateno = 501) && (Movecontact)
trigger12 = (stateno = 502) && (Movecontact)
trigger13 = (stateno = 3196) && (Movecontact)

;-------------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (Movecontact)
trigger3 = (stateno = 230) && (Movecontact)
trigger4 = (stateno = 400) && (Movecontact)
trigger5 = (stateno = 430) && (Movecontact)
trigger6 = (stateno = 220) && (Movecontact)
trigger7 = (stateno = 240) && (Movecontact)
trigger8 = (stateno = 410) && (Movecontact)
trigger9 = (stateno = 500) && (Movecontact)
trigger10 = (stateno = 501) && (Movecontact)
trigger11 = (stateno = 502) && (Movecontact)
trigger12 = (stateno = 3196) && (Movecontact)
trigger13 = (stateno = 897) && (Movecontact)

;-------------------------------------------------------------------------------
;Run Down Kick
[State -1, Run Down kick]
type = changestate
triggerall = command = "b" && stateno = 100 && pos y = 0
trigger1 = ctrl && statetype = S
value = 1201

[State -1, combo run down kick 1]
type = ChangeState
value = 229
triggerall = command = "b"
triggerall = stateno = 1201
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 1201) && (Movecontact)

[State -1, combo run down kick 2]
type = ChangeState
value = 2290
triggerall = command = "b"
triggerall = stateno = 229
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 229) && (Movecontact)
trigger2 = movehit && var(16) < 5 && Time = [12,30]

[State -1, combo run down kick big finish]
type = ChangeState
value = 3900
triggerall = command = "b"
triggerall = stateno = 2290
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 2290) && (Movecontact)
trigger2 = movehit && var(16) < 5 && Time = [12,30]
;-------------------------------------------------------------------------------
;Teleport back strong kick
[State -1, Teleport Back Strong Kick]
type = ChangeState
value = 252
trigger1 = command = "a" && command = "holdfwd"
trigger1 = stateno = 100 && pos y = 0 && p2bodydist x < 60

[State -1, COMBO FLY PUNCH A]
type = ChangeState
value = 1110
triggerall = command = "a"
trigger1 = stateno = 252 && movehit
trigger2 = stateno = [1110,1114]
trigger2 = movehit && var(16) < 5 && Time = [12,30]

;-------------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (Movecontact)
trigger3 = (stateno = 210) && (Movecontact)
trigger4 = (stateno = 220) && (Movecontact)
trigger5 = (stateno = 240) && (Movecontact)
trigger6 = (stateno = 400) && (Movecontact)
trigger7 = (stateno = 410) && (Movecontact)
trigger8 = (stateno = 430) && (Movecontact)
trigger9 = (stateno = 500) && (Movecontact)
trigger10 = (stateno = 3196) && (Movecontact)
trigger11 = (stateno = 897) && (Movecontact)

;-------------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (Movecontact)
trigger3 = (stateno = 210) && (Movecontact)
trigger4 = (stateno = 220) && (Movecontact)
trigger5 = (stateno = 230) && (Movecontact)
trigger6 = (stateno = 400) && (Movecontact)
trigger7 = (stateno = 410) && (Movecontact)
trigger8 = (stateno = 430) && (Movecontact)
trigger9 = (stateno = 500) && (Movecontact)
trigger10 = (stateno = 3196) && (Movecontact)
trigger11 = (stateno = 897) && (Movecontact)

[State -1, combo kick 1]
type = ChangeState
value = 502
triggerall = command = "a"
triggerall = stateno = 230
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (Movecontact)
trigger3 = (stateno = 210) && (Movecontact)
trigger4 = (stateno = 220) && (Movecontact)
trigger5 = (stateno = 230) && (Movecontact)
trigger6 = (stateno = 240) && (Movecontact)
trigger7 = (stateno = 400) && (Movecontact)
trigger8 = (stateno = 410) && (Movecontact)
trigger9 = (stateno = 430) && (Movecontact)
trigger10 = (stateno = 500) && (Movecontact)
trigger11 = (stateno = 502) && (Movecontact)
trigger12 = (stateno = 3196) && (Movecontact)
trigger13 = (stateno = 897) && (Movecontact)

[State -1, combo kick 3]
type = ChangeState
value = 501
triggerall = command = "a"
triggerall = stateno = 502
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 502) && (Movecontact)

[State -1, combo kick 4]
type = ChangeState
value = 226
triggerall = command = "b"
triggerall = stateno = 501
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 501) && (Movecontact)

[State -1, combo kick 5]
type = ChangeState
value = 227
triggerall = command = "x"
triggerall = stateno = 226
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 226) && (Movecontact)

;-------------------------------------------------------------------------------
;Taunt
;[State -1, Taunt]
;type = ChangeState
;value = 195
;triggerall = command = "start"
;trigger1 = statetype != A
;trigger1 = ctrl

;-------------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && (Movecontact)
trigger3 = (stateno = 210) && (Movecontact)
trigger4 = (stateno = 220) && (Movecontact)
trigger5 = (stateno = 230) && (Movecontact)
trigger6 = (stateno = 240) && (Movecontact)
trigger7 = (stateno = 410) && (Movecontact)
trigger8 = (stateno = 430) && (Movecontact)
trigger9 = (stateno = 500) && (Movecontact)
trigger10 = (stateno = 501) && (Movecontact)
trigger11 = (stateno = 502) && (Movecontact)
trigger12 = (stateno = 3196) && (Movecontact)
trigger13 = (stateno = 897) && (Movecontact)

;-------------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && (Movecontact)
trigger3 = (stateno = 210) && (Movecontact)
trigger4 = (stateno = 220) && (Movecontact)
trigger5 = (stateno = 230) && (Movecontact)
trigger6 = (stateno = 240) && (Movecontact)
trigger7 = (stateno = 400) && (Movecontact)
trigger8 = (stateno = 430) && (Movecontact)
trigger9 = (stateno = 500) && (Movecontact)
trigger10 = (stateno = 501) && (Movecontact)
trigger11 = (stateno = 502) && (Movecontact)
trigger12 = (stateno = 3196) && (Movecontact)
trigger13 = (stateno = 897) && (Movecontact)

;-------------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && (Movecontact)
trigger3 = (stateno = 210) && (Movecontact)
trigger4 = (stateno = 220) && (Movecontact)
trigger5 = (stateno = 230) && (Movecontact)
trigger6 = (stateno = 240) && (Movecontact)
trigger7 = (stateno = 400) && (Movecontact)
trigger8 = (stateno = 410) && (Movecontact)
trigger9 = (stateno = 500) && (Movecontact)
trigger10 = (stateno = 501) && (Movecontact)
trigger11 = (stateno = 502) && (Movecontact)
trigger12 = (stateno = 3196) && (Movecontact)
trigger13 = (stateno = 897) && (Movecontact)

;-------------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && (Movecontact)
trigger3 = (stateno = 210) && (Movecontact)
trigger4 = (stateno = 220) && (Movecontact)
trigger5 = (stateno = 230) && (Movecontact)
trigger6 = (stateno = 240) && (Movecontact)
trigger7 = (stateno = 400) && (Movecontact)
trigger8 = (stateno = 410) && (Movecontact)
trigger9 = (stateno = 430) && (Movecontact)
trigger10 = (stateno = 500) && (Movecontact)
trigger11 = (stateno = 501) && (Movecontact)
trigger12 = (stateno = 502) && (Movecontact)
trigger13 = (stateno = 3196) && (Movecontact)
trigger14 = (stateno = 897) && (Movecontact)

;-------------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7
trigger3 = stateno = 1350 ;Air blocking
trigger4 = (stateno = 610) && (Movecontact)
trigger5 = (stateno = 630) && (Movecontact)
trigger6 = (stateno = 640) && (Movecontact)
trigger7 = (stateno = 1110) && (Movecontact)

;-------------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
trigger11 = (stateno = 630) && (Movecontact)
trigger12 = (stateno = 640) && (Movecontact)
trigger13 = (stateno = 600) && (Movecontact)

;-------------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger3 = stateno = 1350 ;Air blocking
trigger4 = (stateno = 600) && (Movecontact)
trigger5 = (stateno = 610) && (Movecontact)
trigger6 = (stateno = 640) && (Movecontact)

;-------------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 || stateno= 610
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
trigger4 = (stateno = 600) && (Movecontact)
trigger5 = (stateno = 610) && (Movecontact)
trigger6 = (stateno = 630) && (Movecontact)
;-------------------------------------------------------------------------------
; Air Run_Fwd
[State -1, AirRunFwd]
type = ChangeState
value = 102
triggerall = var(4) = 0
trigger1 = command = "FF" && statetype = A && ctrl && (stateno != 100 || stateno != 102)
trigger2 = command = "FF" && (stateno = [600,650]) && time > 25

; Air Run_Back
[State -1, AirRunBack]
type = ChangeState
value = 107
triggerall = var(4) = 0
trigger1 = command = "BB" && statetype = A && ctrl && stateno != 105
trigger2 = command = "BB" && (stateno = [600,650]) && time > 25
