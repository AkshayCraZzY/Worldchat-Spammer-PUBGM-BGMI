

#NoEnv    
#Persistent
#SingleInstance, Force
SetBatchLines, -1 
SetWinDelay -1 
SetWorkingDir %A_ScriptDir%
#include <Vis2>
#include <Gdip_All>
;$$$---sleep 1000
#include freeze.ahk
;CoordMode Pixel
CoordMode, Pixel, Window

;-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-SETUP NAMES ARRAY AND VARIABLES-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-


names:= ["WRirEiteYT","ｘFliXxeRｘ","PagalG0D","GoDeXRusH","xNeonnx","SakshiYT","J0DLxOP","मेNTŁAnuJ","G0d0RWut","十Aman十","ChiragL͜2","StradMan","STARxDK","Sumed4376"
,"MrBt07","BLaCxD","SprYG0D","DynaMx47","PriyaYT","Gh0sT十0P","DEviｘlMan","HyPerioN","SNGｘWoLF","Thanx0S","MorTalxOP","KﾑRﾑN","BTxYash"
,"MaHEshYT","KLजाट","NOxDaddy","69KanuYT","PayalYT","डाकूBang","JethaYT","ShamxOP","VeGi2op","मेeNNa","S8ULxPaYL","十MoHiT十","BTRxJOD"
,"SxARTR","XzKilerYT","十CLGoD十","ｘLIONｘ","4KngNinja","MgmoYT","AKxJAT","ﾑRL͜͡OD","KIFxNG","QuenxLC","मेNTAŁBTC"]
;Sort, names, Random

;Random, m, 1, names.MaxIndex()
Last := 0
num:= 1		;FOR ALTERNATING MESSAGES IN ENG CHANNEL
m:=1		;TO STORE INDEX OF NAMES.ARRAY
;one=1
two:=-1		;TO DETERMINE WHICH CHANNEL TO SEND MESSAGE
;three=1
pmsg=0		;TO STORE COUNT OF PUBLIC CHANNEL MESSAGES
emsg=0		;TO STORE COUNT OF ENGLISH CHANNEL MESSAGES
;err=0
hmsg=0		;TO STORE COUNT OF HINDI CHANNEL MESSAGES
rest=0		;TO STORE COUNT OF RESTARTED SCRIPT, RECOVERING FROM CRASH
timerCount:= 0		;TO STORE TIMER DATA
msg1ex:=0
msg3ex:=0
;ads=2		;NUMBER OF ADVERTS AT START OF GAME

FormatTime, TimeString, A_Now, dd/MM-HH:mm:ss



;-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-GUI TEXT INITIALIZE-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-


Gui, GUI_Overlay:New, +ToolWindow  +LastFound +AlwaysOnTop -Caption +hwndGUI_Overlay_hwnd
Gui, Margin, 10, 10
Gui, Font, s25 q4, Segoe UI Bold		;GUI TEXT SIZE AND FONT
Gui, Add, Text, w650 Center vTEXT_Timer cWhite, Restarted %rest% time Timer: %timerCount%`nPublic Channel Messages: %pmsg%`nEnglish Channel Messages: %emsg%`nHindi Channel Messages: %hmsg%`nRandom name selected: %nname% 
Gui, Color, 000000
WinSet, Transparent, 200
Gui, Show, Hide, Overlay
WinMove, 1000, 200		;GUI WINDOW POSITION
;Gui, GUI_Overlay:Show
OnMessage(0x201, "WM_LBUTTONDOWN")		;CALLING FUNCTION MAKING MOVABLE GUI ON MOUSE CLICK
SetTimer, Timer_Countdown, 1000
SetTimer, freezeChk, 1000000
;SetTimer, SaftyReload, 4200000
;SetTimer, freezeChk, 60000
log("`n"TimeString)
log("Startup - Setting everything up`n")
;SaftyReload()


