# U3.W8-9: Triangle Debugger


# I worked on this challenge by myself.


# 1. Original Solution
=begin
def valid_triangle?(a, b, c, sum)
  if a != 0 || b != 0 || c != 0
  if a >= b
  largest = a
  sum += b
  else largest = b
  sum += a
  end
  if c > largest
  sum += largest
  largest = c
  else sum += c
  end
  if sum > largest
  return "true"
  else return "false"
  end
  else return "false"
  end
end
=end

# 2. Answer the question for each bug

#*NOTE*: I've copied the test results to save some time/typing. My comment is below each failed test.

=begin
  1) valid_triangle? expects 3 arguments
     Failure/Error: method(:valid_triangle?).arity.should eq 3
       
       expected: 3
            got: 4
       
       (compared using ==)
     # ./DBC/phase_0_unit_3/week_8_and_9/4_Ruby/triangle_debugger/triangle_spec.rb:9:in `block (2 levels) in <top (required)>'

     # => Wrong number of arguments; can remove sum to make it pass test as sum is not a necessary argument.

  2) valid_triangle? returns true for an equilateral triangle
     Failure/Error: valid_triangle?(length, length, length).should be_true
     ArgumentError:
       wrong number of arguments (3 for 4)
     # ./DBC/phase_0_unit_3/week_8_and_9/4_Ruby/triangle_debugger/my_solution.rb:9:in `valid_triangle?'
     # ./DBC/phase_0_unit_3/week_8_and_9/4_Ruby/triangle_debugger/triangle_spec.rb:14:in `block (2 levels) in <top (required)>'

     # => Removing the fourth argument should help; also making sure all values are above zero is also important

  3) valid_triangle? returns false if any of the arguments are 0
     Failure/Error: [0, length, length].permutation(3).all? { |(a,b,c)| valid_triangle?(a,b,c) }.should be_false
     ArgumentError:
       wrong number of arguments (3 for 4)
     # ./DBC/phase_0_unit_3/week_8_and_9/4_Ruby/triangle_debugger/my_solution.rb:9:in `valid_triangle?'
     # ./DBC/phase_0_unit_3/week_8_and_9/4_Ruby/triangle_debugger/triangle_spec.rb:20:in `block (3 levels) in <top (required)>'
     # ./DBC/phase_0_unit_3/week_8_and_9/4_Ruby/triangle_debugger/triangle_spec.rb:20:in `permutation'
     # ./DBC/phase_0_unit_3/week_8_and_9/4_Ruby/triangle_debugger/triangle_spec.rb:20:in `each'
     # ./DBC/phase_0_unit_3/week_8_and_9/4_Ruby/triangle_debugger/triangle_spec.rb:20:in `all?'
     # ./DBC/phase_0_unit_3/week_8_and_9/4_Ruby/triangle_debugger/triangle_spec.rb:20:in `block (2 levels) in <top (required)>'

     # => Again, the wrong number of arguments is messing with it. Also, ensuring all values are above zero will make this test return 'true.'

  4) valid_triangle? returns true for an isoceles triangle
     Failure/Error: triangle.permutation(3).all? { |(a,b,c)| valid_triangle?(a,b,c) }
     ArgumentError:
       wrong number of arguments (3 for 4)
     # ./DBC/phase_0_unit_3/week_8_and_9/4_Ruby/triangle_debugger/my_solution.rb:9:in `valid_triangle?'
     # ./DBC/phase_0_unit_3/week_8_and_9/4_Ruby/triangle_debugger/triangle_spec.rb:33:in `block (4 levels) in <top (required)>'
     # ./DBC/phase_0_unit_3/week_8_and_9/4_Ruby/triangle_debugger/triangle_spec.rb:33:in `permutation'
     # ./DBC/phase_0_unit_3/week_8_and_9/4_Ruby/triangle_debugger/triangle_spec.rb:33:in `each'
     # ./DBC/phase_0_unit_3/week_8_and_9/4_Ruby/triangle_debugger/triangle_spec.rb:33:in `all?'
     # ./DBC/phase_0_unit_3/week_8_and_9/4_Ruby/triangle_debugger/triangle_spec.rb:33:in `block (3 levels) in <top (required)>'
     # ./DBC/phase_0_unit_3/week_8_and_9/4_Ruby/triangle_debugger/triangle_spec.rb:32:in `each'
     # ./DBC/phase_0_unit_3/week_8_and_9/4_Ruby/triangle_debugger/triangle_spec.rb:32:in `all?'
     # ./DBC/phase_0_unit_3/week_8_and_9/4_Ruby/triangle_debugger/triangle_spec.rb:32:in `block (2 levels) in <top (required)>'

     # => Will return true if all values are above zero and the correct amount of arguments can be given to the method.


  5) valid_triangle? returns true for every permutation of a Pythagorean triple
     Failure/Error: triple.permutation(3).all? { |(a,b,c)| valid_triangle?(a,b,c) }
     ArgumentError:
       wrong number of arguments (3 for 4)
     # ./DBC/phase_0_unit_3/week_8_and_9/4_Ruby/triangle_debugger/my_solution.rb:9:in `valid_triangle?'
     # ./DBC/phase_0_unit_3/week_8_and_9/4_Ruby/triangle_debugger/triangle_spec.rb:40:in `block (4 levels) in <top (required)>'
     # ./DBC/phase_0_unit_3/week_8_and_9/4_Ruby/triangle_debugger/triangle_spec.rb:40:in `permutation'
     # ./DBC/phase_0_unit_3/week_8_and_9/4_Ruby/triangle_debugger/triangle_spec.rb:40:in `each'
     # ./DBC/phase_0_unit_3/week_8_and_9/4_Ruby/triangle_debugger/triangle_spec.rb:40:in `all?'
     # ./DBC/phase_0_unit_3/week_8_and_9/4_Ruby/triangle_debugger/triangle_spec.rb:40:in `block (3 levels) in <top (required)>'
     # ./DBC/phase_0_unit_3/week_8_and_9/4_Ruby/triangle_debugger/triangle_spec.rb:39:in `each'
     # ./DBC/phase_0_unit_3/week_8_and_9/4_Ruby/triangle_debugger/triangle_spec.rb:39:in `all?'
     # ./DBC/phase_0_unit_3/week_8_and_9/4_Ruby/triangle_debugger/triangle_spec.rb:39:in `block (2 levels) in <top (required)>'

     # => Will return true if all values are above zero and the correct amount of arguments can be given to the method.

  6) valid_triangle? returns false for any impossible triangle
     Failure/Error: triple.permutation(3).all? { |(a,b,c)| !valid_triangle?(a,b,c) }
     ArgumentError:
       wrong number of arguments (3 for 4)
     # ./DBC/phase_0_unit_3/week_8_and_9/4_Ruby/triangle_debugger/my_solution.rb:9:in `valid_triangle?'
     # ./DBC/phase_0_unit_3/week_8_and_9/4_Ruby/triangle_debugger/triangle_spec.rb:47:in `block (4 levels) in <top (required)>'
     # ./DBC/phase_0_unit_3/week_8_and_9/4_Ruby/triangle_debugger/triangle_spec.rb:47:in `permutation'
     # ./DBC/phase_0_unit_3/week_8_and_9/4_Ruby/triangle_debugger/triangle_spec.rb:47:in `each'
     # ./DBC/phase_0_unit_3/week_8_and_9/4_Ruby/triangle_debugger/triangle_spec.rb:47:in `all?'
     # ./DBC/phase_0_unit_3/week_8_and_9/4_Ruby/triangle_debugger/triangle_spec.rb:47:in `block (3 levels) in <top (required)>'
     # ./DBC/phase_0_unit_3/week_8_and_9/4_Ruby/triangle_debugger/triangle_spec.rb:46:in `each'
     # ./DBC/phase_0_unit_3/week_8_and_9/4_Ruby/triangle_debugger/triangle_spec.rb:46:in `all?'
     # ./DBC/phase_0_unit_3/week_8_and_9/4_Ruby/triangle_debugger/triangle_spec.rb:46:in `block (2 levels) in <top (required)>'
=end


# 3. Refactored Solution (Comment the other code to run this)

def valid_triangle?(a, b, c)
  if a <= 0 || b <= 0 || c <= 0
    return false
  elsif a+b > c && a+c > b && b+c > a
    return true
  else
    return false
  end
end

# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

p defined?(valid_triangle?) == "method"
p method(:valid_triangle?).arity == 3
p valid_triangle?(5,5,5)
p valid_triangle?(0,5,5) == false
p valid_triangle?(3,3,5)
p valid_triangle?(115, 252, 277)
p valid_triangle?(1, 1, 2.01) == false


# 5. Reflection
# => This was a fun challenge. Like the FizzBuzz challenge, I completed it relatively quickly. I've gotten in the habit of converting the specs to driver code
# => or writing my own, which speeds up the process considerably. I wrote the driver code and that helped me figure out the last Rspec test which kept failing.
# => I discovered that, while values needed to be positive before continuing, I needed to switch back from return true to false for configurations where all values were positive
# => but couldn't form a valid triangle.
# => Overall, my confidence is building and it feels good to get these challenges done in short order.