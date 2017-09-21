const_value set 2
	const NATIONALPARKBUGCONTEST_YOUNGSTER1
	const NATIONALPARKBUGCONTEST_YOUNGSTER2
	const NATIONALPARKBUGCONTEST_ROCKER
	const NATIONALPARKBUGCONTEST_POKEFAN_M
	const NATIONALPARKBUGCONTEST_YOUNGSTER3
	const NATIONALPARKBUGCONTEST_YOUNGSTER4
	const NATIONALPARKBUGCONTEST_LASS
	const NATIONALPARKBUGCONTEST_YOUNGSTER5
	const NATIONALPARKBUGCONTEST_YOUNGSTER6
	const NATIONALPARKBUGCONTEST_YOUNGSTER7

NationalParkBugContest_MapScriptHeader:

.MapTriggers: db 0

.MapCallbacks: db 0

YoungsterScript_0x5c8ec:
	faceplayer
	opentext
	writetext UnknownText_0x5c94c
	waitbutton
	closetext
	end

YoungsterScript_0x5c8f4:
	faceplayer
	opentext
	writetext UnknownText_0x5c973
	waitbutton
	closetext
	end

RockerScript_0x5c8fc:
	faceplayer
	opentext
	writetext UnknownText_0x5c9a3
	waitbutton
	closetext
	end

PokefanMScript_0x5c904:
	faceplayer
	opentext
	writetext UnknownText_0x5c9cc
	waitbutton
	closetext
	end

YoungsterScript_0x5c90c:
	faceplayer
	opentext
	writetext UnknownText_0x5ca15
	waitbutton
	closetext
	end

YoungsterScript_0x5c914:
	faceplayer
	opentext
	writetext UnknownText_0x5ca52
	waitbutton
	closetext
	end

LassScript_0x5c91c:
	faceplayer
	opentext
	writetext UnknownText_0x5ca8f
	waitbutton
	closetext
	end

YoungsterScript_0x5c924:
	faceplayer
	opentext
	writetext UnknownText_0x5cac8
	waitbutton
	closetext
	end

YoungsterScript_0x5c92c:
	faceplayer
	opentext
	writetext UnknownText_0x5cb25
	waitbutton
	closetext
	end

YoungsterScript_0x5c934:
	faceplayer
	opentext
	writetext UnknownText_0x5cb64
	waitbutton
	closetext
	end

UnknownText_0x5c94c:
	text "DON: I'm going to"
	line "win! Don't bother"
	cont "me."
	done

UnknownText_0x5c973:
	text "ED: My PARASECT"
	line "puts #MON to"
	cont "sleep with SPORE."
	done

UnknownText_0x5c9a3:
	text "NICK: I'm raising"
	line "fast #MON for"
	cont "battles."
	done

UnknownText_0x5c9cc:
	text "WILLIAM: I'm not"
	line "concerned about"
	cont "winning."

	para "I'm just looking"
	line "for rare #MON."
	done

UnknownText_0x5ca15:
	text "BENNY: Ssh! You'll"
	line "scare off SCYTHER."

	para "I'll talk to you"
	line "later."
	done

UnknownText_0x5ca52:
	text "BARRY: You should"
	line "weaken bug #MON"

	para "first, then throw"
	line "a BALL."
	done

UnknownText_0x5ca8f:
	text "CINDY: I love bug"
	line "#MON."

	para "I guess you must"
	line "like them too."
	done

UnknownText_0x5cac8:
	text "JOSH: I've been"
	line "collecting bug"

	para "#MON since I"
	line "was just a baby."

	para "There's no way I'm"
	line "going to lose!"
	done

UnknownText_0x5cb25:
	text "SAMUEL: If you've"
	line "got the time to"

	para "chat, go find some"
	line "bug #MON."
	done

UnknownText_0x5cb64:
	text "KIPP: I've studied"
	line "about bug #MON"
	cont "a lot."

	para "I'm going to win"
	line "for sure."
	done

NationalParkBugContest_MapEventHeader:

.Warps: db 0

.XYTriggers: db 0

.Signposts: db 0

.PersonEvents: db 10
	person_event SPRITE_YOUNGSTER, 29, 19, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, YoungsterScript_0x5c8ec, EVENT_BUG_CATCHING_CONTESTANT_1A
	person_event SPRITE_YOUNGSTER, 22, 28, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, YoungsterScript_0x5c8f4, EVENT_BUG_CATCHING_CONTESTANT_2A
	person_event SPRITE_ROCKER, 18, 9, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, RockerScript_0x5c8fc, EVENT_BUG_CATCHING_CONTESTANT_3A
	person_event SPRITE_POKEFAN_M, 13, 7, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, PokefanMScript_0x5c904, EVENT_BUG_CATCHING_CONTESTANT_4A
	person_event SPRITE_YOUNGSTER, 9, 23, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, YoungsterScript_0x5c90c, EVENT_BUG_CATCHING_CONTESTANT_5A
	person_event SPRITE_YOUNGSTER, 13, 27, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, YoungsterScript_0x5c914, EVENT_BUG_CATCHING_CONTESTANT_6A
	person_event SPRITE_LASS, 23, 7, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, LassScript_0x5c91c, EVENT_BUG_CATCHING_CONTESTANT_7A
	person_event SPRITE_YOUNGSTER, 27, 11, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, YoungsterScript_0x5c924, EVENT_BUG_CATCHING_CONTESTANT_8A
	person_event SPRITE_YOUNGSTER, 8, 16, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, YoungsterScript_0x5c92c, EVENT_BUG_CATCHING_CONTESTANT_9A
	person_event SPRITE_YOUNGSTER, 34, 17, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, YoungsterScript_0x5c934, EVENT_BUG_CATCHING_CONTESTANT_10A
