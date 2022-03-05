#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.

#Include, item_inventory_clicking.ahk

; Slots 1 to 29, top left to bottom right
; Spell hitboxes are 64x64 squares
; 10px gap in x
; 10px gap in y
; origin is 1176, 456

PrayerClick(slot)
{
    Send {F2}  ; Requires F2 to be configured as prayer tab in game settings
    Sleep 50
	slot -= 1 ; Adjust to zero index
	ItemInventoryClick(slot, 5, 5, 10, 10, 1176, 456, 64, 64)
    Sleep 50
    Send {Esc}  ; Requires F1 to be configures as Invetory tab in game settings
}

ProtectFromMagic()
{
    PrayerClick(17)
}

ProtectFromRanged()
{
    PrayerClick(18)
}

ProtectFromMelee()
{
    PrayerClick(19)
}
