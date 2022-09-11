#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include shop.ahk
#Include interface.ahk
#Include backpack.ahk
#Include lunars.ahk

1::
; Sell lantern lenses
BackpackRightClick(1, 5)
Sleep, 600
; Buy 10 sand
ShopBuy(21, 10)
Sleep, 600
; Buy 10 soda ash
ShopBuy(23, 10)
Sleep, 600
; Close shop
ShopClose()
Sleep, 600
; Open Inventory
OpenBackpack()
return

2::
; Open spellbook2
OpenMagicMenu()
Sleep, 600
; Cast superglass make
SuperglassMake()
Sleep, 1200
; Open Inventory
OpenBackpack()
Sleep, 600
; Use glassblowing pipe...
BackpackClick(21)
Sleep, 600
; ... on molten glass
BackpackClick(1)
Sleep, 1200 ; wait for interface to open
; Choose opetion 7
Send, 7
return

3::
; World hop
send, ^+{RIGHT}
return

