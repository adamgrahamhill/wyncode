require 'httparty'
require 'JSON'

class SiteCopier
  attr_reader :websites
  def initialize(websites)
    @websites = websites
  end

  def get_screenshots
    screenshot_array = []
    @websites.each do |site|
      response = HTTParty.get("http://api.page2images.com/restfullink?p2i_url=#{site}&p2i_key=a2200fb1e1eb1072")
      parsed_response = JSON.parse(response.body)
      screenshot_array << parsed_response["image_url"]
    end
    screenshot_array.each do |url|
      url
    end
  end
end


arr = [
  "http://devbootcamp.com/",
  "http://www.hackreactor.com/",
  "https://wyncode.co/",
  ["https://www.coursereport.com/", "http://www.skilledup.com/", "https://www.becasted.com", "https://news.ycombinator.com/"].sample
]

image_grabber = SiteCopier.new(arr)
puts image_grabber.get_screenshots
