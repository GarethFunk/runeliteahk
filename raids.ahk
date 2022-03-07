#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include prayer.ahk
#Include interface.ahk

1::
{
    ProtectFromMagic()
    return
}

2::
{
    ProtectFromMissiles()
    return
}

3::
{
    ProtectFromMelee()
    return
}

XButton1::
{
    Augury()
    return
}

XButton2::
{
    Rigour()
    return
}

6::
{
    Piety()
    return
}

7::
{
    SpecialAttack()
    return
}

8::
{
    ToggleRun()
    return
}