LoadBattleMenu:
	ld hl, BattleMenuHeader
	jr _BattleMenuCommon
	ret

SafariBattleMenu: ; unreferenced
	ld hl, SafariBattleMenuHeader
	call LoadMenuHeader
	jr _BattleMenuCommon

ContestBattleMenu:
	ld hl, ContestBattleMenuHeader
	; fallthrough

_BattleMenuCommon:
	call LoadMenuHeader
	ld a, [wBattleMenuCursorBuffer]
	ld [wMenuCursorBuffer], a
	ld b, QUICK_B
	ld a, [wBattleType]
	cp BATTLETYPE_CONTEST
	jr z, .ok
	ld b, QUICK_B | QUICK_START | QUICK_SELECT
	ld a, [wBattleMode]
	dec a
	ld a, QUICK_START | QUICK_SELECT
	jr nz, .ok2
.ok
	ld a, b
.ok2
	ld [wBattleMenuFlags], a
	call _2DMenu
	ld a, [wBattleMenuFlags]
	and QUICK_PACK
	ld [wBattleMenuFlags], a
	ld a, [wMenuCursorBuffer]
	ld [wBattleMenuCursorBuffer], a
	jp ExitMenu

BattleMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 8, 12, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db $91
	dn 2, 2 ; rows, columns
	db 6 ; spacing
	dba .Text
	dbw BANK(@), NULL

.Text:
	db "Fight@"
	db "<PK><MN>@"
	db "Pack@"
	db "Run@"

SafariBattleMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 12, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	dn 2, 2 ; rows, columns
	db 11 ; spacing
	dba .Text
	dba .PrintSafariBallsRemaining

.Text:
	db "サファりボール×　　@" ; "SAFARI BALL×  @"
	db "エサをなげる@" ; "THROW BAIT"
	db "いしをなげる@" ; "THROW ROCK"
	db "にげる@" ; "RUN"

.PrintSafariBallsRemaining:
	hlcoord 17, 13
	ld de, wSafariBallsRemaining
	lb bc, PRINTNUM_LEADINGZEROS | 1, 2
	call PrintNum
	ret

ContestBattleMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 2, 12, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db $91
	dn 2, 2 ; rows, columns
	db 12 ; spacing
	dba .Text
	dba .PrintParkBallsRemaining

.Text:
	db "Fight@"
	db "<PK><MN>@"
	db "Parkball×  @"
	db "Run@"

.PrintParkBallsRemaining:
	hlcoord 13, 16
	ld de, wParkBallsRemaining
	lb bc, PRINTNUM_LEADINGZEROS | 1, 2
	call PrintNum
	ret
