Gui, Color, Black

Gui, -caption +toolwindow +AlwaysOnTop

Gui, font, s20, MS Gothic

Gui, add, text, vTX cGreen TransColor, Armor: 

Gui, Show, % "x" A_ScreenWidth--600 " y" A_ScreenHeight-100 ,TRANS-WIN

WinSet, TransColor, Black, TRANS-WIN

#Include Armor Timer.ahk

return