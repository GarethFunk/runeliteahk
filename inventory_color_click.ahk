#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.

#Include boomerangclick.ahk

; default bounds
x_min := 0
y_min := 0
x_max := 3840
y_max := 2160

; Click on Red
1::
Suspend On
x := -1
y := -1
global x_min
global y_min
global x_max
global y_max
PixelSearch, x, y, x_min, y_min, x_max, y_max, 0xFF0000 , 0, Fast RGB
BoomerangClick(x, y)
Suspend Off
return

; Click on Green
2::
Suspend On
x := -1
y := -1
PixelSearch, x, y, x_min, y_min, x_max, y_max, 0x00FF00 , 0, Fast RGB
BoomerangClick(x, y)
Suspend Off
return

; Click on Blue
3::
Suspend On
x := -1
y := -1
PixelSearch, x, y, x_min, y_min, x_max, y_max, 0x0000FF , 0, Fast RGB
BoomerangClick(x, y)
Suspend Off
return

; Click on Magenta
4::
Suspend On
x := -1
y := -1
PixelSearch, x, y, x_min, y_min, x_max, y_max, 0xFF00FF , 0, Fast RGB
BoomerangClick(x, y)
Suspend Off
return

; Click on Yellow
5::
Suspend On
x := -1
y := -1
PixelSearch, x, y, x_min, y_min, x_max, y_max, 0xFFFF00 , 0, Fast RGB
BoomerangClick(x, y)
Suspend Off
return

; Calibrate inventory top left (cyan)
6::
Suspend On
global x_min = 0
global y_min = 0 
PixelSearch, x_min, y_min, x_min, y_min, x_max, y_max, 0x00FFFF , 0, Fast RGB
if ErrorLevel
    MsgBox, Failed to calibrate inveotry window - reverting to defaults
else
    MsgBox, Invetory window top left calibrated at X%x_min% Y%y_min%.
MouseMove, %x_min%, %y_min%
Suspend Off
return