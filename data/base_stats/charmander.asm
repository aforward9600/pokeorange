	db CHARMANDER ; 004

	db  39,  52,  43,  65,  60,  50
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE
	db 45 ; catch rate
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	db FEMALE_12_5 ; gender
	db 20 ; step cycles to hatch
	dn 5, 5 ; frontpic dimensions

	db MEDIUM_SLOW ; growth rate
	dn MONSTER, REPTILE ; egg groups

	; tmhm
	tmhm POWERUPPUNCH, DRAGON_PULSE, TOXIC, SUNNY_DAY, DRAGONBREATH, PROTECT, FRUSTRATION, IRON_TAIL, RETURN, DIG, DOUBLE_TEAM, FLAMETHROWER, FIRE_BLAST, SWIFT, AERIAL_ACE, FACADE, REST, ATTRACT, SHADOW_CLAW, CUT, STRENGTH, ROCK_SMASH, FIRE_PUNCH, THUNDERPUNCH, DYNAMICPUNCH, HEADBUTT, SLEEP_TALK, SWAGGER, ENDURE
	; end