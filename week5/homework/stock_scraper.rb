require 'nokogiri'
require 'httparty'


def stock_get
url = "http://finance.yahoo.com/quote/ATVI"

response = HTTParty.get(url)
# puts response
# puts ruby_dom.xpath("//span[@id='yfs_l84_aapl']").first.inner_text
ruby_dom = Nokogiri::HTML(response.body)
ruby_dom.xpath("//span[@class='Fw(500) D(ib) Fz(42px)']").inner_text
end

puts stock_get
