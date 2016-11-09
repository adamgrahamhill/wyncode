
##TDD
# # Add 2 to the number.
# def add_two(number)
#   if number.respond_to? :+
#     if number.respond_to? :push
#       number.push 2
#     elsif number.class == String
#       number.to_i + 2
#     else
#       number + 2
#     end
#
#   end
# end
#
# def test_add_two
#   p add_two(1) == 3
#   p add_two(1.0) == 3.0
#   p add_two(nil) == nil
#   p add_two({}) == nil
#   p add_two([]) == [2]
#     p add_two(false) == nil
#   p add_two("string") == 2
# end
#
# test_add_two
#
# # WORD UP
# a = 1
# p %w[#{a} b c d]
# p %W[#{a} b c d]

#
pets = ["Scooby", "Soco", "Summer", "Pixie", "Wilson", "Mason","Baron", "Brinkley", "Bella"]

def array_check_for_S(array)
  array.each do |name|
    if name.start_with?("S")
      puts "My name is #{name}, which starts with S for super!"
    else
      puts "#{name}: I’m still pretty special too!"
    end
  end

end
#
 array_check_for_S(pets)
#
#
#
# a = 1
# print %w[#{a} b c d]
# print %W[#{a} b c d]
# p "#{a}"
# p %W(hello)
# p "#{a} "
# p '#{a}'
