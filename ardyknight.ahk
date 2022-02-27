#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include, backpack.ahk

; View requirements:
; Camera facing west, at lowest possible angle, max zoom in
; Inventory Requirements:
; Slot 1 free fro coin pouchs
; Food in Slots 2 - N 
; Specify N below


; Spam click on 1
; Open coin pouch on 2
; Eat next cake on 3

pickpocketing:=False

ClickKnight()
{
    Click
    Random, slep, 600, 900
    Sleep, %slep% ; Wait for cursor to catch up with click action
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

OpenPouch()
{
    ; Open coin pouches
    global pickpocketing = False
    BackpackClick(1)
    return
}

EatCake()
{
    global pickpocketing = False
    static eat_count:=0
    first_cake_slot:=2
    final_cake_slot:=21
    cake_slot:= floor(first_cake_slot + (eat_count / 3))
    if(cake_slot <= final_cake_slot)
    {
        BackpackClick(cake_slot)
        eat_count += 1
    }
    else
    {
        MsgBox, Out of cakes!
        eat_count = 0
    }
    return
}

1::
global pickpocketing = True
Loop
{
    if(pickpocketing)
    {
        ClickKnight()
    }
    else
    {
        Break
    }
}
return

2::
OpenPouch()
return

3::
EatCake()
return

Esc::
global pickpocketing = False
