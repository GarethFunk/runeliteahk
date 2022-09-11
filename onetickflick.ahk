#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include boomerangclick.ahk

interval := 3000

AutoFlick() {
    ; Original click location must be on the prayer orb, at the start of a tick
    ; Prayer On - single click
    MouseGetPos, prayer_x, prayer_y
    Click, prayer_x, prayer_y
    Sleep, 600
    Loop
    {
        if GetKeyState("2")
        {
            ; Prayer Off
            BoomerangClick(prayer_x, prayer_y)
            Break
        }
        else
        {
            Random, s, 75, 100
            ; Prayer Off
            BoomerangClick(prayer_x, prayer_y)
            ; Double click delay wait
            Sleep, %s%
            ; Prayer Off
            BoomerangClick(prayer_x, prayer_y)
            ; Wait for rest of tick
            remainder =  550 - s
            Sleep, %remainder%
        }
    }
}

1::AutoFlick()

ESC::suspend