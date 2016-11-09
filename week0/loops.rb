 # # this code is dangerous!
 # loop do
 #   puts "Hello world!"
 # end

# i = 0
# while i < 11
#   puts i
#   i += 1
# end
#
# until i >= 11
#
#   puts i
#   i += 1
# end

# letters = [ "a", "b", "c"]
# i = 0
#
# while i < letters.length
#   puts "shm" + letters[i]
#   i += 1
# end

alive_people = ["tim", "jose", "auston"]

for name in alive_people  #bad n^2
  alive_people.index name
end
