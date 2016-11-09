# This is from week 4's homework
require 'sinatra'
require 'nokogiri'
require 'httparty'


get '/' do
  stock = params['stock']
  url = "http://finance.yahoo.com/quote/#{stock}/"
  response = HTTParty.get(url)
  ruby_dom = Nokogiri::HTML(response.body)
  stock_price = ruby_dom.xpath("//span[@class='Fw(500) D(ib) Fz(42px)']").inner_text
  "The price of #{stock} is $#{stock_price}."
end



## Code from stock_scraper.rb was used to create the above ^^^^

# def stock_get
#   url = "http://finance.yahoo.com/quote/AAPL/"
#
#   response = HTTParty.get(url)
#   ruby_dom = Nokogiri::HTML(response.body)
#   p ruby_dom.xpath("//span[@class='Fw(500) D(ib) Fz(42px)']").inner_text
#   # p ruby_dom
# end

# stock_get
