require 'sinatra'

#problem 1
directions = ["north", "east", "south", "west"]
#problem2
compass = {n: "north", e: "east", s: "south", w: "west"}

class Direction
  attr_reader :abbreviation, :direction_name
  def initialize(abbreviation, direction_name)
    @abbreviation = abbreviation
    @direction_name = direction_name
  end
end

class Compass
  attr_reader :directions
  def initialize
    compass = {"n" => "north", "e" => "east", "s" => "south", "w" => "west"}
    @directions = []
    compass.each do |key, value|
      @directions << Direction.new(key,value)
    end
  end
end

get '/' do
  selected_direction = nil
  my_compass = Compass.new
  my_compass.directions.each do |dir|
    if dir.abbreviation == params['direction']
      selected_direction = dir
    end
  end
  if selected_direction
    "The direction corresponding to #{selected_direction.abbreviation} is #{selected_direction.direction_name.capitalize}"
  else
    "test"
  end
end

# get '/' do
#  my_compass = Compass.new
#  selected_direction = my_compass.directions.select do |d|
#    d.abbreviation == params['direction']
#  end.first
#  "The direction corresponding to #{selected_direction.abbreviation} is #{selected_direction.direction_name}"
# end ---Auston's Version.
# # loop direction through compass.directions and return string
