require './shelter'
require './animal'
require './client'

$shelter = Shelter.new()

# creates a new animal record by prompting for user input
def create_animal_record
puts "Please enter the following details to create the new animal record:\n\n"
    puts "Animal Name:"
    animal_name = gets.chomp
    puts "Animal Age:"
    animal_age = gets.chomp
    puts "Animal Gender:"
    animal_gender = gets.chomp
    puts "Animal Species:"
    animal_species = gets.chomp
    puts "Number Toys:"
    animal_toys = gets.chomp
    animal = Animal.new(animal_name, animal_age, animal_gender, animal_species, animal_toys)
    $shelter.add_animal(animal)
end

# deletes an existing animal record by prompting for user input
def delete_animal_record
puts "Please enter the following details to find the current animal record:\n\n"
    puts "Animal Name:"
    animal_name = gets.chomp
    puts "Animal Age:"
    animal_age = gets.chomp
    puts "Animal Gender:"
    animal_gender = gets.chomp
    puts "Animal Species:"
    animal_species = gets.chomp
    puts "Number Toys:"
    animal_toys = gets.chomp
    $shelter.animals.each do |animal|
      if animal.name == animal_name && animal.age == animal_age && animal.gender == animal_gender && 
        animal.species == animal_species && animal.toys == animal_toys
        $shelter.remove_animal(animal)
      end
    end
end

# creates a new client record by prompting for user input
def create_client_record
  puts "Please enter the following details to create the new client record:\n\n"
  puts "Client Name:"
  client_name = gets.chomp
  puts "Number of Children:"
  client_num_children = gets.chomp
  puts "Client Age:"
  client_age = gets.chomp
  puts "Number of Pets:"
  client_num_pets = gets.chomp
  client = Client.new(client_name, client_num_children, client_age, client_num_pets)
  $shelter.add_client(client)
end

# updates existing client record by locating client record via user input, and incrementing client pet attribute by one
def update_client_record_add_pet
  puts "Please enter the following details to retreive the existing client record:\n\n"
    puts "Client Name:"
    client_name = gets.chomp
    puts "Number of Children:"
    client_num_children = gets.chomp
    puts "Client Age:"
    client_age = gets.chomp
    puts "Number of Pets:"
    client_num_pets = gets.chomp
    $shelter.clients.each do |client|
      if client.name == client_name && client.num_children == client_num_children && client.age == client_age && 
        client.num_pets == client_num_pets
        puts "The client has adopted the animal."  # stub output for incomplete method
      end
    end
end

# updates existing client record by locating client record via user input, and decrementing client pet attribute by one
def update_client_record_subtract_pet
  puts "Please enter the following details to retreive the existing client record:\n\n"
    puts "Client Name:"
    client_name = gets.chomp
    puts "Number of Children:"
    client_num_children = gets.chomp
    puts "Client Age:"
    client_age = gets.chomp
    puts "Number of Pets:"
    client_num_pets = gets.chomp
    $shelter.clients.each do |client|
      if client.name == client_name && client.num_children == client_num_children && client.age == client_age && 
        client.num_pets == client_num_pets
        puts "The client has put the animal up for adoption." # stub output for incomplete method
      end
    end
end

# executes menu options based on user input
def execute_choice(choice)
  case choice
  when "1"
    # displays a list of the current shelter animals in formatted output
    $shelter.display_animal_records
    sleep(5)
  when "2"
    # displays a list of the current shelter clients in formatted output
    $shelter.display_client_records
    sleep(5)
  when "3"
    # creates a new animal record, and adds it to the shelter database
    create_animal_record
  when "4"
    # creates a new client record, and adds it to the shelter database
    create_client_record
  when "5"
    # facilitate client adoption of an animal by promting user for input
    delete_animal_record
    update_client_record_add_pet
    sleep(1)
  when "6"
    # facilitate client putting up an animal for adoption
    create_animal_record
    update_client_record_subtract_pet
    sleep(1)
   else
    puts "Please enter a valid menu option"
    sleep(1)
  end
end

# displays menu options for happi_tails app
def display_menu
  puts `clear`
  puts "*** Happi Tails v1.0 ***\n\n"
  puts "Please enter one of the following menu options:\n\n"
  puts '1 : Display all current animals'
  puts '2 : Display all current clients'
  puts '3 : Create an animal record'
  puts '4 : Create a client record'
  puts '5 : Facilitate client adoption of an animal'
  puts '6 : Facilitate client putting an animal up for adoption'
  puts "q : Quit\n\n"
  print '--> '
end

# gets user input based on app menu options
def get_input
  display_menu
    choice = gets.chomp
end

# runs or quits the app based on user input from menu options
def run_app
  choice = get_input
  while choice != 'q'
    execute_choice(choice)
    choice = get_input
  end
end

# main method call
run_app

  