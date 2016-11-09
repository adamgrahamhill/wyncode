=begin
country = "es"
if country == "us"
  puts "Hello"
elsif country == "es"
  puts "Hola"
elsif country == "fr"
  puts "Bonjour"
else
  puts "Alo"
end
=end

country = "us"

case country
when "us"
  puts "Hello"
when "es"
  puts "Hola"
when "fr"
  puts "Bonjour"
else
  puts "Alo"
end
