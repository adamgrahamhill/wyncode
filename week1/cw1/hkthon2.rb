possible_options = [
  "add person",
  "remove person",
  "list people",
  "quit"
]

people = []
loop do

  puts "Please select what you would like to do:"
  puts possible_options

  user_input = gets.chomp


  case user_input

  when "add person"
    puts "Who would you like to add?"
    name = gets.chomp

    if people.include? name
      puts "#{name} is already in our database"
    else
      puts "#{name} has been added to the list."
      people.push(name)
    end

  when "remove person"
    puts "Please enter who you would like to remove."
    name = gets.chomp

    if people.include? name
      puts "#{name} has been removed!"
      people.delete(name)
    else
      puts "#{name} is not in our list!"
    end

  when "list people"
    p people

  when "quit"
    puts "Goodbye"
    break
  # when "update"
  #   puts "Who would you like to update?"
  #   name = gets.chomp
  #     if people.include? name
  #
  end
  puts "\n"
end
