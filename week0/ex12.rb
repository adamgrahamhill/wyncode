
=begin
print "Give me a number: "
number = gets.chomp.to_i

bigger = number * 100 
puts "A bigger number is #{bigger}." 

print "Give me another number: "
another = gets.chomp
number = another.to_i

smaller = number / 100
puts "Asmaller number is #{smaller}."

puts "give me a test number"
test_num = gets.chomp.to_f
puts test_num

=end

puts "Enter a number to take 10% of"
number = gets.chomp.to_i
puts "10% of #{number} is #{number.to_f / 10}."