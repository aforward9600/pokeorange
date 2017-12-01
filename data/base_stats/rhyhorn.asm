	db RHYHORN ; 111

	db  80,  85,  95,  25,  30,  30
	;   hp  atk  def  spd  sat  sdf

	db GROUND, ROCK
	db 120 ; catch rate
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	db FEMALE_50 ; gender
	db 20 ; step cycles to hatch
	dn 7, 7 ; frontpic dimensions

	db SLOW ; growth rate
	dn MONSTER, FIELD ; egg groups

	; tmhm
	tmhm DRAGON_PULSE, TOXIC, FISSURE, SUNNY_DAY, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, FRUSTRATION, IRON_TAIL, THUNDERBOLT, THUNDER, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, EARTH_POWER, FLAMETHROWER, SANDSTORM, FIRE_BLAST, FACADE, REST, ATTRACT, THIEF, STRENGTH, ROCK_SMASH, ROCK_CLIMB, HEADBUTT, POISON_JAB, SLEEP_TALK, SWAGGER, ENDURE
	; end