# U2.W4: Die Class 1: Numeric


# I worked on this challenge [by myself].

# 0. Pseudocode

# I should be able to use #sample and #count to get all
# of the values that I need for output. #sample will
# take strings as well, unlike #rand.

# (I used the same pseudocode for week 5 mainly because the problem
# is essentially exactly the same as next week's, just with
# non-integers.)


# 1. Initial Solution

class Die
	def initialize(array)
		@array = array
		if array.empty?
      	  raise ArgumentError.new("Can't have zero or negative sides")
    	end
	end

	def roll
		@array.sample
	end

	def sides
		@array.count
	end
end

Die.new([1,2,3,4,5,6])


# 3. Refactored Solution

# I had originally tried to make it roll a random
# value out of a position in an array(0..-1), but I quickly found that
# #rand causes issues after reading through a little bit of documentation.
# I found that #sample was easier and more dynamic to use even when you are
# dealing with just integers. 


# 4. Reflection

=begin
	
The code itself is pretty damn simple. The real challenge was figuring out
how to check if an array is empty. After a little bit of googling, I found
that booleans are the only way to really go about raising error messages
unless there is a specific error for a specific type of method or class. 

So, I added the if statement to check if the array itself is empty.
Stackoverflow is a life saver in these situations. Haha. 
	
=end