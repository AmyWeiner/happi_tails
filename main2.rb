require './shelter'
require './animal'
require './client'

$shelter = Shelter.new()

# create a new animal record by prompting for user input
def create_animal
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

# create a new client record by prompting for user input
def create_client
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

def execute_choice(choice)
  case choice
  when "1"
  	# displays a list of current shelter animals in formatted output
    $shelter.display_all_animals
    sleep(5)
  when "2"
  	# displays a list of current shelter clients in formatted output
    $shelter.display_all_clients
    sleep(5)
  when "3"
    # creates a new animal, and adds it to the shelter
    create_animal
  when "4"
    # creates a new client, and adds it to the shelter
    create_client
   else
    puts "Please enter a valid menu option"
    sleep(1)
  end
end

def display_menu
  puts `clear`
  puts "*** Happi Tails v1.0 ***\n\n"
  puts "Please enter one of the following menu options:\n\n"
  puts '1 : Display all current animals'
  puts '2 : Display all current clients'
  puts '3 : Create an animal record'
  puts '4 : Create a client record'
  puts '5 : Facilitate client adoption of an animal'
  puts '6 : Facilitate client putting up an animal for adoption'
  puts "q : Quit\n\n"
  print '--> '
end

def start_app
  display_menu
  choice = gets.chomp
  while choice != 'q'
    execute_choice(choice)
    display_menu
    choice = gets.chomp
  end
end

start_app

	