class Vehicle
  attr_accessor :engine
  attr_accessor :tires
end



class Car < Vehicle
  # attr_accessor :engine
  # attr_accessor :tires
end

class Motorcycle < Vehicle
  # attr_accessor :engine
  # attr_accessor :tires
end

print Car.ancestors
puts Car.superclass

print Motorcycle.ancestors
puts Motorcycle.superclass

car = Car.new
puts car.engine

motorcycle = Motorcycle.new
puts motorcycle.engine

module Talkative
  def speak
    puts "Hello world!"
  end
end

class Kitt < Car
  include Talkative
end

print Kitt.ancestors
puts Kitt.superclass

kitt = Kitt.new
kitt.speak
