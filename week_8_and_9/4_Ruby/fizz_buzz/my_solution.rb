# U3.W8-9: 


# I worked on this challenge by myself.

# 2. Pseudocode

# => DEFINE a method, super_fizzbuzz which takes one argument (an array)
# => CREATE an empty array
# => FOR each item in the passed array DO:
	# iterate over each value; IF the value is not divisible by 3 or 5, put the value into the empty array
	# ELSIF the value is divisible by both 3 and 5, push "FizzBuzz" into the empty array
	# ELSIF the value is divisible by 3, push "Fizz" into the empty array
	# ELSE the value is divisible by 5, push "Buzz" into the empty array
	# END if/elsif/else
	# END the iteration
# => RETURN the array we've added values to
# => END


# 3. Initial Solution

def super_fizzbuzz(array)
	super_fizzbuzz_array = []
	array.each do |i|
		if i % 3 !=0 && i % 5 !=0
			super_fizzbuzz_array << i
		elsif i % 3 == 0 && i % 5 == 0
			super_fizzbuzz_array << "FizzBuzz"
		elsif i % 3 == 0
			super_fizzbuzz_array << "Fizz"
		else i % 5 == 0
			super_fizzbuzz_array << "Buzz"
		end
	end
	return super_fizzbuzz_array
end

# 4. Refactored Solution

# => I'd like to return to this to make it more concise, but I'm happy with it at the moment.




# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

p super_fizzbuzz([15, 5, 3, 1]) == ["FizzBuzz", "Buzz", "Fizz", 1]
p super_fizzbuzz([1,2,3]) == [1,2,"Fizz"]
p super_fizzbuzz((1..100).map {|i| 15**(1+rand(15))}) == ["FizzBuzz"]*100
p super_fizzbuzz((1..100).map {|i| 3**(1+rand(15))}) == ["Fizz"]*100
p super_fizzbuzz((1..100).map {|i| 5**(1+rand(15))}) == ["Buzz"]*100




# 5. Reflection

# => Maybe it's a good sign, but this took me under an hour to do (inconceivable even a few weeks ago), including writing driver code.
# => I wrote out the logic on a sheet of paper, then did the pseudocode. I converted the specs to driver code,
# => then dove in. At first, I hadn't included a separate array where I was pushing the values which I quickly corrected after running the tests the first time.
# => Overall, I'm getting in the habit of writing driver code from the start, which makes writing and testing code in Sublime quick and easy.