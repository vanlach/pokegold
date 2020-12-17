NameMenuHeader:
	db STATICMENU_NO_TOP_SPACING ; flags
	menu_coords 0, 0, 10, TEXTBOX_Y - 1
	dw .Names
	db 1 ; default option

.Names:
	db STATICMENU_CURSOR | STATICMENU_PLACE_TITLE | STATICMENU_DISABLE_B ; flags
	db 5 ; items
	db "New Name@"

PlayerNameArray:
IF DEF(_GOLD)
	db "Gold@"
	db "Hiro@"
	db "Taylor@"
	db "Karl@"
ELIF DEF(_SILVER)
	db "Silver@"
	db "Kamon@"
	db "Oscar@"
	db "Max@"
ENDC
	db 2 ; title indent
	db "Name@" ; title
