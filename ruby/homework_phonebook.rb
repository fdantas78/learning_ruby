#Phonebook Hash
phonebook = {
  "Sao Paulo" => "11",
  "Campinas" => "19",
  "Ubatuba" => "12",
  "Guarulhos" => "11",
  "Osasco" => "11",
  "Adamantina" => "18",
  "Agudos" => "14",
  "Alvares Machado" => "18",
  "Cacapava" => "12",
  "Cajati" => "13"
}

#Show all city names for user reference
def show_cities(phonebook)
  phonebook.each {|k,v| puts k}
end

#Show area code for the chosen city
def show_area_code(phonebook)
  puts "Which city do you need an Area Code?"
  city = gets.chomp
  selection = phonebook.select {|k,v| k.upcase == city.upcase}
  unless selection.empty?
    selection.each {|k,v| puts "The Area Code for #{k} is #{v}"}
  else
    puts "City not found in the Phonebook!"
  end 
end

#Show options menu
def show_menu
  puts "\nWelcome to Area Code search software! \n\nPlease choose one of the following options:"
  puts "1) Show all cities in the Phonebook"
  puts "2) Find an Area Code from a specific city"
  puts "3) Exit"
end

#Execute action based on user choice
def action_menu(choice,phonebook)
  case choice
  when "1"
    show_cities(phonebook)
  when "2"
    show_area_code(phonebook)
  else
    puts "Invalid choice! Example: Type \"1\" to list all cities available. \n\n"
  end
end

#main code
loop do
  
  #Show available options to user
  show_menu
  choice = gets.chomp
  
  #User choice related actions
  if choice.upcase == "3" 
    break
  else
    action_menu(choice,phonebook)
  end
end
