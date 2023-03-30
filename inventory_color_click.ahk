#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.

#Include boomerangclick.ahk


; Click on Red
1::
Suspend On
x := -1
y := -1
PixelSearch, x, y, 2980, 1400, 3840, 2080, 0xFF0000 , 0, Fast RGB
BoomerangClick(x, y)
Suspend Off
return

; Click on Green
2::
Suspend On
x := -1
y := -1
PixelSearch, x, y, 2980, 1400, 3840, 2080, 0x00FF00 , 0, Fast RGB
BoomerangClick(x, y)
Suspend Off
return

; Click on Blue
3::
Suspend On
x := -1
y := -1
PixelSearch, x, y, 2980, 1400, 3840, 2080, 0x0000FF , 0, Fast RGB
BoomerangClick(x, y)
Suspend Off
return

; Click on Magenta
4::
Suspend On
x := -1
y := -1
PixelSearch, x, y, 2980, 1400, 3840, 2080, 0xFF00FF , 0, Fast RGB
BoomerangClick(x, y)
Suspend Off
return

; Click on Yellow
5::
Suspend On
x := -1
y := -1
PixelSearch, x, y, 2980, 1400, 3840, 2080, 0xFFFF00 , 0, Fast RGB
BoomerangClick(x, y)
Suspend Off
return

; Click on Cyan
6::
Suspend On
x := -1
y := -1
PixelSearch, x, y, 2980, 1400, 3840, 2080, 0x00FFFF , 0, Fast RGB
BoomerangClick(x, y)
Suspend Off
return