if WinExist("BlueStacks")	
{
	WinActivate	
	;$$$---sleep 400
	;MouseClick, left,1302,895
	Gui, GUI_Overlay:Show
	log(TimeString)
	log("Activated Existing window")
}		;ACTIVATE BLUESTACK WINDOW
else
{
	Run,"C:\Program Files\BlueStacks_nxt\HD-Player.exe" --instance Nougat32 --cmd launchApp --package "com.pubg.imobile"
				
				;WinActivate	
				WinWaitActive, BlueStacks,,20
				if ErrorLevel
				{
					MsgBox, WinWait timed out.
					return
				}
				else
				{
					sleep 2000
					MouseClick, left,1369,14
					;MouseClick, left,1079,17
					Click, 1079 17 Down
					sleep 300
					Click, up			
					sleep 60000
				}
				;sleep 6000
				loop,12
				{
					MouseClick, left,1707,97
					sleep 900
				}
				;Send {Esc}
				;Loop,%ads%
				;{
				;	Send {Esc}
				;	sleep 400
				;}
				sleep 200
				MouseClick, left,212,139
				sleep 500
				MouseClick, left,97,69
				sleep 500
				MouseClick, left,240,221
				sleep 500
				MouseClick, left,1302,895
				sleep 1000
				MouseClick, left,1302,895
				sleep 500
	Gui, GUI_Overlay:Show
	log("`n"TimeString)
	log("Started new game and entered chat window")
}






;-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-MAIN LOOP-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-


