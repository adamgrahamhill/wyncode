require 'httparty'
require 'nokogiri'
url = "http://finance.yahoo.com/q?s=AAPL"
response = HTTParty.get url

ruby_dom = Nokogiri::HTML(response.body)

puts ruby_dom.xpath("//span[@id='yfs_l84_aapl']").first.inner_text
# puts response.headers["content-type"]


# <span id="yfs_l84_aapl">95.56</span>
