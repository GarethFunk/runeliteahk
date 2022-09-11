#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

CoordMode, Pixel, Screen
CoordMode, Mouse, Screen


Spam() {
	Loop
	{
		if GetKeyState("2")
		{
			Break
		}
  
		Random, s, 300, 600
        MouseGetPos, x, y
        PixelGetColor, c, %x%, %y%
        if (c = 0x00FF00)
        {
		    Click
        }
		Sleep, %s%
	}
}

1::Spam()

ESC::suspend