class Table
  def a_public_method
    a_private_method
  end

  private

  def a_private_method
  end
end

t = Table.new
t.a_public_method
# t.a_private_method
# t.initialize
t.send :a_private_method
t.send :initialize

class Parent
  private
  def whisper_secret
    puts "parent's secret"
  end
end

class Child < Parent
  def expose_secret
    whisper_secret
  end
end

c = Child.new
puts c.expose_secret
puts c.whisper_secret
