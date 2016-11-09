height = ARGV[0]
output = ""
height.to_i.times do |i|
  output << "*" * (i + 1)
  output << "\n"
end
puts output
