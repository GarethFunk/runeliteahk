#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.

; Clicks and returns to original position
BoomerangClick(x, y)
{
	MouseGetPos, xpos, ypos
	Click, %x% %y%
	; Return cursor to orignal position
	MouseMove, %xpos%, %ypos%
	return
}
