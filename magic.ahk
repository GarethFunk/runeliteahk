#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.

#Include, item_inventory_clicking.ahk

; Slots 1 to 70, top left to bottom right
; Spell hitboxes are 28x28 squares
; 24px gap in x
; 20px gap in y
; origin is 1180, 447

SpellClick(slot)
{
	slot -= 1 ; Adjust to zero index
	ItemInventoryClick(slot, 7, 10, 24, 20, 1180, 447, 28, 28)
}

TelekineticGrab()
{
    SpellClick(20)
}

HighAlchemy()
{
    SpellClick(35)
}

1::
TelekineticGrab()
;HighAlchemy()



