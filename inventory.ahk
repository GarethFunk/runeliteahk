#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.

; Slots 1 to 28, top left to bottom right
; Inventory hitboxes are 64x64 squares
; 21px gap in x
; 9px gap in y

InventorySlotClick(slot)
{
	MouseGetPos, xpos, ypos
	Random, xclick, 0, 64
	Random, yclick, 0, 64
	slot -= 1 ; For easier modulo arithmetic (0-27)
	; Calculate position of top left of slot hitbox within grid
	slot_x := Mod(slot, 4) * (64 + 21)
	slot_y := (slot // 4) * (64 + 9)
	; Adjust for window coordinates
	slot_x += 1200
	slot_y += 454
	; Combine with random variables
	xclick += slot_x
	yclick += slot_y
	; Click on slot
	Click, %xclick% %yclick%
	; Return cursor to orignal pos
	MouseMove, %xpos%, %ypos%
	return
}
