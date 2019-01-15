#NoEnv    
#SingleInstance, Force
SetBatchLines, -1  

; ---------------------- PROJECT CODE BELOW ----------------------

Menu, Tray, Icon, Shell32.dll, 3 ; Custom Icon pulled from Shell32
Menu, tray, tip, %A_ScriptName% ; Custom traytip

; Trigger hotkey
F1::
    timerCount := 30 ; Change me
    Gosub, Sub_ShowOverlay
return

; Creates and shows the GUI
Sub_ShowOverlay:
    Gui, GUI_Overlay:New, +ToolWindow  +LastFound +AlwaysOnTop -Caption +hwndGUI_Overlay_hwnd
    Gui, Margin, 10, 10
    Gui, Font, s20 q4, MS Gothic
    Gui, Add, Text, w400 Center vTEXT_Timer cRed, %timerCount% 
    
    Gui, Color, Black
	Gui, Show, % "x" A_ScreenWidth--500 " y" A_ScreenHeight-65 ,TRANS-WIN
	WinSet, TransColor, Black, TRANS-WIN
	
    Gui, GUI_Overlay:Show
	WinSet, TransColor, Black, TRANS-WIN

    SetTimer, Timer_Countdown, 1000
return

; Does the countdown and updating of the timer
Timer_Countdown:
    if (timerCount == 1) {
        SetTimer, Timer_Countdown, Off
        Gui, GUI_Overlay:Destroy
    }

    timerCount--
    GuiControl, GUI_Overlay:, TEXT_Timer, %timerCount%
return