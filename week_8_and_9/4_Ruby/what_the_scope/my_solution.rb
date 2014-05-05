# U3.W8-9: What the Scope

# I worked on this challenge with Scott Silveus

## Release 0: Run the Code
What errors are you getting? Note them so you can fix them in Release 1. 

#First error is var_9 is rb:60:in `block in do_stuff': undefined method `+' for nil:NilClass (NoMethodError)

## Release 1: Modify the Code
Modify the code so all variables are accessible within the code when needed (ie make the code run).  For each modification add a comment in the code that states what you modified and why.

## Release 2: Identify the Scope
For each variable, identify the scope. Include the scope of each variable as a comment. 

```ruby
# 1. var_1 is a ........... variable which means ......
```

## Release 3: Write [Driver Test Code](../../../references/driver_code.md) or Assert Statements
## Release 4: [Reflect](../../../references/reflect.md)

# I worked on this challenge: Scott Silveus, Carl Krause

=begin

$var_1 = 22 #Creates a global variable

class Person #Creating a class called Person
  @@var_2 #Class variable can be used in any of methods inside class Person
  VAR_6 = "Ruby" #Variable 6 is a constant
 
  attr_reader :var_3, :var_4 #Lets var_3 and var_4 be used as methods to read the variables outside the class
 
  def initialize(var_5 = VAR_6) #Initializes with argument var_5 set to equal the constant VAR_6
    @var_3="Law of Demeter"  #Creates instance variable of string
  end
 
  def do_stuff(var_7=[1,2,3]) #defines method do_stuff with argument that is variable set to array with values 1,2,3
    var_7.each do |var_8| #for each element in the array add 2 to sum
      var_9 += var_8 + 2 #*we think the author intended to increment var_8 by 2*
    end
  end
end
=end

# 2. Original Code

$var_1 = 22
 
class Person
  @@var_2
  RUBY = "Ruby"
 
  attr_reader :var_3, :var_4
 
  def initialize(var_4 = RUBY)
    @var_3="Law of Demeter" 
    @var_4 = var_4
  end
 
  def do_stuff(array=[1,2,3]) #changed var_7 to 'array'
    array.map{|i| i.to_i + 2} #var_9 renamed to sum, changed var_7 to 'array'; changed var_8 to i
  end
end

# 3. Modified Code (with scope identified as comments)





# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

carl = Person.new()
puts carl.class == Person
puts carl.do_stuff == [3,4,5]
puts carl.var_3 == "Law of Demeter"
puts carl.var_4 == "Ruby"
puts carl.do_stuff($var_1.to_s.split(" ")) == [24]

# 5. Reflection 

# => Scott and I thought this exercise was a bit nebulous, but it was good in that it forced us to think more about the differences between different types of variables (global, class, instance, and local).
# => We cleaned up the variable names and commented out the scope of different variables.
# => A good reminder of scope in preparation for classes next week...
