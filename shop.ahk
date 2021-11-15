#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.

#Include, item_inventory_clicking.ahk

; Slots 1 to 40, top left to bottom right
; Origin is 204, 153
; 31px gap in x
; 31px gap in y
; Shop hitboxes are 64x64 squares

ShopClick(slot)
{
	slot -= 1 ; Adjust to zero index
	ItemInventoryClick(slot, 8, 5, 31, 31, 204, 153, 64, 64)
}

; Close the UI by clicking on the X
ShopClose()
{
	Random, xclick, 0, 44
	Random, yclick, 0, 44
	xclick += 1009
	yclick += 85
	; Click on X
	BoomerangClick(xclick, yclick)
	return
}
