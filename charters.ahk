#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include shop.ahk
#Include interface.ahk
#Include backpack.ahk

1::
; Buy 10 sand
ShopBuy(21, 10)
Sleep, 500
; Buy 10 soda ash
ShopBuy(23, 10)
Sleep, 500
; Close shop
ShopClose()
Sleep, 500
; Run On
ToggleRun()
Sleep, 500
; Open Inventory
OpenBackpack()
return

2::
; Run Off
ToggleRun()
Sleep, 500
; Use glassblowing pipe...
BackpackClick(21)
Sleep, 500
; ... on molten glass
BackpackClick(17)
Sleep, 1000 ; wait for interface to open
; Choose opetion 7
Send, 7
return

3::
; Sell 10 buckets
BackpackRightClick(10, 4)
Sleep, 500
; Sell 10 lantern lenses
BackpackRightClick(11, 4)
Sleep, 500
; Close shop
ShopClose()
Sleep, 500
; Open world hop dialogue
OpenLogout()
Sleep, 500
return

ESC::suspend
