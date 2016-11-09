def method
  self
end

p method

class Test
  def test_method
    self
  end
end
# class SecondTest
#   self
# end
# p Test
# p SecondTest
test = Test.new
p test.test_method.class
