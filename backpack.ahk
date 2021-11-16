#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.

#Include, item_inventory_clicking.ahk

; Slots 1 to 28, top left to bottom right
; Inventory hitboxes are 64x64 squares
; 21px gap in x
; 9px gap in y
; origin is 1200, 454

BackpackClick(slot)
{
	slot -= 1 ; Adjust to zero index
	ItemInventoryClick(slot, 4, 8, 21, 9, 1200, 454, 64, 64)
}

BackpackRightClick(slot, menu_item)
{
	slot -= 1 ; Adjust to zero index
	ItemInventoryRightClick(slot, menu_item, 4, 8, 21, 9, 1200, 454, 64, 64)
}
