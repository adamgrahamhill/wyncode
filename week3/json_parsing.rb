require 'json'
require 'httparty'

response = HTTParty.get("https://api.github.com/users/eddroid")
body = JSON.parse(response.body)

# puts body.class
# puts body
puts "My GitHub id is #{body['id']}"

puts "My name is #{body['name'] }"

http://requestb.in/rxoz2trx
