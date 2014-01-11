# This file defines the Animal class. An animal object must have 
# a name, age, gender, and species. An Animal object may have
# from no to multiple toys.

class Animal
	attr_reader :name
	attr_reader :age
	attr_reader :gender
	attr_reader :species
	attr_reader :toys

	def initialize(name, age, gender, species, toys=0)
		@name = name
		@age = age
		@gender = gender
		@species = species
		@toys = toys
	end
end
