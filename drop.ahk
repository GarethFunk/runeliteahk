#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include backpack.ahk


; Drop from start_slot to end_slot using shift dropping
Drop(start_slot, end_slot)
{
    current_slot := start_slot
    Send {ShiftDown}
    while (current_slot <= end_slot)
    {
        BackpackClick(current_slot)
        Random, s, 300, 600
        Sleep, %s%
        current_slot += 1
    }
    Send {ShiftUp}
    return
}
