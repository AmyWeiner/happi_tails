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
  
  # displays all current shelter clients 
  def display_all_clients
  	return self.clients
  end

  # displays all current shelter animals 
  def display_all_animals
  	return self.animals
  end
end
