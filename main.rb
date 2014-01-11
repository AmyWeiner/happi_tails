require './shelter'
require './animal'
require './client'

shelter = Shelter.new()
animals = []

def menu message
  puts `clear`
  puts "*** Happi Tails v1.0 ***\n\n"

  puts "#{message}\n\n" unless message.empty?

  puts '1 : Display all current animals'
  puts '2 : Display all current clients'
  puts '3 : Create an animal record'
  puts '4 : Create a client record'
  puts '5 : Facilitate client adoption of an animal'
  puts '6 : Facilitate client putting up an animal for adoption'
  puts "q : Quit\n\n"
  print '--> '
  gets.chomp
end

message = ""
choice = menu message

while choice != 'q'
  message = ""
  case choice
  when "1"
    message += 'option 1'
    # display list of all current animals
    shelter.display_all_animals
  when "2"
    message += 'option 2'
    # display list of all current clients
    shelter.display_all_clients
  when "3"
    message += 'option 3'
    # create a new animal record by prompting for user input
    puts "Please enter the following details to create the new animal record:"
    puts ""
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
    animals.push(animal)
  when "4"
    message += 'option 4'
    # create a new client record by prompting for user input
    puts "Please enter the following details to create the new client record:"
    puts ""
    puts "Client Name:"
    client_name = gets.chomp
    puts "Number of Children:"
    client_num_children = gets.chomp
    puts "Client Age:"
    client_age = gets.chomp
    puts "Number of Pets:"
    client_num_pets = gets.chomp
    client = Client.new(client_name, client_num_children, client_age, client_num_pets)
    shelter.add_client(client)
  when "5"
    message += 'option 5'
    # facilitate client adoption of an animal by promting user for input
    puts "Please enter the following details to locate the current animal record:"
    puts ""
    puts "Animal Name:"
    animal_name = gets.chomp
    puts "Animal Age:"
    animal_age = gets.chomp
    puts "Animal Gender:"
    animal_gender = gets.chomp
    puts "Animal Species:"
    animal_species = gets.chomp
    index = animals.find_index {|animal| animal.name == animal_name && animal.age == animal_age && animal.species == animal_species && animal.gender == animal_gender }
  when "6"
    message += 'option 6'
    # facilitate client putting up an animal for adoption
    puts "Please enter the following details to put an animal up for adoption:"
    puts ""
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
    shelter.animals.push(animal)
  else
      message += "I don't understand ..."
  end
  choice = menu message
end

