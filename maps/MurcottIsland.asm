const_value set 2
	const MURCOTT_GRAMPS
	const MURCOTT_DAYCARE_MON_1
	const MURCOTT_DAYCARE_MON_2

MurcottIsland_MapScriptHeader::

.Triggers: db 0

.Callbacks:
	db 1

	; callbacks

	dbw MAPCALLBACK_OBJECTS, .EggCheckCallback

.EggCheckCallback:
	checkflag ENGINE_DAYCARE_MAN_HAS_EGG
	iftrue .PutDaycareManOutside
	clearevent EVENT_DAYCARE_MAN_IN_DAYCARE
	setevent EVENT_DAYCARE_MAN_OUTSIDE
	jump .CheckMon1

.PutDaycareManOutside:
	setevent EVENT_DAYCARE_MAN_IN_DAYCARE
	clearevent EVENT_DAYCARE_MAN_OUTSIDE
	jump .CheckMon1

.CheckMon1:
	checkflag ENGINE_DAYCARE_MAN_HAS_MON
	iffalse .HideMon1
	clearevent EVENT_DAYCARE_MON_1
	jump .CheckMon2

.HideMon1:
	setevent EVENT_DAYCARE_MON_1
	jump .CheckMon2

.CheckMon2:
	checkflag ENGINE_DAYCARE_LADY_HAS_MON
	iffalse .HideMon2
	clearevent EVENT_DAYCARE_MON_2
	return

.HideMon2:
	setevent EVENT_DAYCARE_MON_2
	return

DayCareManScript_Outside:
	faceplayer
	opentext
	special Special_DayCareManOutside
	waitbutton
	closetext
	if_equal $1, .end_fail
	clearflag ENGINE_DAYCARE_MAN_HAS_EGG
	checkcode VAR_FACING
	if_equal RIGHT, .walk_around_player
	applymovement MURCOTT_GRAMPS, MurcottMovementData_DayCareManWalksBackInside
	playsound SFX_ENTER_DOOR
	disappear MURCOTT_GRAMPS
.end_fail
	end

.walk_around_player
	applymovement MURCOTT_GRAMPS, MurcottMovementData_DayCareManWalksBackInside_WalkAroundPlayer
	playsound SFX_ENTER_DOOR
	disappear MURCOTT_GRAMPS
	end

DaycareMon1Script:
	opentext
	special Special_DayCareMon1
	closetext
	end

DaycareMon2Script:
	opentext
	special Special_DayCareMon2
	closetext
	end
	
DayCareSign:
	jumptext DayCareSignText
	
DayCareSignText:
	text "DAY-CARE"

	para "LET US RAISE YOUR"
	line "#MON FOR YOU!"
	done
	
MurcottIslandSign:
	jumptext MurcottIslandSignText
	
MurcottIslandSignText:
	text "MURCOTT ISLAND"
	
	para "New beginnings in"
	line "unexpected places"
	done
	
MurcottMovementData_DayCareManWalksBackInside:
	slow_step LEFT
	slow_step LEFT
	slow_step UP
	step_end

MurcottMovementData_DayCareManWalksBackInside_WalkAroundPlayer:
	slow_step DOWN
	slow_step LEFT
	slow_step LEFT
	slow_step UP
	slow_step UP
	step_end
	
MurcottLassScript:
	jumptextfaceplayer MurcottLassText
	
MurcottLassText:
	text "There's a really"
	line "big DESERT on"
	cont "MANDARIN SOUTH!"
	done
	
MurcottIsland_MapEventHeader::

.Warps: db 3
	warp_def 7, 17, 1, DAYCARE
	warp_def 4, 20, 3, DAYCARE
	warp_def 5, 20, 4, DAYCARE

.CoordEvents: db 0

.BGEvents: db 2
	signpost 8, 20, SIGNPOST_READ, DayCareSign
	signpost 10, 20, SIGNPOST_READ, MurcottIslandSign

.ObjectEvents: db 3
	person_event SPRITE_GRAMPS, 8, 18, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, DayCareManScript_Outside, EVENT_DAYCARE_MAN_OUTSIDE
	person_event SPRITE_DAYCARE_MON_1, 5, 22, SPRITEMOVEDATA_POKEMON, 2, 2, -1, -1, 0, PERSONTYPE_SCRIPT, 0, DaycareMon1Script, EVENT_DAYCARE_MON_1
	person_event SPRITE_DAYCARE_MON_2, 6, 24, SPRITEMOVEDATA_POKEMON, 2, 2, -1, -1, 0, PERSONTYPE_SCRIPT, 0, DaycareMon2Script, EVENT_DAYCARE_MON_2
	person_event SPRITE_LASS, 16, 18, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, MurcottLassScript, -1
