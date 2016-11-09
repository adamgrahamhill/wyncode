class Person
  def speak; "I'm a person"; end
end

class Parent < Person
  def whoami; puts "I'm a parent"; end
  def speak(arg)
    puts arg
    # super + "who is a parent"
  end
end


class Child < Parent
  def whoami; puts "I'm a child"; end
  def speak; super "I'm a child"; end
end

p = Parent.new
p.speak "I'm a parent"

c = Child.new
c.speak

# p = Person.new
# p p.speak
#
# c = Parent.new
# p c.speak
