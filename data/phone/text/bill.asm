BillPhoneMornGreetingText:
	text "Good morning!"

	para "This is the #-"
	line "mon Storage System"

	para "Administration"
	line "Service."
	done

BillPhoneDayGreetingText:
	text "Good day!"

	para "This is the #-"
	line "mon Storage System"

	para "Administration"
	line "Service."
	done

BillPhoneNiteGreetingText:
	text "Good evening!"

	para "This is the #-"
	line "mon Storage System"

	para "Administration"
	line "Service."
	done

BillPhoneGenericText:
	text "Who's calling?"

	para "<PLAYER>, is it?"
	line "Hang on a sec…"

	para "<……>"
	line "<……>"
	done

BillPhoneNotFullText:
	text "Thanks for"
	line "waiting!"

	para "<PLAYER>, your box"
	line "has room for @"
	text_ram wStringBuffer3
	text_start
	cont "more #mon."

	para "Get out there and"
	line "fill it up!"
	done

BillPhoneNearlyFullText:
	text "Thanks for"
	line "waiting!"

	para "<PLAYER>, your box"
	line "has room for only"
	cont "@"
	text_ram wStringBuffer3
	text " more #mon."

	para "Maybe you should"
	line "switch your box."
	done

BillPhoneFullText:
	text "Thanks for"
	line "waiting!"

	para "<PLAYER>, your box"
	line "is full!"

	para "You'll have to"
	line "switch boxes if"

	para "you want to catch"
	line "more #mon."
	done

BillPhoneNewlyFullText:
	text "Hi, <PLAYER>?"
	line "It's me, Bill!"

	para "Thanks for using"
	line "my Storage System."

	para "That last #mon"
	line "you sent filled"
	cont "your box up."

	para "You'll have to"
	line "switch boxes if"

	para "you want to catch"
	line "more #mon."

	para "Bye now!"
	done
