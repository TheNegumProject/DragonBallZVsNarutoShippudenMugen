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
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
[command]
name = "SennenGoroshi"
command = ~D,B,y
time = 12

command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;

[Command]
name = "RASENSHURIKEN"
command = ~D, DF, F, z
time = 20

[Command]
name = "RYUJINKI_RASENGAN"
command = ~D, DB, B, z
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "blocking"
command = $F,x
time = 3

[Command]
name = "blocking" ;Same name as above (buttons in opposite order)
command = x,$F
time = 3

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
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_ab"
command = ~D, DF, F, a+b

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCF_c"
command = ~D, DF, F, c

[Command]
name = "QCB_c"
command = ~D, DB, B, c

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

[Command]
name = "up"
command = U
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



[State -1, AI ON]  ; Turn the AI on when
Type = VarSet
TriggerAll = Var(59) < 1 ; it is not on yet and
TriggerAll = RoundState=2 ; the fight has started and is not over yet and
Trigger1 = AILevel>0 ; the computer is playing the character
v = 59
value= 1 ; value of 1 will mean the AI is on
Ignorehitpause=1

[State -1, AI OFF] ; Turn the AI off when
Type=VarSet
Trigger1=var(59)>0  ; it is on and
Trigger1=RoundState!=2  ; the round is not started yet or is already over
Trigger2=!IsHelper  ; OR if we are a player, but
Trigger2=AILevel=0  ; the computer is not in control
v=59
value=0 ; value of 0 will mean the AI is off. values other than 0 and 1 are not used in this example, we have only one AI mode, the normal one.
Ignorehitpause=1

[State -1, AI Difficulty]
Type=VarSet
Trigger1=1
var(50)=(AILevel=1)*3+(AILevel=2)*7+(AILevel=3)*16+(AILevel=4)*30+(AILevel=5)*58+(AILevel=6)*90+ (AILevel=7)*150+(AILevel=8)*300

[State -1, Guard AI]
Type=Changestate
Triggerall=Inguarddist ; Guard when in guard distance
Triggerall=var(59) ; and the AI is on
Triggerall=ctrl ; and we have control
Trigger1 = random< (var(50)*2+(AiLevel>=3)*30) ; chance is a bit higher than for attacking, but not too much. There still is a chance for missing a guard even on difficulty level 7. Only the maximum level is guarding perfectly.
value=120

[State -1, Disable Control Guard for AI] ; The engine will still guard by through pressing the back button, we need to disable that.
Type=Assertspecial
Triggerall=StateNo!=[120,160]
Trigger1=var(59)>0
flag=noairguard
flag2=nocrouchguard
flag3=nostandguard

[state -1, Jump AI]
Type=changestate
Trigger1 = var(59)
Trigger1 = ctrl && P2BodyDist Y < -30 && (P2BodyDist X = [0,30]) && statetype!=A && pos y = 0
value=40

;--------------------------------------------------------------------------
;Rasenshuriken
[State -1, Rasenshuriken]
type = ChangeState
value = 1600
triggerall = statetype!=A && (ctrl || movecontact) && power>=3000 && stateno!=[1000,1701]
trigger1 = !var(59) && command="RASENSHURIKEN"
trigger2 = var(59) && random<var(50)*1.1 && P2BodyDist X>=50

;--------------------------------------------------------------------------
;Kyuubi Transformation 4 Tails
[State -1, Kyuubi Transformation 4 Tails]
type = ChangeState
value = 1500
triggerall = statetype!=A && (ctrl || movecontact) && power>=3000 && stateno!=[1000,1701]
trigger1 = !var(59) && command="QCB_c"
trigger2 = var(59) && random<var(50)*1.1 && P2BodyDist X>=50

;--------------------------------------------------------------------------
;Kyuubi Transformation
[State -1, Kyuubi Transformation]
type = ChangeState
value = 1300
triggerall = statetype!=A && (ctrl || movecontact) && power>=2000 && stateno!=[1000,1701]
trigger1 = !var(59) && command="QCB_b"
trigger2 = var(59) && random<var(50)*1.1

;--------------------------------------------------------------------------
;Oodama Rasengan
[State -1, Oodama Rasengan]
type = ChangeState
value = 1200
triggerall = statetype!=A && (ctrl || movecontact) && power>=2000 && stateno!=[1000,1701]
trigger1 = !var(59) && command="QCF_b"
trigger2 = var(59) && random<var(50)*1.1 && P2BodyDist X>50 && P2StateType!=L

