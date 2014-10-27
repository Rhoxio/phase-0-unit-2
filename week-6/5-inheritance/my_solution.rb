# U2.W6: Introduction to Inheritance

# I worked on this challenge by myself.


# 1. Pseudocode
=begin

I need to set attr_readers for pretty much everything so methods can be called form anywhere. 

I have no idea how to deal with the dates unless I use a 365 calendar day calculation every time. I need to look this up. 

I should be able to only set some variables once in the first initialize. Watch for which ones I don't need to use twice.

=end
# 2. Initial Solution

require 'date'

class GlobalCohort

	attr_reader :students, :city, :immersive_start_date, :graduation_date, :local, :google_community, :num_of_students
	
	def initialize(students)    
    	@p0_start_date = "2014-10-18"
    	@immersive_start_date = Date.parse(@p0_start_date)+49 #I found #parse on stackoverflow, but I have no idea how to deal with dates otherwise unless I literally write a method to calclate them.  
    	@graduation_date = Date.parse(@p0_start_date)+109 # There HAS to be an easier way to do this than using #parse. 
    	@google_community = ""
    	@students = students
    	@local =[]
  	end

  	def in_phase
       	d = Date.today - Date.parse(@p0_start_date) #I would die without Google. 
		if d < 0 
			puts "not started"
		elsif d	< 63
			puts "in p0"
		elsif d < 133 
			puts "in p1"
		else
			puts "graduated"
		end
  	end

  	def unit_calculator
        d = Date.today - Date.parse(@p0_start_date)
		if d < 0 
			puts "not started yet"
		elsif d	< 21
			puts "unit 1"
		elsif d < 42
			puts "unit 2"
		elsif d < 63
			puts "unit 3"
		elsif d < 84
			puts "unit 4"
		elsif d < 105
			puts "unit 5"
		elsif d < 126
			puts "unit 6"		
		else
		    puts "done"
		end
  	end

  def graduated?
      	d = Date.today - Date.parse(@p0_start_date) 
      	if d > 140 #At least it is consistent. You still have to do math on the fly to account for the dates. There really HAS to be an easier way. 
          true
      	else
          false
      	end
  end

end

class LocalCohort < GlobalCohort
  def initialize(students)
  	@students = students
  	@p0_start_date = "2014-10-18"
  	@city
  	@num_of_students # I don't like having variable names defined for me. It makes my work feel sloppy and unfocused. 
  end

	def add_student(input)
		@students << input
	end

	def num_students
		@num_of_students = @students.count
	end

	def remove_student(student)
		@students.delete_if {|x| x[0] == student}
	end
end

# 4. Refactored Solution






# 3. DRIVER TESTS GO BELOW THIS LINE
members = [["Billy", "San Francisco","billybob@gmail.com"],["Barney", "Chicago", "purple_dinosaur@yahoo.com"],["Chuck", "NYC", "karatemaster1991@gmail.com"]]
output = GlobalCohort.new(members)
print output.students
puts output.in_phase
puts output.graduated?
puts output.unit_calculator
puts output.immersive_start_date
puts output.graduation_date

student1 = ["Jack","Chicago","randomemail@domain.com"]
local = LocalCohort.new(student1)

local.students
local.in_phase
local.graduated?
local.unit_calculator
local.immersive_start_date
local.num_students




# 5. Reflection
=begin
	
I will be honest... I bumbled through this challenge like a drunk blind man with no inner ear. The instructions were unclear, and having to assign
variables based on stuff set in the readme makes this more tedious than it has to be. My only saving grace when it came to
calculating dates was the #parse method I found on Stackoverflow. I did find documentation on how time and dates work in Ruby, but I 
felt like we should have been introduced to that before we were thrown in to a challenge that makes us use it in a meaningful way.

By the time I got to the second class, my brain felt like mush and I had lost all feeling in my ass. I felt like the original message of 
the challenge was lost due to the convoluted nature of the instructions. I get that the second inherits traits 
from the first class, and I know that I implemented that correctly because the driver test code doesn't throw errors. 
That was the point of the exercise, so I am going to leave it at that. 
	
=end
