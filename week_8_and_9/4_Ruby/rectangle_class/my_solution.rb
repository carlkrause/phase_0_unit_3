# U3.W8-9: Implement a Rectangle Class


# I worked on this challenge by myself.

# 2. Pseudocode
# => INPUT: Two arguments as integers, height and width
# => OUTPUT: area and perimeter (integers), diagonal (float), or square? (boolean)

# => DEFINE class Rectangle
# => Make width and height readable and writable
# => INITIALIZE with two arguments: width and height
	# Create two instance variables, width and height
# => DEFINE method area
	# RETURN: instance variables width and height multiplied
# => END
# => DEFINE method perimeter
	# RETURN: each instance variable (width and height) multiplied by two, then added to each other
# => END
# => DEFINE method diagonal
	#RETURN square root of: each instance variable squared then added together
# => END
# => DEFINE square? method
	# IF instance variables height and width are equal, return true
	# ELSE return false
	# END
# => END
# => END


# 3. Initial Solution
class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width  = width
    @height = height
  end

  def area
  	return @width * @height
  end

  def perimeter
  	return (@width * 2) + (@height * 2)
  end

  def diagonal
  	return Math.sqrt((@width**2 + @height**2).to_f)
  end

  def square?
  	if @width == @height
  		return true
  	else
  		return false
  	end
  end
end

=begin
  def ==(other)
    (other.width  == self.width && other.height == self.height ) ||
    (other.height == self.width && other.width  == self.height )
  end
end

=end


# 4. Refactored Solution

class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width  = width
    @height = height
  end

  def area
  	return @width * @height
  end

  def perimeter
  	return (@width * 2) + (@height * 2)
  end

  def diagonal
  	return Math.sqrt((@width**2 + @height**2).to_f)
  end

  def square?
  	if @width == @height
  		return true
  	else
  		return false
  	end
  end
end


# 1. DRIVER TESTS GO BELOW THIS LINE
=begin
test_rectangle = Rectangle.new(10, 20)
puts test_rectangle.diagonal
puts test_rectangle.square?
puts test_rectangle.perimeter
puts test_rectangle.area
=end

test_rectangle = Rectangle.new(10,20)
test_square = Rectangle.new(20,20)
#AREA
p defined?(test_rectangle.area) == "method"
p test_rectangle.area == 200
p test_square.area == 400
#PERIMETER
p defined?(test_rectangle.perimeter) == "method"
p test_rectangle.perimeter == 60
p test_square.perimeter == 80
#DIAGONAL
p defined?(test_rectangle.diagonal) == "method"
p test_rectangle.diagonal == 22.360679774997898
p test_square.diagonal == 28.284271247461902
#SQUARE
p defined?(test_rectangle.square?) == "method"
p test_rectangle.square? == false
p test_square.square? == true


# 5. Reflection 
# => Again, I'm pleased that I was able to solve this problem relatively quickly.
# => Converting the tests to driver code saves so much time--it's crazy I didn't get in this habit sooner!
# => The only thing that was a stumbling block was the diagonal-to-float issue, but I did a bit of reseearch and
# => discovered that using Math.sqrt(input) worked. I'm really getting used to using the API and I'm hoping I'll
# => start to internalize more and more, though it takes 20 seconds to find the method I need with the API.
