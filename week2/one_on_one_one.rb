# Create a while loop that prints the square roots of the first 25 odd positive integers. The output of your program should look like this:
# 0.upto(10) {|x|
#   p [x, Math.sqrt(x), Math.sqrt(x)**2]
# }
i = 1
while i < 51
  if i.odd?
    num = Math.sqrt(i)
    puts "#{i} has a square root of #{num}"
    i += 1
  else
    i += 1
  end
end


# Create a method that returns the index of the element in an array, return -1 if the element does not exist in the array. THIS SHOULD USE LOOPS. It will be called like this:
#
# puts element_index(element, my_array)


def element_index(element, my_array)
  i = 0
  while  my_array.length > i
    return i if element == my_array[i]
    i += 1
  end
  -1
end

arr = ["a", "b", "c"]

puts element_index("c", arr)
