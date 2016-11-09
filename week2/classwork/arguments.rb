options = {
  
}


def add_two(number = 0, *rest)
  if rest.size > 0
    puts "Seriously? #{rest}"
  end
  number + 2
end

puts add_two(1,2,3,5)
