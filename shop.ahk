#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.

#Include item_inventory_clicking.ahk
#Include boomerangclick.ahk

ShopBuy(slot)
{
	; This assumes you have used RuneLite to rebind shift-click to the desired quantity
	slot -= 1 ; Adjust to zero index
	shop_grid_x:= 8
	shop_grid_y:= 5
	shop_space_x:= 28
	shop_space_y:= 26
	shop_origin_x:= 386
	shop_origin_y:= 242
	shop_hitbox_x:= 43
	shop_hitbox_y:= 45
	ItemInventoryClick(slot, menu_item_buy1, shop_grid_x, shop_grid_y, shop_space_x, shop_space_y, shop_origin_x, shop_origin_y, shop_hitbox_x, shop_hitbox_y, false, true)
	; allow time to process - server interaction
	Random, s, 300, 600
	Sleep, %s%
	return
}

; Close the UI by using Escape (require Runescpae Interface settings to be adjusted)
ShopClose()
{
	Send {ESC}
	return
}
