# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].

# 2. Pseudocode

# I should be able to use #sample and #count to get all
# of the values that I need for output. #sample will
# take strings as well, unlike #rand. 

# (I used the same pseudocode mainly because the problem
# is essentially the same as last week's, just with
# non-integers.)


# 3. Initial Solution
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

	#this is essentially driver test code
	def show
	print sides
	puts ""
	print roll
	puts ""
	end
end

Die.new(%w(a b c d)).show


# 4. Refactored Solution

# If I think of a way to refactor this, I will revisit it
# later in the week. I saw someone use #flatten, so that is a possiblity. 

# 1. DRIVER TESTS GO BELOW THIS LINE

# Well, you could call my #show method driver test code. It
# makes sure that the correct values are being output by the methods. 
# I do this naturally as I look for solutions a lot of the time.

# 5. Reflection 
=begin

This exercise is pretty much exactly the same as the previous one with
the way #sample works. Fairly straight-forward. 

=end