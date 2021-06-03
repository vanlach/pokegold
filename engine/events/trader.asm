Trader::
	ld hl, TraderText
	call PrintText
	call YesNoBox
	ld hl, TraderCanceledText
	jr c, .done

	ld b, PARTYMENUACTION_GIVE_MON
	farcall SelectTradeOrDayCareMon
	ld a, [wCurPartyMon]
	ld hl, TraderCanceledText
	jr c, .done

	ld hl, NPCTradeCableText
	call PrintText

	call TradeWithTrader
	call RestartMapMusic

	ld hl, TraderCompleteText
	call PrintText
	ret
.done
	call PrintText
	ret

TradeWithTrader:
	ld a, LINK_TRADECENTER
	ld [wLinkMode], a

	ld hl, wPlayerName
	ld de, wPlayerTrademonSenderName
	ld bc, NAME_LENGTH
	call CopyBytes

	ld hl, .Trader
	ld de, wOTTrademonSenderName
	ld bc, NAME_LENGTH
	call CopyBytes
.Trader
	db "Trader@"

	ld a, [wCurPartyMon]
	ld hl, wPartySpecies
	ld b, 0
	ld c, a
	add hl, bc
	ld a, [hl]
	ld [wPlayerTrademonSpecies], a
	ld [wOTTrademonSpecies], a

	ld hl, wPartyMon1ID
	ld a, [wCurPartyMon]
	call GetPartyLocation
	ld a, [hli]
	ld [wPlayerTrademonID], a
	ld [wOTTrademonID], a
	ld a, [hl]
	ld [wPlayerTrademonID + 1], a
	ld [wOTTrademonID + 1], a

	ld a, [wCurPartyMon]
	ld hl, wPartyMonOT
	call SkipNames
	ld de, wPlayerTrademonOTName
	ld bc, NAME_LENGTH
	call CopyBytes

	ld hl, wPartyMonOT
	ld de, wOTTrademonOTName
	ld bc, NAME_LENGTH
	call CopyBytes

	ld a, 1
	ld [wForceEvolution], a

	call DisableSpriteUpdates
	ld a, [wTradeDialog]
	push af
	predef TradeAnimation
	callfar EvolvePokemon
	pop af
	ld [wTradeDialog], a
	call ReturnToMapWithSpeechTextbox

	ld a, LINK_NULL
	ld [wLinkMode], a
	ret

TraderText::
	text "Hello <PLAYER>!"

	para "I'm one of Prof."
	line "Elm's new aides."
	
	para "I'm able to help"
	line "you evolve"
	cont "#mon."

	para "I can trade a"
	line "#mon of your"
	cont "choice back to"
	cont "you."

	para "Would you like"
	line "to trade?"
	done

TraderCanceledText::
	text "Come back if"
	line "you need to trade"
	cont "a #mon."
	done

TraderCompleteText::
	text "And… Done!"

	para "Come back if you"
	line "have more #mon"
	cont "to trade."
	done