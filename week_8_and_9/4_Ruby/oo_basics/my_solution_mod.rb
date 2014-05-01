# U3.W8-9: OO Basics: Student


# I worked on this challenge by myself.

# 2. Pseudocode
# => Create an array 'students' with five names as strings.


# 3. Initial Solution

class Student
    students = ["Alex",[100,100,100,0,100],"Janice",[90,90,80,90,80],"Bill",[70,80,80,70,80],"Megan",[90,60,80,90,70],"Sarah",[80,70,60,100,90]]

  attr_accessor :scores, :first_name
 
  def initialize(first_name,*scores)   #Use named arguments!
    @first_name = first_name
    @scores = scores
  end

  def students
    def first_name
  	 students << @first_name
    end
  end
end

=begin
  students = {
    "Alex" => [100,100,100,0,100],
    "Janice" => [90,90,80,90,80],
    "Bill" => [70,80,80,70,80],
    "Megan" => [90,60,80,90,70],
    "Sarah" => [80,70,60,100,90]
  }
    students = ["Alex",[100,100,100,0,100],"Janice",[90,90,80,90,80],"Bill",[70,80,80,70,80],"Megan",[90,60,80,90,70],"Sarah",[80,70,60,100,90]]

=end
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