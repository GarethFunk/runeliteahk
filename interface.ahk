#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.

#Include boomerangclick.ahk

ResetCamera()
{
	BoomerangHitboxClick(1154, 38, 56, 55)
	return
}

ToggleQuickPrayers()
{
	BoomerangHitboxClick(1099, 187, 97, 49)
	return
}

ToggleRun()
{
	BoomerangHitboxClick(1169, 252, 40, 40)
	return
}

SpecialAttack()
{
	; Unvalidated coordinates
	BoomerangHitboxClick(1213, 302, 40, 40)
	return
}

OpenCombatOptions()
{
	Send {F1}
	return
}

OpenSkills()
{
	Send {F2}
	return
}

OpenQuestList()
{
	Send {F3}
	return
}

OpenBackpack()
{
	Send {ESC}
	return
}

OpenWornEquipment()
{
	Send {F4}
	return
}

OpenPrayerMenu()
{
	Send {F5}
	return
}

OpenMagicMenu()
{
	Send {F6}
	return
}

OpenGroupingMenu()
{
	Send {F7}
	return
}

OpenFriendsList()
{
	Send {F8}
	return
}

OpenAccountManagement()
{
	Send {F9}
	return
}

OpenLogout()
{
	; Default keybinds does not bind logout key
	return
}

OpenSettings()
{
	Send {F10}
	return
}

OpenEmotes()
{
	Send {F11}
	return
}

OpenMusicPlayer()
{
	Send {F12}
	return
}
