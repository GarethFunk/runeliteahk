#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.

#Include item_inventory_clicking.ahk

SpellClick(slot)
{
	slot -= 1 ; Adjust to zero index
	ItemInventoryClick(slot, 5, 9, 31, 12, 1354, 578, 29, 29)
    return
}

SuperglassMake()
{
    SpellClick(21)
    return
}
