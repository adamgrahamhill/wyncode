# require "httparty"
# require "nokogiri"
#
# puts "What stock would you like information on? Please enter a valid stock symbol."
# stock_symbol = gets.chomp.downcase
# response = HTTParty.get("http://finance.yahoo.com/q?s=#{stock_symbol}")
# ruby_dom = Nokogiri::HTML(response.body)
#
# stock_price = ruby_dom.xpath("//span[@id='yfs_l84_#{stock_symbol}']").first.inner_text
# previous_close= ruby_dom.xpath("//td[@class='yfnc_tabledata1']").first.inner_text
# puts "The current price for a share of Apple's stock is $#{stock_price}."
# puts "The previous closing price for Apple was $#{previous_close}."

require "httparty"

http_method = ARGV[0]
url = ARGV[1]

def bicep_curls(method, url)
  if method == "GET"
    response = HTTParty.get(url.to_s)
    puts response.code
    puts response.message
    puts response.headers.inspect
    puts response.body
  end
end

bicep_curls(http_method, url)
