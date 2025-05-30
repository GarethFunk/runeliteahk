#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.


#Include boomerangclick.ahk

; state machine var
state := 1

; default bounds
x_min := 100
y_min := 100
x_max := 3840
y_max := 2160

Slep(min:=450, max:=650)
{
    Random, s, min, max
    Sleep, %s%
}

CharterClick()
{
    x := -1
    y := -1
    global x_min
    global y_min
    global x_max
    global y_max
    PixelSearch, x, y, x_min, y_min, x_max, y_max, 0x00FFFF , 0, Fast RGB
    BoomerangHitboxClick(x, y, 10, 50, false, false, false)
    return
}

SellGlassBuyandMake()
{
    x := -1
    y := -1
    global x_min
    global y_min
    global x_max
    global y_max
    ; Sell glass
    PixelSearch, x, y, x_min, y_min, x_max, y_max, 0x880088 , 0, Fast RGB
    BoomerangHitboxClick(x, y, 50, 50, false, false, false)
    Slep()
    ; Buy Sand
    PixelSearch, x, y, x_min, y_min, x_max, y_max, 0x00FF00 , 0, Fast RGB
    BoomerangHitboxClick(x, y, 50, 50, false, false, false)
    Slep()
    ; Buy Soda Ash
    PixelSearch, x, y, x_min, y_min, x_max, y_max, 0xFF00FF , 0, Fast RGB
    BoomerangHitboxClick(x, y, 50, 50, false, false, false)
    Slep()
    ; Close shop
    Send, {Esc}
    ; Sleep
    Slep()
    ; Open spellbook
    Send, {F6}
    Slep()
    ; Cast glassmake
    PixelSearch, x, y, x_min, y_min, x_max, y_max, 0xFFFF00 , 0, Fast RGB
    BoomerangHitboxClick(x, y, 50, 50, false, false, false)
    Slep()
    ; Open inventory
    Send, {Esc}
    Slep(1300, 1800)
    ; Click glassblowing pipe
    PixelSearch, x, y, x_min, y_min, x_max, y_max, 0xFF0000 , 0, Fast RGB
    BoomerangHitboxClick(x, y, 50, 50, false, false, false)
    Slep()
    ; Click molten glass
    PixelSearch, x, y, x_min, y_min, x_max, y_max, 0x880088 , 0, Fast RGB
    BoomerangHitboxClick(x, y, 50, 50, false, false, false)
    ; Pause to wait for UI to pop up
    Slep(800, 1200)
    ; choose Lantern lens
    Send, {7}
    return
}

Hop()
{
    ; Send page down to world hop
    Send, {PgDn}
}

space::
global state
Switch state
{
Case 1:
    CharterClick()
    state := 2
    Return
Case 2:
    ; 1080p coords
    ; PixelGetColor, cash, 828, 344
    ; PixelGetColor, csand, 642, 344
    ; refcash := 0x00FFFF
    ; refcsand := 0x00FCFB
    
    ; 4k coords
    PixelGetColor, cash, 768, 882
    PixelGetColor, csand, 582, 882
    refcash := 0x0BA59F
    refcsand := 0x05D8E2

    ; 0x is normal shop colour
    ; 0x is yellow meaning 10 in stock
    OutputDebug, Sand %csand% Ash %cash%
    if ((csand = refcsand) and (cash = refcash)){
        ; 10 in stock of ash and sand
        SellGlassBuyandMake()
        state := 3
    }
    else {
        ; Less than 10 sand or ash
        ; Close shop
        Send, {Esc}
        ; Sleep
        Slep()
        ; Hop()
        Hop()
        state := 1
    }
    Return
Case 3:
    Hop()
    state := 1
    Return

Default:
    ; Reset state machine
    state := 1
}

1::
global state
CharterClick()
state := 2
Return

`::
Suspend, Toggle
Return

/::
Suspend, On
Send, /
Return

Enter::
Suspend, Off
Send, {Enter}
Return