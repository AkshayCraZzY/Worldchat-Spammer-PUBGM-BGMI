

#NoEnv    
#SingleInstance, Force
SetBatchLines, -1 
SetWinDelay -1 


;-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-SETUP NAMES ARRAY AND VARIABLES-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-


names:= ["WRirEiteYT","ｘFliXxeRｘ","PagalG0D","GoDeXRusH","EviL十Man","SakshiYT","J0DLxOP","मेNTŁAnuJ","G0d0RWut","十Aman十","ChiragL͜2","StradMan","STARxDK","Sumed4376"
,"MrBt07","BLaCxD","SprYG0D","DynaMx47","PriyaYT","Gh0sT十0P","DEvil十Man","HyPerioN","SNGｘWoLF","Thanx0S","MorTalxOP","KﾑRﾑN","BTxYash"
,"MaHEshYT","KLजाट","NOxDaddy","69KanuYT","PayalYT","Powr十Bang","JethaYT","ShamxOP","VeGi2op","मेeNNa","S8ULxPaYL","十MoHiT十","BTRxJOD"
,"SxARTR","XzKilerYT","十CLGoD十","ｘLIONｘ","4KngNinja","MgmoYT","AKxJAT","ﾑRL͜͡OD","KIFxNG","QuenxLC","मेNTAŁBTC"]


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
;ads=2		;NUMBER OF ADVERTS AT START OF GAME




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


if WinExist("BlueStacks")	
{
	WinActivate	
	sleep 400
	MouseClick, left,1302,895
	Gui, GUI_Overlay:Show
}		;ACTIVATE BLUESTACK WINDOW
else
{
	Run,"C:\Program Files\BlueStacks_nxt\HD-Player.exe" --instance Nougat32 --cmd launchApp --package "com.pubg.imobile"
	WinActivate	
	sleep 1000
	;MouseClick, left,1079,17
	Click, 1079 17 Down
	sleep 300
	Click, up			
	sleep 53000
	loop,5
	{
		MouseClick, left,1706,85
		sleep 400
	}
	;Loop,%ads%
	;{
	;	Send {Esc}
	;	sleep 400
	;}
	sleep 1000
	MouseClick, left,1302,895
	Gui, GUI_Overlay:Show
}






;-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-MAIN LOOP-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-


Main:
Loop, 
{
	
	If (two=-1)		;SLEEP ACCORDING TO: FIRST RUN OR COMING FROM OTHER CHANNEL
		sleep 700
	else
		sleep 6900

	second:
	currName =% names[m]		;SEELCTING NAME TO BE USED
	nname =% names[m]		;SHOWING NEXT NAME SELECTED ON GUI
	;msg1=THANKS %currName% FOR[POPULARITY][660UCēSENT]CHECKFAST
	;msg3=JISKO[#UCēCHAHIYE]VO[#FREEēPOPULARITY]BHEJO I'm[#UCGIFTER] 
	;msg3=JO BHI[#FREEēPOPULARITY]BHEJEGA USKO[#UCēMILEGI]I'm[#UCGIFTER]
	emoji := "%64"
	msg1=#THANKSē%currName%ēFORēPOPULARITYē660UCēSENTēCHECKFAST
	if Mod(A_Index,2)=0
	{
		msg3=#JISKOēUCēCHAHIYEēVOēFREEēPOPULARITYēBHEJOēJALDI
		msg1=#ABHIē%currName%ēKOēUCēBHEJDIēAURēKISKOēCHAHIYE?
		;msg1=#THANKSē%currName%ēFORēALANWKē325UCēSENTēCHECK
	}
	Else
	{
		msg3=#JALDIēSEēFREEēPOPULARITYēDOēFORēUCēēI'mUCGIFTER
		;msg3=#JOēBHIēFREEēPOPULARITYēBHEJEGAēUSKOēUCēMILEGI
		msg1=#THANKSē%currName%ēFORēFREEēPOPē325UCēSENTēCHECK
	}
	;JISKO #UC CHAHIYE VO #FREEēPOPULARITY BHEJO I'm #UCGIFTER 
	
	;msg3=JOēTHODIēBHIēPOPULARITYēBHEJEGAēUSKOēUCēMILEGIēTRYIT
	sleep 500
	MouseClick, left,380,180		;SELECTING ENG CHANNEL
	sleep 300
	MouseClick, left, 694,1004		;CLICK ON TEXT BOX TO TYPE
	sleep 500
	Send +{Home}
	sleep 100
	send {BS}			;DELETING PREVIOUS TEXT IN TEXT BOX IN CASE OF ERRORS (SHIFT+HOME+BACKSPACE)
	sleep 200
	;sendraw #		;SENDING # TO MAKE TEXT COLOR YELLOW
	;sleep 100

	If Mod(num, 3)=0		;ALTERNATING MESSAGES
	{
   		Sendraw %msg1%%emoji%
		if (m < names.MaxIndex())		;CHECK IF LAST NAME IN ARRAY IS USED (RESET IF LAST OR SELECT NEXT NAME IF NOT LAST) 
			m:=m+1
		else
			m=1
		;sendraw %64
	}
	else
	{
		;Send 10Chickenē60UCē5Bikeē120UCē1AlanWalkerē660UCēUCēMILEGI!
		Sendraw %msg3%%emoji%
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
	sleep 500
	
	If Mod(two, 7)=0		;TO SEND IN HINDI AND PUBLIC CHANNEL OR NOT. ALSO CHECKING FOR CRASH
	{
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
		SendRAW %msg1%%emoji%
		pmsg++
		sleep 800
		;MouseClick, left, 1062,975
		Click, 1062 975 Down
		sleep 100
		Click, up
		
		sleep 500
	
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
		Sendraw %msg1%%emoji%
		hmsg++
		sleep 800
		;MouseClick, left, 1062,975
		Click, 1062 975 Down
		sleep 100
		Click, up

		two++
		msg:=num-1
		sleep 300
		;;if % MemUsage("hd-player.exe")
		PixelSearch, Px, Py, 1062,975,1064,977, 0xFFCB38, 8, RGB
		if ErrorLevel
		{
			PixelSearch, Px1, Py1, 121,228,122,229, 0xDC2F2F, 5, RGB
			if ErrorLevel
				Goto, Crash
			else
				Goto, Second
		}	
		else
		{
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
}

Crash:
{
		Send #{PrintScreen}
		sleep 300
		Process, Close, HD-Player.exe
		Gui, GUI_Overlay:Hide
		sleep 1000
		Run,"C:\Program Files\BlueStacks_nxt\HD-Player.exe" --instance Nougat32 --cmd launchApp --package "com.pubg.imobile"
		WinActivate	
		sleep 1000
		;MouseClick, left,1079,17
		Click, 1079 17 Down
		sleep 300
		Click, up			
		sleep 53000
		loop,5
		{
			MouseClick, left,1706,85
			sleep 400
		}
		
		;Loop,%ads%
		;{
		;	Send {Esc}
		;	sleep 400
		;}
		sleep 1000
		MouseClick, left,1302,895
		rest++
		Gui, GUI_Overlay:Show
		Goto, Main
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

F9::Pause
F10::ExitApp
