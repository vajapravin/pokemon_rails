def queries

	# - The total number of pokemon
	Pokemon.count

	# - All of the pokemon with an hp over 78
	Pokemon.where("hp_level > 78")

	# - All grass type pokemon
	Pokemon.where("typs like '%grass%'")

	# - All pokemon with a speed over 25 and spdefense lower than 40
	Pokemon.where("speed_level > 25 AND spdefense_level < 40")

	# - All poison-type pokemon with an attack over 79, spattack over 67 and spdefense below 100
	Pokemon.where("typs like '%poison%' AND attack_level > 79 AND spattack_level > 67 AND spdefense_level < 100")

	# - The hp level of the first 35 pokemon
	Pokemon.order(:hp_level).limit(35)

	# - The avg hp of all pokemon
	Pokemon.average(:hp_level)

	# - The lowest defense of all pokemon
	Pokemon.minimum(:defense_level)

	# - The max speed of all pokemon
	Pokemon.maximum(:speed_level)

	# - The moves, hp, and pokedex id of 'Venonat'
	Pokemon.select('moves, hp_level, pokedex_id').conditions(:name => "Venonat")

	# - All attributes of the pokemon with an id of 89
	Pokemon.find(89)

	# - All attributes of the pokemon 'Onix'
	Pokemon.where(:name => 'Onix')

	# - The fire-type pokemon with the highest hp

	# - The ghost_type pokemon with the lowest defense

	# - The bug-type pokemon with the highest speed

	# - Find the two pokemon named `Nidoran?` and change one to Nidoran - male and Nidoran - female
	pokemons = Pokemon.where(:name => 'Nidoran?')
	p1 = pokemons[0]
	p1.name = 'Nidoran-male'
	p1.save

	p2 = pokemons[1]
	p2.name = 'Nidoran-female'
	p2.save
	
end