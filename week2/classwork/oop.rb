=begin

class Table
  attr_accessor :num_legs #combo of read/wr
  # attr_writer :num_legs
  # attr_reader :num_legs
  def self.has_legs? #class method
    true
  end
  def initialize(num_legs)
    @tabletop = []
    @num_legs = num_legs
  end
  def put_on(something)

    @tabletop << something
  end
  def look_at
    @tabletop
  end
  # def num_legs
  #   @num_legs
  # end
  # def num_legs=(value)
  #   @num_legs = value
  # end
end

# puts Table.class
# print Table.methods
#
# puts Table.hash

a_table = Table.new(4)

# puts a_table.class
# print a_table.methods
#
# puts a_table.hash

a_table.put_on 1
# puts a_table.look_at

a_table.put_on 2
# puts a_table.look_at
# puts a_table.num_legs
a_table.num_legs = 1
puts a_table.num_legs
puts Table.has_legs?

=end

class Car
end

# puts Car.class
# print Car.methods
#
# my_car = Car.new
# puts my_car.class
# print my_car.methods

print Car.ancestors
