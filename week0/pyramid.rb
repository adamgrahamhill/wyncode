# This is a test file.
# Line 2
# Line 3

# # pyramid
# height = ARGV[0]
# output = ""
# height.to_i.times do |cats|
#   output << " " * (height.to_i - (cats + 1))
#   output << "*" * (cats * 2 + 2)
#   output << "\n"
# end
# puts output

# input = ""
# height.to_i.times do |cats|
#   input << " " * ( 2 * cats)
#   input << "*" * (
#   input << "\n"
# end
#
# puts input

# height = ARGV[0].to_i
# output = ""
# height.times do |cats|
#   output << " " * (height - cats)
#   output << "*" * (cats * 2)
#   output << "\n"
# end
# puts output


# cat pyramid
height = ARGV[0].to_i
output = ""
height.times do |cats|
  output << " " * (height - (cats + 1))
  output << "🐈" * (cats * 2 + 2)
  output << "\n"
end
puts output

input = ""
height.times do |cats|
  input << " " * (cats)
  input << "🐈" * (2 * (height - cats))
  input << "\n"
end

puts input