;--------------------------------------------------------------------------
;Ryujinki Kunai Slash
[State -1, Ryujinki Kunai Slash]
type = ChangeState
value = 1100
triggerall = statetype!=A && (ctrl || movecontact) && power>=1000 && stateno!=[1000,1701]
trigger1 = !var(59) && command="QCB_a"
trigger2 = var(59) && random<var(50)*1.1 && (P2BodyDist X = [0,100]) && P2StateType!=L && abs(P2BodyDist Y)<10

;--------------------------------------------------------------------------
;Rasengan
[State -1, Rasengan]
type = ChangeState
value = 1000
triggerall = statetype!=A && (ctrl || movecontact) && power>=1000 && stateno!=[1000,1701]
trigger1 = !var(59) && command="QCF_a"
trigger2 = var(59) && random<var(50)*1.1 && P2BodyDist X>=30 && abs(P2BodyDist Y)<10 && P2StateType!=L

;--------------------------------------------------------------------------
;Kage Bunshin No Jutsu
[State -1, Kage Bunshin No Jutsu]
type = ChangeState
value = 1400
triggerall = statetype!=A && (ctrl || movecontact) && power>=1000 && !NumHelper(1401) && stateno!=[1000,1701]
trigger1 = !var(59) && command="QCF_c"
trigger2 = var(59) && random<var(50)*1.1 && P2MoveType!=A && P2StateType=L

;--------------------------------------------------------------------------
;Forward Dash
[State -1, Forward Dash]
type = ChangeState
value = 100
triggerall = statetype!=A && (ctrl || movecontact) && stateno!=[1000,1701]
trigger1 = !var(59) && command="FF"
trigger2 = var(59) && random<var(50)*1.1 && P2BodyDist X > 100 && P2MoveType!=A

;----------------------------------------------------------------------
;Air Dash Forward
[State -1, Air Dash Forward]
type = ChangeState
value = 2100
triggerall = statetype=A && time>10 && (ctrl || movecontact) && stateno!=[1000,1701]
trigger1 = !var(59) && command="FF"
trigger2 = var(59) && random<var(50)*1.1 && P2BodyDist X > 100 && P2MoveType!=A && abs(p2BodyDist Y)<10

;---------------------------------------------------------------------------
;Backward Dash
[State -1, Backward Dash]
type = ChangeState
value = 105
triggerall = statetype!=A && (ctrl || movecontact) && stateno!=[1000,1701]
trigger1 = !var(59) && command="BB"
trigger2 = var(59) && random<var(50)*1.1 && P2BodyDist X < 50 && (P2MoveType=A || P2StateType=L)

;----------------------------------------------------------------------
;Air Dash Backward
[State -1, Air Dash Backward]
type = ChangeState
value = 2200
triggerall = statetype=A && time>10 && (ctrl || movecontact) && stateno!=[1000,1701]
trigger1 = !var(59) && command="BB"
trigger2 = var(59) && random<var(50)*1.1 && P2BodyDist X < 50 && P2MoveType=A

;--------------------------------------------------------------------------
;Jump Up After Hit
[State -1, Jump Up After Hit]
type = ChangeState
value = 2000
triggerall = NumHelper(401)
triggerall = statetype!=A && helper(401),movecontact && helper(401),HitPauseTime=0 && stateno=400 && stateno!=[1000,1701]
trigger1 = !var(59) && (command="up" || command="holdup")
trigger2 = var(59) && random<var(50)*1.1 && (P2BodyDist X=[0,40]) && P2BodyDist Y < -30

;--------------------------------------------------------------------------
;Kage Bunshin Uppercut
[State -1, Crouch Uppercut]
type = ChangeState
value = 400
triggerall = statetype!=A && (ctrl || (movecontact && (stateno=[200,240]))) && P2StateType!=A && stateno!=[1000,1701]
trigger1 = !var(59) && command="holddown" && (command="a" || command="b")
trigger2 = var(59) && random<var(50)*1.1 && (P2BodyDist X=[0,35]) && P2StateType!=L && abs(P2BodyDist Y)<10

;--------------------------------------------------------------------------
;Clone Counter Uppercut
[State -1, Clone Counter Uppercut]
type = ChangeState
value = 410
triggerall = statetype!=A && (ctrl || movecontact) && P2StateType!=A && enemynear(0),pos y=0 && stateno!=[1000,1701]
trigger1 = !var(59) && command="holddown" && command="c"
trigger2 = var(59) && random<var(50)*1.1 && P2MoveType=A && (P2BodyDist X=[0,35])

