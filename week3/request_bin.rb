# http://requestb.in/rxoz2trx
require 'httparty'
require 'json'
body = {first_name: 'Jimmy', username: 'Hoffa' }
headers = {'Content-Type' => 'application/json' }

# response = HTTParty.put('http://requestb.in/rxoz2trx', { body: data} )
#
# puts response.body

response = HTTParty.post('http://requestb.in/rxoz2trx', { body: JSON.dump(body), headers: headers} )
