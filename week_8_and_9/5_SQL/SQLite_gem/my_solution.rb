# U3.W7: BONUS Using the SQLite Gem

# I worked on this challenge [by myself, with:]

require 'sqlite3'


$db = SQLite3::Database.open "congress_poll_results.db"


def print_arizona_reps
  puts "AZ REPRESENTATIVES"
  az_reps = $db.execute("SELECT name FROM congress_members WHERE location = 'AZ'")
  az_reps.each { |rep| puts rep }
end

def print_longest_serving_reps(minimum_years)
  puts "LONGEST SERVING REPRESENTATIVES"
  longest_serving_reps = $db.execute("SELECT name, years_in_congress FROM congress_members WHERE years_in_congress > #{minimum_years}")
  longest_serving_reps.each {|rep,years| puts rep + " - " + years.to_s}
end

def print_lowest_grade_level_speakers(grade)
  puts "LOWEST GRADE LEVEL SPEAKERS (less than < 8th grade)"
  lowest_grade_level_speakers = $db.execute("SELECT name, grade_current FROM congress_members WHERE grade_current <= #{grade}")
  lowest_grade_level_speakers.each {|rep,grade| puts rep + " - " + grade.to_s}
end

def print_separator
  puts 
  puts "------------------------------------------------------------------------------"
  puts 
end


#REFACTORED
def print_states_representatives(*states)
	puts "REPRESENTATIVES FROM SELECTED STATES"
  states.each {|state| puts $db.execute("SELECT name,location FROM congress_members WHERE location LIKE?", "#{state}")}
end

print_arizona_reps

print_separator

print_longest_serving_reps(35)
# TODO - Print out the number of years served as well as the name of the longest running reps
# output should look like:  Rep. C. W. Bill Young - 41 years

print_separator
print_lowest_grade_level_speakers(8)
# TODO - Need to be able to pass the grade level as an argument, look in schema for "grade_current" column

# TODO - Make a method to print the following states representatives as well:
# (New Jersey, New York, Maine, Florida, and Alaska)
print_separator
print_states_representatives("IL","WI")

##### BONUS #######
# TODO (bonus) - Stop SQL injection attacks!  Statmaster learned that interpolation of variables in SQL statements leaves some security vulnerabilities.  Use the google to figure out how to protect from this type of attack.

# TODO (bonus)
# Create a listing of all of the Politicians and the number of votes they recieved
# output should look like:  Sen. John McCain - 7,323 votes (This is an example, yours will not return this value, it should just 
#    have a similar format)

# Create a listing of each Politician and the voter that voted for them
# output should include the senators name, then a long list of voters separated by a comma
#
# * you'll need to do some join statements to complete these last queries!


# REFLECTION- Include your reflection as a comment below.
# How does the sqlite3 gem work?  What is the variable `$db` holding?  

# => The SQLite3 gem allows Ruby to execute SQL queries on a database. $db holds the query to access particular tables, columns, and rows in a database.

# Try to use your knowledge of ruby and OO to decipher this as well as h
# ow the `#execute` method works.  Take a stab at explaining the line 
# `$db.execute("SELECT name FROM congress_members WHERE years_in_congress 
#   > #{minimum_years}")`.  Try to explain this as clearly as possible for 
# your fellow students.  

# => Ruby accesses column name from the congress_member table where years in congress is less than an interpolated value. It uses a string to pull the data but then returns and executes commands on an array.

# If you're having trouble, find someone to pair on this explanation with you.

#REFLECTION
# => It's great getting practice with SQL and even more exciting to see Ruby start using real-world data! It's fun to play with these particular datasets and I'm fascinated to see what others have done to this effect.