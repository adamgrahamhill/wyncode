height = ARGV[0]
output = ""
height.to_i.times do |cats|
  
  output << " " * (height.to_i - cats)
  output << "*" * (cats * 2 + 2)
  output << "\n"
end
puts output
