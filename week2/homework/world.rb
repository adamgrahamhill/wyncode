class Person
  attr_accessor :hair_color
  def initialize(name, hair_color)
    @name = name
    @hair_color = hair_color
  end

  def hair_color
    @hair_color
  end

  def sing
    "Hey man"
  end
end

sandy = Person.new("sandy", "green")
# puts sandy.hair_color
# puts sandy.sing

class Wyncoder < Person
  def code
    "I am coding!"
  end
  def to_s
    "changed to_s"
  end
  def inspect
    "changed inspect"
  end
end

walter = Wyncoder.new("Walter", "blue")
# puts walter.sing
# puts walter.code
# puts sandy.code
# puts walter
# p walter
# puts walter.inspect
# puts walter.to_s
puts Wyncoder.new("x", "y")
p Wyncoder.new("x", "y")
