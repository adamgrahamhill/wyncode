class Person
  attr_accessor :name, :hair_color
  @@everyone = []
  def self.riot
    puts "The people are rising up!"
    @@everyone.each do |i|
      puts  "#{i.name} is rioting!"
    end

  end
  def save
    @@everyone << self
    p @@everyone
  end
  def initialize(name, hair_color)
    @name = name
    @hair_color = hair_color
  end

  def sing
    puts " #{@name} is singing "
  end

end

adam = Person.new("adam", "blonde")
jon = Person.new("jon", "beanie")
adam.save
jon.save
Person.riot
