# class Table
#   attr_accessor :num_legs
#
#   def initialize(num_legs)
#     raise "Halt!"
#     if  num_legs > 0
#       @num_legs = num_legs
#     else
#       raise "Invalid number of legs."
#     end
#   end
# end
#
# table = Table.new(-1)
# puts table.num_legs
# puts "Hello world"

# def add_two(number)
#   if not number.respond_to? :+
#     raise ArgumentError, "Invalid argument"
#   elsif number == 0
#     raise "I just don't like zero"
#   end
#   number + 2
# end
#
# begin
#   puts add_two( 0 )
# rescue ArgumentError => e
#   puts "You : #{e.message}. Me: Sorry!"
# rescue => e
#   puts "what!?"
#   puts e.backtrace
# end
# puts "And we're back!"

def a
  b
end

def b
  begin
    c
  rescue
    nil
  end
end

def c
  d
end

def d
  raise "Boom!"
end

begin
  a
rescue => e
  puts e.backtrace
end
