# # def make_pink_slipper(unicorn)
# #   puts unicorn + 2
# # end
#
# # puts number
# # make_pink_slipper(1)
# #
# # def find_person(name, array_of_people)
# #   i = 0
# #   while i < array_of_people.length
# #     if name == array_of_people[i]
# #       return name
# #     end
# #   end
# # end
# #    puts find_person("tim", ["tim", "everyone", "else", "..."])
#
#
#
# # # adds 2 to the number.
# # def add_two(num)
# #   # (num + 2) unless num.nil?
# #   if num.class == Fixnum  #checking for POSITIVE MATCH
# #     num + 2
# #   end
# # end
#
#
#
# def add_two(number)
#   if number.respond_to?(:+)
#
#     if number.respond_to?(:push)
#       number.push 2
#     else
#       if number.class == String
#         number.to_i + 2
#       else
#         number + 2
#       end
#     end
#   end
# end
#
# def test_add_two
#   puts add_two(1) == 3
#   puts add_two(1.0) == 3.0
#   puts add_two(nil) == nil
#   puts add_two({}) == nil
#   puts add_two([]) == [2]
#   puts add_two(true) == nil
#   puts add_two("5") == 7
# end
#
#
# test

#
# def add_three(num)
#   num + 3
# end
#
# puts add_three(1).class


# block = begin
#   puts "Hello world!"
#   0
# end
#
# puts block
#
# 5.times do
#   puts "Hello"
# end
#
# 5.times { |g| puts "hello lowercase"}
#
#

# def say_hello(argument)
#   puts "Hello #{argument}"
# end
#
# say_hello_method = method(:say_hello)
# 5.times &say_hello_method
#
# hash = {:yo => "yes", :hey => "what"}
# # puts hash.keys
#
# def talk(arg)
#   puts "the #{arg}"
# end
#
# talk_method = method(:talk)
# hash.keys.each &talk_method #.keys doesn't accept block
#.each will, so this works


# say_hello("auston")
# puts say_hello_method



#test block argument




# result = (1..5).map do  |num|
#   if num.even?
#      "even"
#   else
#      "odd"
#   end
# end
# p result

# def puts_block
#   if block_given?
#     puts "before we run"
#      yield
#      puts "after we run"
#   else
#     puts "No block given"
#   end
# end
#
# puts_block do
#   exit
#   puts "hello world"
# end
#
# puts_block
#
# puts_block { puts "Hello world!" }
# puts_block

def puts_hello_wyncode
  if block_given?
    puts yield "Hello", "Wyncode"
  else
    puts "No block given"
  end
end

puts_hello_wyncode { |greeting, name| "Hello #{name}" }
