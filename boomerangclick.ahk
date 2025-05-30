#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.

#Include mousemove.ahk
; Clicks and returns to original position
BoomerangClick(x, y, rightclick:=false, shiftclick:=false, boomerang:=true)
{
	MouseGetPos, xpos, ypos
	MouseMove(x, y)
	if(shiftclick)
	{
		Send {ShiftDown}
		Sleep, 50
	}
	if (rightclick = true)
	{
		Click Right
	}
	else
	{
		Click
		if (boomerang = true)
		{
			; Return cursor to orignal position on left clicks
			MouseMove(%xpos%, %ypos%)
		}
	}
	if(shiftclick)
	{
		Sleep, 50
		Send {ShiftUp}
	}
	coords:= {xstart: xpos, ystart: ypos, xclicked: x, yclicked: y}
	return coords
}

BoomerangHitboxClick(x, y, hitbox_w, hitbox_h, rightclick:=false, shiftclick:=false, boomerang:=true)
{
	Random, xclick, 0, %hitbox_w%
	Random, yclick, 0, %hitbox_h%
	xclick += x
	yclick += y
	return BoomerangClick(xclick, yclick, rightclick, shiftclick, boomerang)
}