Main:
Loop, 
{
	;Gui, GUI_Overlay:Show
	If (two=-1)		;SLEEP ACCORDING TO: FIRST RUN OR COMING FROM OTHER CHANNEL
		sleep 700
	else
		sleep 6000

	second:
	
	log("INDEXXXXXXXXXXX"A_index)
	FormatTime, TimeString, A_Now, dd/MM-HH:mm:ss
	;currName =% Unique_RChoice(names)
	;if (a_index < 2)
		;currName =% names[m]		;SEELCTING NAME TO BE USED
	currName =% names[m]
	nname =% currName		;SHOWING NEXT NAME SELECTED ON GUI
	log("`n"TimeString)
	log("Using name at index : "currName m)
	;msg1=THANKS %currName% FOR[POPULARITY][660UCēSENT]CHECKFAST
	;msg3=JISKO[#UCēCHAHIYE]VO[#FREEēPOPULARITY]BHEJO I'm[#UCGIFTER] 
	;msg3=JO BHI[#FREEēPOPULARITY]BHEJEGA USKO[#UCēMILEGI]I'm[#UCGIFTER]
	flash := "%64"
	smile := "%16"
	wow := "%20"
	CoordMode, Pixel, Window
	
	;msg1=#THANKSē%currName%ēFORēPOPULARITYē660UCēSENTēCHECKFAST
	;;;if Mod(A_Index,2)=0
/*


	If (msg3ex=1 AND msg3ex=1)
	{							
		msgbox, all 1									;TEMPLATE 1
		;;;msg3=#JISKOēUCēCHAHIYEēVOēFREEēPOPULARITYēBHEJOēJALDI
		msg3=#JISKOēUCēCHAHIYEēVOēALANēWALKēPOPēBHEJOēJALDI
		sleep 200
		msg1=#THANKSē%currName%ēFORēALANWALKēPOPē660UCēSENT
		;;;msg1=#ABHIē%currName%ēKOēUCēBHEJDIēAURēKISKOēCHAHIYE?
		temp=1
		log("Using Template "temp)
		msg1ex:=0
		msg3ex:=0
		;msg1=#THANKSē%currName%ēFORēALANWKē325UCēSENTēCHECK
	}
	Else
	{			
		msgbox, NOT all 1														;TEMPLATE 2
		msg3=#JALDIēSEēFREEēPOPULARITYēDOēFORēUCēēI'mRICH
		;msg3=#SABēFAKEēGIRLēPROFILEēHAIēISSEēACHAēMUJEēPOPēDEDO
		;msg3=#JOēBHIēFREEēPOPULARITYēBHEJEGAēUSKOēUCēMILEGI
		sleep 200
		msg1=#THANKSē%currName%ēFORēFREEēPOPē325UCēSENTēCHECK
		temp=2
		log("Using Template "temp)
	}


*/
	;JISKO #UC CHAHIYE VO #FREEēPOPULARITY BHEJO I'm #UCGIFTER 
	
	;msg3=JOēTHODIēBHIēPOPULARITYēBHEJEGAēUSKOēUCēMILEGIēTRYIT

	;MsgBox, %msg1ex%%msg3ex%


	sleep 600
	MouseClick, left,380,180		;SELECTING ENG CHANNEL
	sleep 400
	MouseClick, left, 694,1004		;CLICK ON TEXT BOX TO TYPE
	sleep 500
	Send +{Home}
	sleep 200
	send {BS}			;DELETING PREVIOUS TEXT IN TEXT BOX IN CASE OF ERRORS (SHIFT+HOME+BACKSPACE)
	sleep 200
	;sendraw #		;SENDING # TO MAKE TEXT COLOR YELLOW
	;sleep 100
	
	log("`n---ENG CHANNEL---`n")
	If Mod(num, 2)=0		;CHANGING NAME
	{
		;currName =% Unique_RChoice(names)




		If (msg1ex=1)
		{							
			;msgbox, all 1									;TEMPLATE 1
			msg1=#JISKO؄UC؄CHAIYE؄VO؄FREE؄POPULARITY؄BHEJO؄JALDI
			;msg3=#JISKOēUCēCHAHIYEēVOēALANēWALKēPOPēBHEJOēJALDI
			;sleep 200
			;;;;;;;;msg1=#THANKSē%currName%ēFORēALANWALKēPOPē660UCēSENT
			;;;msg1=#ABHIē%currName%ēKOēUCēBHEJDIēAURēKISKOēCHAHIYE?
		;;	msg1=#KOIēLADKIēLOBBYēPARTNERēBANEGI?ADDēMEēONLYēGIRLS
			temp=1
			log("Using Template "temp)
			msg1ex:=0
			;msg3ex:=0
			;msg1=#THANKSē%currName%ēFORēALANWKē325UCēSENTēCHECK
		}
		Else
		{			
			;msgbox, NOT all 1														;TEMPLATE 2
			;msg3=#JALDIēSEēFREEēPOPULARITYēDOēFORēUCēēI'mRICH
			;msg1=#SABēFAKEēGIRLēPROFILEēHAIēISSEēACHAēMUJEēPOPēDEDO
			msg1=#JO؄BHI؄FREE؄POPULARITY؄BHEJEGA؄USKO؄UC؄MILEGI
		;;	msg1=#ANYēGIRLēWANTSēTOēBECOMEēLOBBYēPARTNER?ADDME
			;sleep 200
			;;;;msg1=#THANKSē%currName%ēFORēALANWALKēPOPē660UCēSENT
			;;;;;;;;;;;;;;;;;;;;;msg1=#THANKSē%currName%ēFORēFREEēPOPē325UCēSENTēCHECK
			temp=2
			log("Using Template "temp)
			msg1ex:=1
		}








   		Sendraw %msg1%%flash%
		;msg1ex:=1
		log("Sent msg with name in temp "temp)
		if (m < names.MaxIndex())
		{						;CHECK IF LAST NAME IN ARRAY IS USED (RESET IF LAST OR SELECT NEXT NAME IF NOT LAST) 
			m:=m+1
			log("Choosing next name")
		}
		else
		{	
			m=1
			log("End of name array, using first name")
		}
		;sendraw %64
	}
	else
	{


		If (msg3ex=1)
		{							
			;msgbox, all 1									;TEMPLATE 1
			;;;msg3=#JISKOēUCēCHAHIYEēVOēFREEēPOPULARITYēBHEJOēJALDI
			;msg3=#JISKOēUCēCHAHIYEēVOēALANēWALKēPOPēBHEJOēJALDI
			;msg3=#JISKOēUCēCHAHIYEēVOēALANēWALKRēPOPēBHEJOēJALDI
			;sleep 200
			;msg1=#THANKSē%currName%ēFORēALANWALKēPOPē660UCēSENT
			msg3=#CHECKē%currName%ē660UCēBHEJDIēFORēALANWALKēPOP!
		;;	msg3=#JOINēMYēRPēCLANēALMOSTēLVL5ēONLYēRPēPLAYERS!
			;msg3=#ABHIē%currName%ēKOē660UCēBHEJDIēAURēKISKOēCHAHIYE?
			temp=1
			log("Using Template "temp)
			msg3ex:=0
			;msg3ex:=0
			;msg1=#THANKSē%currName%ēFORēALANWKē325UCēSENTēCHECK
		}
		Else
		{			
			;msgbox, NOT all 1														;TEMPLATE 2
			;msg3=#JALDIēSEēFREEēPOPULARITYēDOēFORēUCēēI'mRICH
			;;;;;;;;;;;;;;;;;;;;;;;;;;msg3=#JALDIēSEēFREEēPOPULARITYēDOēFORēUCēēI'mRICH
			;;;;;;;msg3=#JISKOēUCēCHAHIYEēVOēALANēWALKRēPOPēBHEJOēJALDI
			;msg3=#SABēFAKEēGIRLēPROFILEēHAIēISSEēACHAēMUJEēPOPēDEDO
			;;;msg3=#JOēBHIēFREEēPOPULARITYēBHEJEGAēUSKOēUCēMILEGI
			;sleep 200
			;msg3=#THANKSē%currName%ēFORēALANWALKēPOPē660UCēSENT
			msg3=#THANKSē%currName%ēFORēFREEēPOPē660UCēSENTēCHECK!
		;;	msg3=#MERAēRPēCLANēJOINēKARLOēSIRFēRPēPLAYERS!
			temp=2
			log("Using Template "temp)
			msg3ex:=1
		}



















		;Send 10Chickenē60UCē5Bikeē120UCē1AlanWalkerē660UCēUCēMILEGI!
		Sendraw %msg3%%flash%
		;msg3ex:=1
		log("Sent bait msg in temp "temp)
		;sendraw #UCGIFTER
		;Send IMēGIFTINGēUCēTOēEVERYONEēWHOēSENDSēMEēANYēPOPULARITY!
	}

	sleep 700
	;MouseClick, left, 1062,975		;CLICK ON SEND BUTTON
	Click, 1062 975 Down
	sleep 100
	Click, up
	emsg++
	two++
	num++
	;$$$---sleep 500
	
	If Mod(two, 7)=0		;TO SEND IN HINDI AND PUBLIC CHANNEL OR NOT. ALSO CHECKING FOR CRASH
	{
		log("`n"TimeString)
		log("---PUB CHANNEL---`n")
		MouseClick, left,380,77		;SELECTING PUBLIC CHANNEL
		sleep 300
		MouseClick, left, 694,1004
		sleep 500
		Send +{Home}
		sleep 100
		send {BS}
		sleep 200
		;sendraw #
		;sleep 100
		SendRAW %msg3%%flash%%smile%
		pmsg++
		;$$$---sleep 800
		;MouseClick, left, 1062,975
		Click, 1062 975 Down
		sleep 100
		Click, up
		log("Sent msg with name in temp "temp)
		
		sleep 500

		log("`n---HIN CHANNEL---`n")
		MouseClick, left,380,285	;SELECTING HINDI CHANNEL
		sleep 300
		MouseClick, left, 694,1004
		sleep 500
		Send +{Home}
		sleep 100
		send {BS}
		sleep 200
		;sendraw #
		;sleep 100
		SendRAW %msg3%%flash%%smile%
		hmsg++
		sleep 800
		;MouseClick, left, 1062,975
		Click, 1062 975 Down
		sleep 100
		Click, up
		log("Sent msg with name in temp "temp)

		two++
		msg:=num-1
		sleep 300
		;;if % MemUsage("hd-player.exe")
		log("`n"TimeString)
		log("Checking for crash")
		PixelSearch, Px, Py, 1062,975,1064,977, 0xFFCB38, 8, RGB
		if ErrorLevel
		{
			log("Failed in 1st check, using 2nd check")
			PixelSearch, Px1, Py1, 121,228,122,229, 0xDC2F2F, 5, RGB
			if ErrorLevel
			{
				log("Failed 2nd check, going to crash function")
				Goto, Crash
			}
			else
			{
				log("Passed 2nd check, continue")
				Goto, Second
			}
		}	
		else
		{
			log("Passed in 1st check, continue")
			Goto, Second
		}
		Goto, Second
		
	}
	
}


Timer_Countdown:
{
      	timerCount++
		GuiControl, GUI_Overlay:, TEXT_Timer,  Restarted %rest% time Timer: %timerCount%`nPublic Channel Messages: %pmsg%`nEnglish Channel Messages: %emsg%`nHindi Channel Messages: %hmsg%`nRandom name selected: %nname%
		return
}

WM_LBUTTONDOWN()
{
	PostMessage, 0xA1, 2
	log("GUI Moved")
}
freezeChk:
{
		;Gui, GUI_Overlay:Hide
		tooltip,infreezecheck
		log("Checking if freezed")
		freezeCheck()
		return
}

log(msg)
{
	FileAppend, ;Text file write
	(
		%msg%`n
	), SpamBgmi.log
	;GuiControlGet, Console
	;GuiControl, , Console, %Console%%msg%`r`n ; GUI write
	;sleep 3000 ; Pause for smooth log scrolling
	return
}
logocr(msgg)
{
	FileAppend, ;Text file write
	(
		%msgg%`n
	), ocrlog.log
	;GuiControlGet, Console
	;GuiControl, , Console, %Console%%msg%`r`n ; GUI write
	;sleep 3000 ; Pause for smooth log scrolling
	return
}

Crash:
{
		Send #{PrintScreen}
		sleep 300
		Process, Close, HD-Player.exe
		sleep 1000
		Send #d
		Gui, GUI_Overlay:Hide
		sleep 1000
		Run,"C:\Program Files\BlueStacks_nxt\HD-Player.exe" --instance Nougat32 --cmd launchApp --package "com.pubg.imobile"
		log("Relaunched after crash")
		;WinActivate	
		WinWaitActive, BlueStacks,,20
		if ErrorLevel
		{
			MsgBox, WinWait timed out.
			return
		}
		else
		{
			sleep 2000
			MouseClick, left,1369,14
			;MouseClick, left,1079,17
			Click, 1079 17 Down
			sleep 300
			Click, up			
			sleep 60000
		}
		;sleep 6000
		loop,12
		{
			MouseClick, left,1707,97
			sleep 900
		}
		
		;Loop,%ads%
		;{
		;	Send {Esc}
		;	sleep 400
		;}
		sleep 200
		MouseClick, left,212,139
		sleep 500
		MouseClick, left,97,69
		sleep 500
		MouseClick, left,240,221
		sleep 500
		MouseClick, left,1302,895
		sleep 1000
		MouseClick, left,1302,895
		sleep 500
		log("DND")
		rest++
		Gui, GUI_Overlay:Show
		Goto, Main
}

Unique_RChoice(Array){
	If (Array.MaxIndex() = 0 || Array.MaxIndex() = "")
		return, "ERROR"
	else {
		Random,Rand,1,% Array.MaxIndex()
		Ret := Array[Rand]
		Array.Remove(Rand)
		return, Ret
	}
}

/*

SaftyReload()
{
	;Run,"C:\Program Files\BlueStacks_nxt\HD-Player.exe" --instance Nougat32 --cmd launchApp --package "com.pubg.imobile"
				tooltip, reload
				WinActivate, BlueStacks
				Process, Close, HD-Player.exe
				sleep 1000
				;WinWaitActive, BlueStacks,,20
				reload
}




MemUsage(ProcName, Units="K") 
{
    Process, Exist, %ProcName%
    pid := Errorlevel
    ; get process handle
    hProcess := DllCall( "OpenProcess", UInt, 0x10|0x400, Int, false, UInt, pid )
    ; get memory info
    PROCESS_MEMORY_COUNTERS_EX := VarSetCapacity(memCounters, 44, 0)
    DllCall( "psapi.dll\GetProcessMemoryInfo", UInt, hProcess, UInt, &memCounters, UInt, PROCESS_MEMORY_COUNTERS_EX )
    DllCall( "CloseHandle", UInt, hProcess )
    SetFormat, Float, 0.0 ; round up K
    PrivateBytes := NumGet(memCounters, 40, "UInt")
    if (Units == "B")
        return PrivateBytes
    if (Units == "K")
        Return PrivateBytes / 1024
    if (Units == "M")
        Return PrivateBytes / 1024 / 1024
}

*/
F9::Pause
F10::ExitApp