# Define a method named max that takes two numbers as arguments and returns the largest of them.
#
# Don’t worry about being defensive with this one. Assume the arguments are numeric. But still, make sure you write tests! Submit both your method and the test(s) for that method.

# def max(num1, num2)
#   if num1 > num2
#     num1
#   else
#     num2
#   end
# end
#tests
# puts max(1,2)
# puts max(2,1)
# puts max(1,1)
# puts max(1,nil)
# puts max(1,2,3,4,5)
# puts max(1,[])
# puts max(1,{})
# puts max(1.0,2.0)
# puts max("one","two")
# puts max("1",2)
# puts max()
# puts max(1)


# def max(*rest)
#   rest.max
# end
#
# puts max(1,2,3,4,5)


# names = ['romeo', 'oedipus', 'hansel', 'gretel']
#
#
# def capitalize_each(arr)
#   arr.map do |name|
#     name.capitalize
#   end
# end
#
# p capitalize_each(names)


(1..100).each do |n|
  if (n % 3 == 0) && (n % 5 == 0 )
    puts "FizzBuzz"
  elsif n % 3 == 0
    puts "Fizz"
  elsif n % 5 == 0
    puts "Buzz"

  else
    puts n
  end
end
