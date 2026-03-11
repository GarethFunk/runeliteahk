#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.


#Include boomerangclick.ahk


; default bounds
x_min := 2810
y_min := 1720
x_max := 3776
y_max := 2066


BoostClick()
{
    x := -1
    y := -1
    global x_min
    global y_min
    global x_max
    global y_max
    PixelSearch, x, y, x_min, y_min, x_max, y_max, 0x00FFFF , 0, Fast RGB
    BoomerangHitboxClick(x, y, 20, 20, false, false, true)
    return
}



space::
BoostClick()
Return


/::
Suspend, On
Send, /
Return

Enter::
Suspend, Off
Send, {Enter}
Return