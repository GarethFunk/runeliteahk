#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include shop.ahk
#Include interface.ahk
#Include backpack.ahk
#Include lunars.ahk

1::
Suspend, On
; Sell lantern lenses
BackpackClick(1, true)
Sleep, 600
; Buy sand (runelite configured to shift click = buy 10)
ShopBuy(21)
Sleep, 600
; Buy soda ash (runelite configured to shift click = buy 10)
ShopBuy(23)
Sleep, 600
; Close shop
ShopClose()
Sleep, 600
; Open Inventory
OpenBackpack()
Suspend, Off
return

2::
Suspend, On
; Open spellbook
OpenMagicMenu()
Sleep, 600
; Cast superglass make
SuperglassMake()
Sleep, 1200
; Open Inventory
OpenBackpack()
Sleep, 600
; Use glassblowing pipe... (placed in slot #21)
BackpackClick(21)
Sleep, 600
; ... on molten glass
BackpackClick(1)
Sleep, 1200 ; wait for interface to open
; Choose option 7
Send, 7
Suspend, Off
return

3::
Suspend, On
; World hop
send, ^+{RIGHT}
Suspend, Off
return

