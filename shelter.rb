# This file defines the Shelter class. A Shelter object can acquire new animals
# and clients, and can display all current animals and clients.
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

  # adds a new animal to the shelter
  def remove_animal(animal)
    @animals.delete(animal)
  end

  def add_pet(clent)
  end

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