;--------------------------------------------------------------------------
;Stand Kick
[State -1, Stand Kick]
type = ChangeState
value = 220
triggerall = statetype!=A && movecontact && stateno=210 && stateno!=[1000,1701]
trigger1 = !var(59) && command="a"
trigger2 = var(59) && random<var(50)*1.1

;--------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = statetype!=A && movecontact && stateno=200 && stateno!=[1000,1701]
trigger1 = !var(59) && command="a"
trigger2 = var(59) && random<var(50)*1.1

;--------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = statetype!=A && (ctrl || (movecontact && (stateno=[230,240]))) && stateno!=[1000,1701]
trigger1 = !var(59) && command="a"
trigger2 = var(59) && random<var(50)*1.1 && (P2BodyDist X=[0,30]) && abs(P2BodyDist Y)<10 && P2StateType!=A

;--------------------------------------------------------------------------
;Stand Heavy Punch 2
[State -1, Stand Heavy Punch 2]
type = ChangeState
value = 240
triggerall = NumHelper(236)
triggerall = statetype!=A && helper(236),movecontact && stateno=235 && AnimElemTime(4)>=20 && stateno!=[1000,1701]
trigger1 = !var(59) && command="b"
trigger2 = var(59) && random<var(50)*1.1

;--------------------------------------------------------------------------
;Spinning Clone
[State -1, Spinning Clone]
type = ChangeState
value = 235
triggerall = statetype!=A && movecontact && stateno=230 && stateno!=[1000,1701]
trigger1 = !var(59) && command="b"
trigger2 = var(59) && random<var(50)*1.1

;--------------------------------------------------------------------------
;Stand Heavy Punch
[State -1, Stand Heavy Punch]
type = ChangeState
value = 230
triggerall = statetype!=A && (ctrl || (movecontact && (stateno=[200,220]))) && stateno!=[1000,1701]
trigger1 = !var(59) && command="b"
trigger2 = var(59) && random<var(50)*1.1 && (P2BodyDist X=[0,40]) && P2StateType!=L && abs(P2BodyDist Y)<10

;--------------------------------------------------------------------------
;Kage Bunshin Combo
[State -1, Kage Bunshin Clone Combo]
type = ChangeState
value = 250
triggerall = statetype!=A && (ctrl || movecontact) && !NumHelper(251) && !NumHelper(401) && stateno!=[1000,1701]
trigger1 = !var(59) && command="c"
trigger2 = var(59) && random<var(50)*1.1 && (P2BodyDist X=[0,20]) && P2StateType!=L && abs(P2BodyDist Y)<10

;--------------------------------------------------------------------------
;Air Smash Down
[State -1, Air Smash Down]
type = ChangeState
value = 630
triggerall = statetype=A && movecontact && stateno=620 && stateno!=[1000,1701]
trigger1 = !var(59) && (command="a" || command="b")
trigger2 = var(59) && random<var(50)*1.1

;--------------------------------------------------------------------------
;Air Kick
[State -1, Air Kick]
type = ChangeState
value = 620
triggerall = statetype=A && movecontact && stateno=610 && stateno!=[1000,1701]
trigger1 = !var(59) && (command="a" || command="b")
trigger2 = var(59) && random<var(50)*1.1

;--------------------------------------------------------------------------
;Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = statetype=A && movecontact && stateno=600 && stateno!=[1000,1701]
trigger1 = !var(59) && (command="a" || command="b")
trigger2 = var(59) && random<var(50)*1.1

;--------------------------------------------------------------------------
;Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 600
triggerall = statetype=A && ctrl && stateno!=[1000,1701]
trigger1 = !var(59) && (command="a" || command="b")
trigger2 = var(59) && random<var(50)*1.1 && (P2BodyDist X=[0,12]) && abs(P2BodyDist Y)<=30

;--------------------------------------------------------------------------
;Kage Bunshin Smash Down
[State -1, Kage Bunshin Smash Down]
type = ChangeState
value = 640
triggerall = statetype=A && (ctrl || (movecontact && (stateno=[600,620]))) && stateno!=[1000,1701]
trigger1 = !var(59) && command="c"
trigger2 = var(59) && random<var(50)*1.1 && (P2BodyDist X=[0,30]) && abs(P2BodyDist Y)<=30

;--------------------------------------------------------------------------
;Sennen Goroshi
[State -1, Sennen Goroshi]
type = ChangeState
value = 25003
triggerall = command = "SennenGoroshi"
trigger1 = statetype != A
trigger1 = ctrl = 1
