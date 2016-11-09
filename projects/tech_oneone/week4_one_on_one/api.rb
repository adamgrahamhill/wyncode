require 'json'
require 'httparty'


def date(url)
  response = HTTParty.get(url)
  body = JSON.parse(response.body)
  body['query']['results']['channel']['item']['condition']['date']
end
def temp(url)
  response = HTTParty.get(url)
  body = JSON.parse(response.body)
  body['query']['results']['channel']['item']['condition']['temp']
end
def weather(url)
  response = HTTParty.get(url)
  body = JSON.parse(response.body)
  body['query']['results']['channel']['item']['condition']['text']
end

puts date("https://query.yahooapis.com/v1/public/yql?q=select%20item.condition%20from%20weather.forecast%20where%20woeid%20%3D%202450080&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys")
puts weather("https://query.yahooapis.com/v1/public/yql?q=select%20item.condition%20from%20weather.forecast%20where%20woeid%20%3D%202450080&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys")
puts temp("https://query.yahooapis.com/v1/public/yql?q=select%20item.condition%20from%20weather.forecast%20where%20woeid%20%3D%202450080&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys")
