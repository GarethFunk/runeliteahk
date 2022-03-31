#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.

; Clicks and returns to original position
BoomerangClick(x, y, rightclick:=false, shiftclick:=false)
{
	MouseGetPos, xpos, ypos
	if(shiftclick)
	{
		Send {ShiftDown}
	}
	if (rightclick = true)
	{
		Click, %x% %y% Right
	}
	else
	{
		Click, %x% %y%
		; Return cursor to orignal position on left clicks
		MouseMove, %xpos%, %ypos%
	}
	if(shiftclick)
	{
		Send {ShiftUp}
	}
	coords:= {xstart: xpos, ystart: ypos, xclicked: x, yclicked: y}
	return coords
}

BoomerangHitboxClick(x, y, hitbox_w, hitbox_h, rightclick:=false, shiftclick:=false)
{
	Random, xclick, 0, %hitbox_w%
	Random, yclick, 0, %hitbox_h%
	xclick += x
	yclick += y
	return BoomerangClick(xclick, yclick, rightclick, shiftclick)
}
