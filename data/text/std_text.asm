NurseMornText:
	text "Good morning!"
	line "Welcome to our"
	cont "#mon Center."
	done

NurseDayText:
	text "Hello!"
	line "Welcome to our"
	cont "#mon Center."
	done

NurseNiteText:
	text "Good evening!"
	line "You're out late."

	para "Welcome to our"
	line "#mon Center."
	done

NurseAskHealText:
	text "We can heal your"
	line "#mon to perfect"
	cont "health."

	para "Shall we heal your"
	line "#mon?"
	done

NurseTakePokemonText:
	text "OK, may I see your"
	line "#mon?"
	done

NurseReturnPokemonText:
	text "Thank you for"
	line "waiting."

	para "Your #mon are"
	line "fully healed."
	done

NurseGoodbyeText:
	text "We hope to see you"
	line "again."
	done

; not used
	text "We hope to see you"
	line "again."
	done

NursePokerusText:
	text "Your #mon ap-"
	line "pear to have tiny"

	para "life forms stuck"
	line "to them."

	para "Your #mon are"
	line "healthy and seem"
	cont "to be fine."

	para "But we can't tell"
	line "you anything more"

	para "at a #mon"
	line "Center."
	done

DifficultBookshelfText:
	text "It's full of"
	line "difficult books."
	done

PictureBookshelfText:
	text "A whole collection"
	line "of #mon picture"
	cont "books!"
	done

MagazineBookshelfText:
	text "#mon magazines…"
	line "#mon Pal,"

	para "#mon Handbook,"
	line "#mon Graph…"
	done

TeamRocketOathText:
	text "Team Rocket Oath"

	para "Steal #mon for"
	line "profit!"

	para "Exploit #mon"
	line "for profit!"

	para "All #mon exist"
	line "for the glory of"
	cont "Team Rocket!"
	done

IncenseBurnerText:
	text "What is this?"

	para "Oh, it's an"
	line "incense burner!"
	done

MerchandiseShelfText:
	text "Lots of #mon"
	line "merchandise!"
	done

LookTownMapText:
	text "It's the town map."
	done

WindowText:
	text "My reflection!"
	line "Lookin' good!"
	done

TVText:
	text "It's a TV."
	done

HomepageText:
	text "#mon Journal"
	line "Home Page…"

	para "It hasn't been"
	line "updated…"
	done

; not used
	text "#mon Radio!"

	para "Call in with your"
	line "requests now!"
	done

TrashCanText:
	text "There's nothing in"
	line "here…"
	done

; not used
	text "A #mon may be"
	line "able to move this."
	done

; not used
	text "Maybe a #mon"
	line "can break this."
	done

PokecenterSignText:
	text "Heal Your #mon!"
	line "#mon Center"
	done

MartSignText:
	text "For all your"
	line "#mon needs"

	para "#mon Mart"
	done

ContestResults_ReadyToJudgeText:
	text "We will now judge"
	line "the #mon you've"
	cont "caught."

	para "<……>"
	line "<……>"

	para "We have chosen the"
	line "winners!"

	para "Are you ready for"
	line "this?"
	done

AskNumber1MText:
	text "Wow! You're pretty"
	line "tough."

	para "Could I get your"
	line "phone number?"

	para "I'll call you for"
	line "a rematch."
	done

AskNumber2MText:
	text "Register the phone"
	line "number?"
	done

RegisteredNumberMText:
	text "<PLAYER> registered"
	line "@"
	text_ram wStringBuffer3
	text "'s number."
	done

NumberAcceptedMText:
	text "I'll call you if"
	line "anything comes up."
	done

NumberDeclinedMText:
	text "Oh, Ok…"
	line "Just talk to me if"

	para "you want to get my"
	line "phone number."
	done

PhoneFullMText:
	text "Your phone doesn't"
	line "have enough memory"
	cont "for more numbers."
	done

RematchMText:
	text "I was waiting for"
	line "you. Let's battle!"
	done

AskNumber1FText:
	text "Wow, you're good"
	line "at battling."

	para "Want to give me"
	line "your phone number?"

	para "I'll phone you for"
	line "another battle."
	done

AskNumber2FText:
	text "Register the phone"
	line "number?"
	done

RegisteredNumberFText:
	text "<PLAYER> registered"
	line "@"
	text_ram wStringBuffer3
	text "'s number."
	done

NumberAcceptedFText:
	text "I'll call you if"
	line "something's up."
	done

NumberDeclinedFText:
	text "Oh, fine then…"
	line "If you want to get"

	para "my phone number,"
	line "just tell me."
	done

PhoneFullFText:
	text "Your phone doesn't"
	line "have enough memory"
	cont "for more numbers."
	done

RematchFText:
	text "I waited for you."
	line "Let's battle!"
	done

ContestResults_PlayerWonAPrizeText:
	text "<PLAYER> wins the"
	line "No. @"
	text_ram wStringBuffer3
	text " prize,"
	cont "a @"
	text_ram wStringBuffer4
	text "!"
	done

ReceivedItemText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer4
	text "."
	done

ContestResults_JoinUsNextTimeText:
	text "Please join us for"
	line "the next Contest!"
	done

ContestResults_ConsolationPrizeText:
	text "Everyone else gets"
	line "a berry as a con-"
	cont "solation prize!"
	done

ContestResults_DidNotWinText:
	text "We hope you do"
	line "better next time."
	done

ContestResults_ReturnPartyText:
	text "We'll return the"
	line "#mon we kept"

	para "for you."
	line "Here you go!"
	done

ContestResults_PartyFullText:
	text "Your party's full,"
	line "so the #mon was"

	para "sent to your box"
	line "in Bill's PC."
	done

GymStatue_CityGymText:
	text_ram wStringBuffer3
	text_start
	line "#mon Gym"
	done

GymStatue_WinningTrainersText:
	text "Leader: @"
	text_ram wStringBuffer4
	text_start
	para "Winning Trainers:"
	line "<PLAYER>"
	done

CoinVendor_WelcomeText:
	text "Welcome to the"
	line "Game Corner."
	done

CoinVendor_NoCoinCaseText:
	text "Do you need game"
	line "coins?"

	para "Oh, you don't have"
	line "a coin case for"
	cont "your coins."
	done

CoinVendor_IntroText:
	text "Do you need some"
	line "game coins?"

	para "It costs ¥1000 for"
	line "50 coins. Do you"
	cont "want some?"
	done

CoinVendor_Buy50CoinsText:
	text "Thank you!"
	line "Here are 50 coins."
	done

CoinVendor_Buy500CoinsText:
	text "Thank you! Here"
	line "are 500 coins."
	done

CoinVendor_NotEnoughMoneyText:
	text "You don't have"
	line "enough money."
	done

CoinVendor_CoinCaseFullText:
	text "Whoops! Your coin"
	line "case is full."
	done

CoinVendor_CancelText:
	text "No coins for you?"
	line "Come again!"
	done

BugContestPrizeNoRoomText:
	text "Oh? Your pack is"
	line "full."

	para "We'll keep this"
	line "for you today, so"

	para "come back when you"
	line "make room for it."
	done

HappinessText3:
	text "Wow! You and your"
	line "#mon are really"
	cont "close!"
	done

HappinessText2:
	text "#mon get more"
	line "friendly if you"

	para "spend time with"
	line "them."
	done

HappinessText1:
	text "You haven't tamed"
	line "your #mon."

	para "If you aren't"
	line "nice, it'll pout."
	done
