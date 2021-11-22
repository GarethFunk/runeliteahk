#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include, backpack.ahk

; Requires camera at max zoom, pointing north
ClickKnight()
{
    PixelSearch, px, py, 341, 599, 814, 601, 0xffff00, 0, Fast 
    if ErrorLevel
    {
        OutputDebug, Knight location not found
    }
    else
    {
        ;OutputDebug, Knight found at anchor X%Px% Y%Py%.
        Px += 59
        Py -= 72
        MouseMove, %Px%, %Py%, 25
        Sleep, 100 ; Wait for cursor to catch up with click action
        Click
    }
    return
}

CheckStunned()
{
    PixelSearch, px, py, 1042, 656, 1048, 662, 0x000000, 0, Fast
    if ErrorLevel
    {
        ; No stunned symbol found
    }
    else
    {
        ; Stunned symbol found
        return True
    }
    return False
}

1::
stun_count:=0
pickpocket_count:=0
cake_count:=15
Loop
{
    if GetKeyState("2")
    {
        Break
    }
    Random, s, 100, 300
    Sleep, %s%
    is_stunned:= CheckStunned()
    if (is_stunned = True)
    {
        stun_count +=1
        OutputDebug, Stunned
        Sleep, 2000
        if(stun_count >= 5)
        {
            ; Lost 12hp -> Eat a cake
            if(cake_count <= 0)
            {
                MsgBox, Out of cakes!
                Break
            }
            else
            {
                OutputDebug, 4 hits counted: eating one cake
                ; First cake is in slot 
                next_cake_slot:= 17 - cake_count
                BackpackClick(next_cake_slot)
                Sleep, 2000
                BackpackClick(next_cake_slot)
                Sleep, 2000
                BackpackClick(next_cake_slot)
                Sleep, 500
                cake_count -= 1
                stun_count = 0
            }
        }
        else
        {
            Random, o, 0, 48
            if(o < pickpocket_count)
            {
                ; Open coin pouches
                BackpackClick(1)
                pickpocket_count = 0
            }
            Sleep, 3000
        }
    }
    else
    {
        OutputDebug, Not Stunned: Attempting pickpocket
        ClickKnight()
        pickpocket_count += 1
    }
}
return
