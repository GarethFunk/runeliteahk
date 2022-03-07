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
ItemInventoryClick(index, grid_x, grid_y, space_x, space_y, origin_x, origin_y, hitbox_x, hitbox_y, rightclick:=false)
{
	; Calculate position of top left of slot hitbox within grid
	slot_x := Mod(index, grid_x) * (hitbox_x + space_x)
	slot_y := (index // grid_x) * (hitbox_y + space_y)
	; Adjust for origin coordinates
	slot_x += origin_x
	slot_y += origin_y
	; Click on slot
	return BoomerangHitboxClick(slot_x, slot_y, hitbox_x, hitbox_y, rightclick)
}

ItemInventoryRightClick(item_index, menu_index,  grid_x, grid_y, space_x, space_y, origin_x, origin_y, hitbox_x, hitbox_y)
{
	; Right-click the inventory item
	clicked_coords:= ItemInventoryClick(item_index, grid_x, grid_y, space_x, space_y, origin_x, origin_y, hitbox_x, hitbox_y, true)
	Sleep, 50 ; wait for menu to render
	; Assuming menu position - not always a safe assumption
	; Only going to move vertically with the click
	menu_origin_x:= clicked_coords["xclicked"] ; Almost  perfectly safe assumption
	menu_origin_y:= clicked_coords["yclicked"] + 39 ;  Only safe when menu is not close to bottom of screen
	; 1px gap between menu items
	; menu item hitboxes are 29 tall
	menu_index -= 1 ; convert to zero index
 	ItemInventoryClick(menu_index, 1, 0, 0, 1, menu_origin_x, menu_origin_y, 0, 29)
 	; Return cursor to orignal position
	MouseMove, clicked_coords["xstart"], clicked_coords["ystart"]
	return
}
