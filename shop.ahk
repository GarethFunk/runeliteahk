#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.

#Include, item_inventory_clicking.ahk
#include, boomerangclick.ahk

ShopBuy(slot, quantity)
{
	slot -= 1 ; Adjust to zero index
	shop_grid_x:= 8
	shop_grid_y:= 5
	shop_space_x:= 31
	shop_space_y:= 31
	shop_origin_x:= 204
	shop_origin_y:= 153
	shop_hitbox_x:= 64
	shop_hitbox_y:= 64
	menu_item_buy1 = 2
	menu_item_buy5 = 3
	menu_item_buy10 = 4
	menu_item_buy50 = 5
	while (quantity > 0)
	{
		if (quantity >= 50)
		{
			ItemInvetoryRightClick(slot, menu_item_buy50, shop_grid_x, shop_grid_y, shop_space_x, shop_space_y, shop_origin_x, shop_origin_y, shop_hitbox_x, shop_hitbox_y)
			quantity -= 50
		}
		else if (quantity >= 10)
		{
			ItemInvetoryRightClick(slot, menu_item_buy10, shop_grid_x, shop_grid_y, shop_space_x, shop_space_y, shop_origin_x, shop_origin_y, shop_hitbox_x, shop_hitbox_y)
			quantity -= 10
		}
		else if (quantity >= 5)
		{
			ItemInvetoryRightClick(slot, menu_item_buy5, shop_grid_x, shop_grid_y, shop_space_x, shop_space_y, shop_origin_x, shop_origin_y, shop_hitbox_x, shop_hitbox_y)
			quantity -= 5
		}
		else
		{
			ItemInvetoryRightClick(slot, menu_item_buy1, shop_grid_x, shop_grid_y, shop_space_x, shop_space_y, shop_origin_x, shop_origin_y, shop_hitbox_x, shop_hitbox_y)
			quantity -= 1
		}
		Sleep, 250 ; allow time to process - server interaction
	}
}

; Close the UI by clicking on the X
ShopClose()
{
	BoomerangHitboxClick(1009, 85, 44, 44)
	return
}
