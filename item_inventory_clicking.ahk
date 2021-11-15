#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.

#include boomerangclick.ahk

; index - 0 indexed
; grid_x - grid slot dimensions e.g. backpack is 4 x 8
; grid_y 
; space_x - x gap between hitboxes
; space_y - y gap between hitboxes
; origin_x - origin of the inventory grid
; origin_y 
; hitbox_x - hitbox dimensions
; hitbox_y 
ItemInventoryClick(index, grid_x, grid_y, space_x, space_y, origin_x, origin_y, hitbox_x, hitbox_y)
{
	; Calculate position of top left of slot hitbox within grid
	slot_x := Mod(index, grid_x) * (hitbox_x + space_x)
	slot_y := (index // grid_x) * (hitbox_y + space_y)
	; Adjust for origin coordinates
	slot_x += origin_x
	slot_y += origin_y
	; Click on slot
	BoomerangHitboxClick(slot_x, slot_y, hitbox_x, hitbox_y)
	return
}
