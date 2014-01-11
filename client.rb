# This file defines the CLient class. A client object must have
# a name, a number of children, an age, and a number of pets.

class Client
	attr_reader :name
	attr_reader :num_children
	attr_reader :age
	attr_reader :num_pets

	def initialize(name, num_children, age, num_pets)
		@name = name
		@num_children = num_children
		@age = age
		@num_pets = num_pets
	end
end