dead_people = [
  "Ethel", "Mortimer", "Buford"
]

alive_people = [
  "Kelly", "Joe"," Megan"
]

sick_people = alive_people.slice(0, 2)
=begin
puts dead_people.include? "Mortimer"

puts dead_people.include? "Kelly"
=end

name = "Mortimer  "
=begin
if dead_people.include? name
  puts "Don't send questionaire to #{name}."
elsif sick_people.include? name
  puts "Don't send a questionnaire to #{name} yet."
else
  puts "send a questionnaire to #{name}."
end
=end
unless dead_people.include? name #don't use w/elsif
  puts "send a questionnaire to #{name}."
end


if false
  complete nonsense
else
  puts "Hello world!"
end

#one liner if
puts "Questionnnaire" if alive_people.include? name

=begin
if alive_people.include? name
  message = "#{name} is alive!"
else message = "Sorry for your loss."
end
puts message
=end
message = if alive_people.include? name
  "#{name} is alive!"
else
  "sorry for your loss."
end
puts message

message = alive_people.include?(name) ? "Alive!" : "Sorry"
