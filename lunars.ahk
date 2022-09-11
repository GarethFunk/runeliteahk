#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.

#Include item_inventory_clicking.ahk

SpellClick(slot)
{
	slot -= 1 ; Adjust to zero index
	ItemInventoryClick(slot, 5, 9, 42, 16, 1176, 439, 38, 38)
    return
}

SuperglassMake()
{
    SpellClick(21)
    return
}
