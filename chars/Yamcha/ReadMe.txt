;-------------------------------------------
;Yamcha 3.0 by Chrono_Strife
;MUGENVERSION: 2003.6.14(Rou Hei's and Elecbyte's Unofficial WinMUGEN)
;-------------------------------------------

I thank Beckett DBZ Collector and Greg Werner for alot of information on Yamcha and other 
Dragon Ball Z characters!

-=Copyright/Disclaimer-English=-
I did not design the original base for Yamcha nor am I assosiated with Akira Toriyama, 
Funimation, or Bandai. However this does not mean you can take my work without permission.
I will deeply appreciate it if you can respect my requests and not use or steal any of my 
sprites, sounds, graphics, or programming. If you want to see more characters like Yamcha,
please honor my request. If I find people stealing sprites for their own purposes whether 
it be sheets, characters, or animations I will discontinue public releases of my characters, 
stages, and other MUGEN related things. The same goes for improper use of programming(using 
without permission and/or proper crediting), sounds, and graphics.

THIS CHARACTER IS NOW OPEN-SOURCE. You can use or reference anything you want that isn't credited to someone else in this ReadMe file. 
View the credits section to see what you shouldn't touch. Please give credit for whatever code and sprites of mine you decide to use, 
or reference. >=)


***Best viewed at Size -10- -Lucida Console- -Regualar- Fonts(with |Word Wrap| enabled)....*** 

           <Creator: Chrono_Strife>
            Version: 04.12.06/3.0 release/300%
            Based On: SB3 Goku and SB3 Gohan
            Character From: Dragon Ball Z
         

                 ({[All information from -=Chrono_Strife=- original, you may perform changes]})
            Character Information:
            Name:                 Yamcha(change in Yamcha3SB3.def)
            Sex:                  Male
            Occupation:           Z-Fighter
            Weapon:               Fists/Ki
            Age:                  33 (34 if you count his time in OtherWorld)
            Height:               6'00"
            Weight:               151 lbs
            Birth Date:           733 AD
            Birth Place:          Earth
            Blood Type:           n/a
            Level:                ---
            Heath Points:         1000  (change in YamchaCNS.cns)
            Attack:               100   (change in YamchaCNS.cns)
            Defence:              100   (change in YamchaCNS.cns)
            Power Max.:           3000  (change in YamchaCNS.cns)
            Walk Speed:           2.0   (change in YamchaCNS.cns)
            Dash Speed:           5.8   (change in YamchaCNS.cns)

	Stats:
	    Strength: **
	    Power: **
	    Speed: ***
	    Stamina: ***
	    Technique: *****
	    Ability: ***

            Information:          Yamcha is a Z-warrior who helps Goku and co. fight the EVIL
                                  Androids. Yamcha is a strong warrior yet in comparison to
                                  Piccolo, Goku and the other saiyans, He seems very limited in
                                  power. Yamcha is the first to encounter the Androids and is
                                  struck down when #20 all but kills him. Will Yamcha be able to
				  to help his friends, Or will he suffer under the power of the
				  Androids?

            Hypers:               Wolf Fang Fist       1:1 (A:B| A = PowerLevel : B = Number)
                                  KameHameHa           1:2
                                  Souki Dan            2:1
                                  
              
          
          +______________________+
         <[     -=Contents=-     ]>
         <[  1.Outfit            ]>
         <[  2.Move List         ]>
         <[  3.Help and Updates  ]>
         <[  4.Information       ]>
         <[  5.Yamcha's Stats    ]>
         <[  6.Credits           ]>   
         <[  7.Web Sites/E-mail  ]>
         <[  8.Previous Creations]>
         <[  9.Cheats/Debug Keys ]>
          +~~~~~~~~~~~~~~~~~~~~~~+
  
;---------------------------------------------- 
_1. Outfit
   Yamcha has 8 pallettes, select an outfit by following these commands at the select screen:
-Color: A:Orange,Dark Blue     Command: a              Difficulty: 1.0         #01
-Color: A:Dark Blue, Black     Command: b              Difficulty: 1.0         #02
-Color: A:Red, Black           Command: c              Difficulty: 1.0         #03 
-Color: S:Red, Blue            Command: x              Difficulty: 1.0         #04 
-Color: S:Purple, Black        Command: y              Difficulty: 1.0         #05 
-Color: S:Black, Red           Command: z              Difficulty: 1.0         #06 
-Color: A:SSj(Orange, Blue)    Command: Start+a        Difficulty: 1.0         #07
-Color: A:                     Command: Start+b        Difficulty: 1.0         #08
-Color: A:                     Command: Start+c        Difficulty: 1.0         #09
-Color: S:SSj3(Gold,Blue)      Command: Start+x        Difficulty: 1.0         #10
-Color: S:                     Command: Start+y        Difficulty: 1.0         #11
-Color: S:                     Command: Start+z        Difficulty: 1.0         #12
                            (Difficulties are not implemented)
;---------------------------------------------

_2. Move List (All move damage is shown in the unblocked state against a character of 
              Attack = 100 and Defence = 100, Damage values are off)
    Damage and Power use values may be off.

{----------Hyper Attacks----------}

; Wolf Fang Fist
command = D, DF, F, PP
power = 1000
damage = 20-160
combo = 1-10 hit
tip = Use for 'close range', high damage, physical combo attack. Tap "x", "y", or "z" repeatedly to chain.

; KamehameHa*
command = D, DB, B, KK
power = 1000
damage = 120
combo = 17 hit
tip = High Damage Beam Attack! Use on 'Very Far' distance opponents...Hold "U" to launch up, "D" to launch down...

; Souki Dan
command = D, DB, B, PP
power = 2000
damage = 250
combo = 1 hit
tip = 'Controllable' Ki Blast attack! Press "U","D","L", or "R" to control..."c"+"z" to drop/regain control...

{----Special Physical Attacks-----}

;Wolf Slash(Uppercut)*
command = D, DF, F, P
power = 0
damage = 70-90
combo = 2 hit
tip = Send your opponent flying Up and do medium damage! Useful for 'high aerial' opponents.

;Wolf Knee Leap
command = D, DF, F, K
power = 0
damage = 60-80
combo = 1 hit
tip = Send your opponent flying Back and do medium damage! Useful for 'low aerial' and 'grounded' opponents.

;Sonic Kick
command = D, DF, F, K
power = 0
damage = 60
combo = 1 hit
tip = Use in the air in place of Wolf Knee Leap.

;Launcher
command = KK
power = 0
damage = 60
combo = 1 hit
tip = Knock your opponent straight up, then follow with a 'super jump' and 'aerial combos'! 

{-------Special Ki Attacks--------}

;Weak Fireball/Renzoku Energy Dan*
command = D, DB, B, x
power = 40-240
damage = 10-60
combo = 1-6 hit
tip = Use for a 'slower', low-powered 'ranged' attack...(Tap "x" to chain). This has a very narrow range of fire.

;Medium Fireball/Renzoku Energy Dan*
command = D, DB, B, y
power = 40-240
damage = 12-72
combo = 1-6 hit
tip = Use for a 'pretty fast', low-powered 'ranged' attack...(Tap "y" to chain). This has a narrow range of fire.

;Strong Fireball/Renzoku Energy Dan*
command = D, DB, B, z
power = 40-240
damage = 14-84
combo = 1-6 hit
tip = Use for a  'very fast', low-powered 'ranged' attack...(Tap "z" to chain). This has a wide range of fire.

;KamehameHa Blast*
command = D, DB, B, K
power = 90-180
damage = 60-80
combo = 1 hit
tip = Effective Ki Blast...a 'slower' but strong 'ranged' attack("a" for weak, "b" for medium, "c" for strong).

{-------------Chains-------------}

;Flip Sonic Kick
command = K(after "Wolf Knee Leap")
power = 0
damage = 40
combo = 1
tip = Follow up for the 'Wolf Knee Leap' attack! May fail on smaller characters or aerial characters.

;Aerial Smash
command = P
power = 30
damage = 30
combo = 1
tip = Follow up for the 'Tiger Toss' throw! Performs a Zanzoken and bashes enemy into the ground.

;Dragon Rush Kick
command = K
power = 30
damage = 30
combo = 1
tip = Follow up for the 'Aerial Smash' chain! Performs a powerful kick on a falling opponent.

{--Throw or Close Range Attacks--}

;Shoulder Throw
command = HF+x+y or HB+x+y (While close to opponent)
power = 0
damage = 80
combo = 1 hit
tip = Use when you're 'Close' to an enemy...

;Tiger Jack Hammer
command = HF+y+z or HB+y+z (While close to opponent)
power = 0
damage = 22-100
combo = 2-10 hit
tip = Tap 'P' repeatedly to chain up to 10 hits!...

;Tiger Toss =D
command = HF+a+b or HB+a+b (While close to opponent)
power = 0
damage = 50
combo = 1 hit
tip = Use when you're 'Close' to an enemy and follow with a 'Aerial Smash'...

{----------Rush Attacks-----------}

;Sliding Tiger Smash
command = P (While running forward)
power = 0
damage = 36
combo = 1 hit
tip = Send your opponent flying back...

;Sliding Tiger Kick
command = K (While running forward)
power = 0
damage = 36
combo = 1 hit
tip = 'Trip' your opponent, follow it by quickly pressing the "z" button...

{--------Special Abilities--------}

; Super Jump
command = D, U or UF or UB
power = 0
damage = N/A               
combo = N/A
tip = Use this for 'Air Combo's or evasion...

; Fly
command = b+y
power = 20
damage = N/A               
combo = N/A
tip = Use this to 'Chase' or 'Escape' from your opponent...

; Charge Power*
command = hold a+x
power = not required (this only raises power) 
damage = N/A               
combo = N/A
tip = Good to use if you need to use a hyper to finish off the opponent...Slowly raises life too!

; Zanzoken
command = hold a+x(and directional key, while running forward or backwards)
power = 50
damage = N/A               
combo = N/A
tip = Excellent for 'Escaping' bad situations or 'Surprising' your enemy...

;----
; Pause Game*
command = Pause/Break key (default)

H    =  In front of directional key means Hold Key
*    =  Moves that can be done in the flight

;-------------------------------------------------------------------------------

_3. Help, Story, and Updates
  
::Help::

                         - Opening the .CNS and others -
   Pretty much the same as opening a .def or a .cmd search for a file called - yamcha.cns -, 
open it with "NotePad" or "WordPad". Now you should see listings for Life, Attack, Defence, 
Power! You can change these to whatever you wish! Original: Life=1000;Attack=100;Defence=100;
Power=3000...

                               - The Souki Dan -
   As you may have known the Souki Dan is an attack you control using the keyboard! Practice with 
it in Training Mode to get the hang of it...If you hate it when Yamcha uses the dreaded Sokidan 
on you, merely attempt to destroy it by using Ki attacks or risk it by punching or kicking it...
   If you wish to drop control of the SoukiDan, hold the "c" and "z" buttons down...The SoukiDan
will now be uncontrollable and Yamcha can move around freely. To regain control of the SoukiDan
simply punch in the original SoukiDan command. And for a powerful combo, line the SoukiDan up 
behind your opponent and fire a KameHameHa. You can line up the Souki Dan with a number of attacks. =D

                                   - Other -
   If you need any further help with Yamcha e-mail me at - chronostrifeff7h@hotmail.com - I will help 
you small problems only...I will not tell you how to create a character, program, or edit 
sprites, nor will I send you files, links, or characters by other creators...
   Also try to keep all viruses and spam to a minimum...Thank you...

-Also some people using DOS MUGEN may experience difficulties using Yamcha, he was created for 
Rou Hei's WinMUGEN hack.


::Story::
---------None yet...



::Updates::

                                     - August 05, 2003- 
Version 1.0 release:
-First Release Yamcha version 1.0

                                    - December 25, 2004 -
Version 1.1: 
-Added in more sprites per animation for smoother movements.
-Crouch stance is now animated!
-KamehameHa style modified, it now only has 5 hits and launches p2.
-Legends faces fixed a bit.

                                    - November 11, 2004 -
Version 1.9 release:
-Removed auto-combos in exchange for a sort of MvC style(Not really).
-KamehameHa has been given a makeover, functions as a helper now.
-Jumping KameHameHa's added.
-KameHameHa Blast Implemented.
-Soukidan can now be AI controlled, and Yamcha can be hurt in Soukidan state.
-Changed the command to destroy SoukiDan into a command to lose control of it.
-Fixed some of the hit sprites which looked like my old Vegetto.
-Added in more attacks per button mainly crouch and jump attacks.
-Modified Ki shot. Added 2 forms of multi Ki shots.
-Stance is now a four sprite animation, not two.
-Some color fixes.
-A ton of new animation.
-New FX visual and sound.
-Intros including Puar!
-New victory poses.
-Special only Chain added.(Wolf Back-FLip Kick)
-Legends faces? What legends faces? (Legends faces removed)
-New Zanzoken System.
-Air Dashing.
-Tons of other stuff.

				     - April 25, 2005-
Version 2.0 release:
-Added a new throw complete with 'Aerial Smash' chain and 'Dragon Rush Kick' chain.
-Wolf Fang Fist is back in.
-Lowered damage of some basic attacks, and Increased damage of the KamehameHa.
-New Intros and endings with Puar!
-Fixes on Hit Boxes.
-Fly code fixed.
-Modified Renzoku Energy Dan. Now it's done by button tapping!
-Fixed the sprites which had orange colors on some Pallettes.
-Implemented an easy AI. He now attacks slightly smarter!
-Modified and fixed Tiger Jack Hammer, button tapping is now required, and no more half extended arms.
-Modified timing, damages, p2 positions, and velocities of all throws.
-Some new Visual FX and some new Sound FX.
-Downward Aerial KamehameHa has a new Yamcha firing sprite.
-Added an Ending Storyboard.

			            - April. 12, 2006-
Version 3.0:
-Lowered his volume.
-Voice is now random.
-Changed Hyper Commands and Zanzoken commands.
-Changed Damage values on all attacks.
-Changed Pausetimes, HitTimes, HitVelocities and more. 
-Changed multiple commands.
-Reorganized his sff to a more unorganzied state, mainly to fit his Saiyan saga sprites in.
-Realigned sprites in the sff, get hit and walk sprites in particular.
-Fixed some crouch stance and crouch attack sprites where the back leg was too short(Still seems to be, just not as bad).
-Added Saiyan Saga Pallettes.
-Recoded the SokiDan, Wolf Fang Fist, and KameHameHa hypers.
-Recoded the ShoRyuKen(Wolf Slash), and modified all specials.
-Implemented better Basic -> Special chaining ability.
-Implemented Basic -> Hyper and Special -> Hyper chains.
-Cut down the attack damage dampeners effectiveness.
-New Sound FX added.
-New Visual FX added.
-Fixed a problem on the Knee Leap attack where the weak and medium version chained automatically.
-Recoded Knee Leap and it's follow up attack.
-Fixed a problem with the Dragon Rush kick where he would fall through the floor if it missed.
-Fixed Tiger Jackhammer so it doesn't enter the second part even if the grab misses.
-Removed the automatic fall if state remains 3100 for 700 ticks.
-Added a new attack, Sonic Kick.
-Modified some states and animations for the Saiyan Saga version.
-New Pallette Colors, including Brown haired and Blonde Haired(SSj) pallettes.
-Fixed the ReadMe a bit.



                                      - Future Plans -
-1: Bug fixes, possible addition of some new pallettes, possibly change hit sounds.
-2: Rape everyone associated to MUGEN. No not rape, I mean surprise sex... >_>
-3: Quit MUGEN.

;-------------------------------------------------------------------------------

_4. Information

  Name:      Yamcha/Yamucha- 'dim sum' a form of chinese food, similar to dumplings...
  Character: Yamcha begins in Dragon Ball as a theif. He stole Capsules from wanderers who 
           traveled through his desert with the help of Puar. Yamcha first encounters Goku as 
           his enemy and tries to steal the Dragon Balls from him. Yamcha's intention with the
           Dragon Balls is to wish away his fear of women, but when he helps Goku and Bulma 
           defeat Pilaf, he learns to deal with his fear and becomes Bulma's boyfriend.
             After falling in love(and back out of it) with Bulma he befriends Goku and helps 
           him in many battles. He trains under Master Roshi with Krillin after Baba's
           tournament. 
             During DBZ he helps the Z Warriors fight the saiyans Nappa and Vegeta, well he would 
           of if he hadn't been killed by a Saibaman. He then trained under King Kai along with 
           other Z Warriors who were killed by Nappa.When he was finally wished back in the end
           of the Frieza saga he basically continued his role as Bulma's boyfriend.
             Yamcha begins his life in the Android saga as more of a loner...Bulma and Vegeta got 
           hitched, and Yamcha was left with noone but Puar...Yamcha still proves his worth in 
           his fight against the Androids though, after being revived by a Senzu Bean after his 
           encounter with Androids #19 and #20, he helps Goku back home because he fell ill to a
           heart virus. He also helps Goku from being killed by a Cell Jr in the Cell Games, and
           backs up Gohan(with the rest of the gang)in the fight with Cell.
             After the battle with Cell Yamcha stops fighting. So in the Buu Saga he is pretty 
           much a character who shows support for the group.
  Attacks:   Yamcha's signature attacks are the Wolf Fang Fist, Super Wolf Fang Fist, KameHameHa, 
           and the Sokidan...

;---------------------------------------------

_6. Credits

 Yamcha never would of been possible if it wasn't for Akira Toriyama , Funimation, Dragon Ball Z, Bandai, and Elecbyte...these all played a major role in the creating of Yamcha by Chrono_Strife. Please ask for permission if you want to host 
it on your site although it isn't that big of a deal I'd still appretiate it. Also please do not steal anything off of my character: character sprites, programming, and edited FX in this character are strictly for use by [C]CSFF7h and noone else, unless give permission from [C]CSFF7H or the creator of the sprites, programming, and FX...
Please let's keep MUGEN a clean fun game and community, no stealing! Thank you ^_^

Programming Credits:
                                                
  ***Code***    ***Character***     ***Creator/Ripper***
_Soukidan code      ;FreezaHD           ;Overmind
_AI Fly Code        ;ftrunks            ;sSonic
_KO Effect          ;                   ;FlowaGirl
                                                  !!!Thanks Guys!!!

Sound Credits:

  **Sound**
_Some Yamcha Voices ;----               ;Chaos and Neocide
_Explosion and Jump ;----               ;FlowaGirl
                                                  !!!Thanks Guys!!!

Sprite/Visual Effects Credits:

 *Sprites/FX*
_Recovery Flip Sprites                  ;Neocide
_Hit Sparks                             ;Mattasaur
_Aura                                   ;Toad
                                                  !!!Thanks Guys!!!

Extra Credits:
          ***Name***                          **Reason**
_Bandai                    - For the DBZ sprites I have so often swiped, thanks for bringing DBZ to console.
_Elecbyte                  - For M.U.G.E.N. and KUNG FU MAN BASE! Come back to MUGEN or else!
_Valve                     - For the Half-Life 2 ending theme.
_SquareSoft(SquareEnix)    - For the Ehrgeiz hitsounds.
_Atari                     - For teh Budokai stuff.
_Capcom                    - Some Visual Effects, Sprites, and ideas.
_SNK/NeoGeo                - Some visual effects.
_Cartoon Network           - For introducing me to DBZ, and showing me all its wonderful(and not so wonderful) episodes.
_Akira Toriyama            - Can someone say Dragon Ball Z?
_Christopher Sabat         - For sounding like Yamcha! I mean...being Yamcha!
_SesMCM                    - For your wonderful .sff, .air, and .snd editing and creating program.
_ZSNES Team                - ZSNES emualtor
_GohanSSM2                 - For helping me out in my earlier days.
_FlowaGirl(The Necromancer)- The WinKO stuff.
_Insydious                 - Character protection code(no longer used).
_Pextin                    - Motivation, beta testing, lovin', etc. Also crazy Tien, Yamcha's non-sex partner!
_Toad                      - FX and beta testing.
_Chaos                     - For getting me back into MUGEN with that absurd e-mail. You rat bastid! Beta testin' 2!
_Neocide                   - Sounds, beta testing, sprite help and more!
_Longphi3k                 - For telling me certain frames were 'not smooth' like Flowa's chars!
_Anuubis                   - Thanks for the Wolf Howl Sound!
_ZGTeam Forum              - You gave me someone to release this to!
_President George W. Bush  - A huge role model in some ways.


(Credits apply from Yamcha 1.0 and 2.0 versions as well).
I apologize if I forgot to credit someone who deserved it...E-mail me if I did, I'll add you!
;---------------------------------------------

_7. WebSite

  Visit [Chrono]Cloud Strife FF7H's DBZ/FF Mugen Website for more DBZ/FF characters, stages, and
info.- http://members.lycos.co.uk/cstrife/index.html - or e-mail me at - chronostrifeff7h@hotmail.com -
for tips or ideas you wanna give me(or if you find any bugs on a character)!
  
  Visit Elecbyte's site they created the mugen program and you'll need it play a game with this
character -www.elecbyte.com-

*Note* Elecbyte is currently down. Sorry folks. You'll have to search for Rou Hei's WinMUGEN hack! h4x 2 teh m4x!
;---------------------------------------------

_8. Chrono_Strife Characters of the past...Stolen works too...
  							Personal
 ---Sprite Style---       ---Character Name---        ---Rating---     ---Stolen From---       ---Base---
_N/A                      _Bulma                          0.5		-Trunks SSj(OK)         -Bulma
_Hyper Dimension          _Yamcha                         0.9		-Trunks SSj(OK) 	-Yamcha Saiyan Saga
_Super Butouden           _SSj Raditz                     0.1		-Sword Happy Trunks     -Raditz
_Super Butouden           _SSj Nappa                      0.1		-Sword Happy Trunks	-Nappa
_Super Butouden           _Cloud                          3.0		-sSonic(OK)		-Future Trunks(Beta)
_Super Butouden           _Tifa                           1.3		-SSj4 Vegeta19 & Vision -Android 18
_Super Butouden           _Squall                         0.5		-Emuboarding		-Normal Trunks
_Hyper Dimension          _SSj2 Gogeta                    0.5		-Sarvok                 -SSj4 Gogeta(beta)
_Super Butouden           _Yamcha                         2.0           -Sidon HID              -Gohan
_Super Butouden           _GohanEx                        2.5           -Noone
_Super Butouden           _VegettoSB3                     2.0           -Elecbyte!!!            -KFM!!!
_Super Butouden           _GohanMov9                      2.5           -
_Super Butouden           _YamchaSB3 1.0                  3.0           -                       -VegettoSB3
_Super Butouden           _YamchaSB3 2.0(1.9b)            3.4           -CSFF7H*nub*            -YamchaSB3
_Super Butouden           _YamchaSB3 2.0                  3.6           -Kagome_Strife? =D      -Yamcha2SB3
_Super Butouden           _Bojack Enhanced 1.1            3.7           -                       -Uhhhh Kung Fu Man?
_Super Butouden           _Gohan2Mov9(0.75b)              3.7           -                       -Again...Uhhh KFM?
_Super Butouden           _Cloud Strife 2.0(0.5b)         4.2           -
_BuYuu Retsudan           _Trunkz 1.1                     4.2           -
_Super Butouden           _YamchaSB3 3.0                  4.0           -Akira Toriyamas Eyebrow-Yamcha3SB3
_Super Butouden           _Android 18 0.1a(Sexual Fantasy)2.5           -Cyanide and Neocide    -Kid Buu


Based on a 5 point rating scale...
 Note: Some ratings may be off as to how I really feel about them...and some may not have been released.
;---------------------------------------------

_9. Cheats for the common newbie!(Not really cheats at all...but...)

==Command==     ==Effect==  
-Space Bar   :   Boosts Both you and your opponents HP and Power to their maximum      
-F1          :   Kills your opponent instantly
-F2          :   Drops both you and your opponents HP to 1
-F3          :   Raises both you and your opponents power to the maximum 
-F4          :   Insantley restarts the round
-Esc         :   Exits game (use this before you explode and destroy your CPU!!!)

Note: All but ESC command can only be used in DEBUG MODE or while DEBUG keys are enabled...
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
  ___________
 /__   _____/ _     ______ __    __
   /  /_ | | | |   //----//\ \  / /
  /   _/ | | | |  //____//  \ \/ /
 /  /    | |_| | //---\\     |  |
/__/      \___/ //     \\    |__| [][][][] <- Why is this here?

-=[Chrono]Cloud Strife_Final Fantasy VII Heaven=- (-=[C]CSFF7H=-)
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Thank You for reading Yamcha's ReadMe File.