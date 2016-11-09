require 'httparty'

response = HTTParty.get('https://api.github.com/users/eddroid')

# puts response.body, response.code, response.message, response.headers.inspect
# puts response.class
# puts response.headers.class
#
# puts response.headers.inspect
# p response.headers

# puts response.headers["content-type"]
# puts response.body.class
# puts response.body
puts response.code
