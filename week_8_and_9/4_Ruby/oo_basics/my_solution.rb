# U3.W8-9: OO Basics: Student


# I worked on this challenge by myself.

# 2. Pseudocode



# 3. Initial Solution

class Student
  attr_accessor :scores, :first_name
  	@scores = scores
  	@first_name = first_name
  def initialize(args)   #Use named arguments!
    #your code here
  end
end

students = Array.new(5) {Hash.new(5)}
first_name = ["Alex","Janice","Bill","Megan","Sarah"]
scores = [[100,100,100,0,100],[90,90,80,90,80],[70,80,80,70,80],[90,60,80,90,70],[80,70,60,100,90]]

# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
# Tests for release 0:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Tests for release 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Tests for release 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1





# 5. Reflection 