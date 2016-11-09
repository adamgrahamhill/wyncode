# class LifeForm
#   def jumped_over(arg1, arg2)
#
#   end
# end
# quick_fox = LifeForm.new
# lazy_dog = LifeForm.new
# daisy_log = LifeForm.new  #the daisys are a lifeform....
# quick_fox.jumped_over(lazy_dog, daisy_log)

# p self.class
#
# class Bob
# def self.burg
# end
#
# end
#
# p Bob.burg

# class Quadrilateral
# end
#
# class Rectangle < Quadrilateral
# end
#
# class Square < Rectangle
# end
#
# class Trapezoid < Quadrilateral
# end
#
# class Rhombus < Trapezoid
# end
#
# def test
#   squa = Square.new
#   puts squa.is_a? Rectangle
#   puts squa.is_a? Quadrilateral
#
#   rect = Rectangle.new
#   puts rect.is_a? Quadrilateral
#   puts not(rect.is_a? Trapezoid)
#
#   rho = Rhombus.new
#   puts rho.is_a? Trapezoid
#   puts !rho.is_a?(Rectangle)
#
#   trap_queen = Trapezoid.new
#   puts trap_queen.is_a?(Quadrilateral)
#   puts !trap_queen.is_a?(Square)
# end
#
# test
