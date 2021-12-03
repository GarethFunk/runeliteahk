#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include, backpack.ahk

; Hold down 1 to fletch
1::
Random, s1, 100, 250
Random, s2, 100, 250
BackpackClick(1)
Sleep, %s1%
BackpackClick(2)
Sleep, %s2%
return

ESC::suspend
