Gui, Color, Black

Gui, -caption +toolwindow +AlwaysOnTop

Gui, font, s20, MS Gothic

Gui, add, text, vTX cBlue TransColor, Mega: 

Gui, Show, % "x" A_ScreenWidth--600 " y" A_ScreenHeight-70 ,TRANS-WIN

WinSet, TransColor, Black, TRANS-WIN

#Include Mega Timer.ahk

return