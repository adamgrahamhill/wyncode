irb: self is an object   `self.class`
a plain ruby file: `self.class`

A method:  self is main
```ruby
def method
  self
end

p method
```
a class: self is the class  from which it is defined.
```ruby
class Test
  self
end
class SecondTest
  self
end
p Test
p SecondTest
```
method in a class: self is the name of the class it is from
```ruby
class Test
  def test_method
    self
  end
end

test = Test.new
p test.test_method.class
```
