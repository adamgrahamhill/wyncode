require 'sinatra'

#problem 1
directions = ["north", "east", "south", "west"]
# puts directions[3]

#problem2
compass = {n: "north", e: "east", s: "south", w: "west"}
# puts compass[:n]

class Direction
  attr_reader :abbreviation, :direction_name
  def initialize(abbreviation, direction_name)
    @abbreviation = abbreviation
    @direction_name = direction_name
  end
end

d = Direction.new("n", "North")
# puts d.direction_name # returns "North"

class Compass
  # attr_reader :directions
  def initialize
    directions = ["north", "east", "south", "west"]
    @directions = []
    directions.each do |direction|
      @directions.push(direction)
    end
  end
end

# my_compass = Compass.new
# puts my_compass.directions

get '/' do
  "test"
end

get '/:direction' do |direction|
  Compass.new
  "The direction corresponding to #{direction} is params['direction']"
end
