# This file defines the Shelter class. A Shelter object operates as a databse system that contains arrays
# of the current shelter animals and clients. 
class Shelter
	attr_accessor :clients, :animals

  def initialize(clients=[], animals=[])
    @clients = clients
    @animals = animals
  end

  # adds a new client to the shelter
  def add_client(client)
    @clients.push(client)
  end

  # adds a new animal to the shelter
  def add_animal(animal)
    @animals.push(animal)
  end

  # removes an existing animal from the shelter
  def remove_animal(animal)
    @animals.delete(animal)
  end

  # not yet implemented
  def add_pet(clent)
  end

  not yet implemented
  def remove_pet(client)
  end
  
  # displays all current shelter clients 
  def display_client_records
  	self.clients.each do |client|
      puts "Name: #{client.name}    Number of Children: #{client.num_children}    Age: #{client.age}    Number of Pets: #{client.num_pets}"
    end
  end

  # displays all current shelter animals 
  def display_animal_records
  	self.animals.each do |animal|
      puts "Name: #{animal.name}    Age: #{animal.age}    Gender: #{animal.gender}    Species: #{animal.species}"
    end
  end

end
