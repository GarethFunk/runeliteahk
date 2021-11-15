#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include, interface.ahk

1::
ResetCamera()
Sleep, 500
ToggleQuickPrayers()
Sleep, 500
SpecialAttack()
Sleep, 500
OpenCombatOptions()
Sleep, 500
OpenSkills()
Sleep, 500
OpenQuestList()
Sleep, 500
OpenBackpack()
Sleep, 500
OpenWornEquipment()
Sleep, 500
OpenPrayerMenu()
Sleep, 500
OpenMagicMenu()
Sleep, 500
OpenGroupingMenu()
Sleep, 500
OpenFriendsList()
Sleep, 500
OpenAccountManagement()
Sleep, 500
OpenLogout()
Sleep, 500
OpenSettings()
Sleep, 500
OpenEmotes()
Sleep, 500
OpenMusicPlayer()
return
