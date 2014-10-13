# U2.W4: Pad an Array
# This is a pairing challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with: Mark Pfeffer.

# 0. Pseudocode
=begin
I think this will be fairly simple. All you really need to do is add x
slots to the array and populate it with the second variable. 

Getting the thing to output a nil value is an odd problem, though. I thought nil
meant literally nothing in ruby. It can hold a value in an array? I will google a solution
and probably just end up working backwards if it isn't simple...

Making the array non-destructive might be an issue. I remember reading on the
Google+ page that people were having problems with self and having it not pass rspec.
How do you work around it? Set it as a variable as make it equal to self?

=end


# 1. Initial Solution

class Array
	def pad!(total_length, add = nil)
		while total_length > length
	self << add
	end
		self
	end

	def pad(total_length, add = nil)
		origin = self.dup
		  while total_length > length
			origin << add
		  end		
		print self
		print origin
	end
end


# 3. Refactored Solution

# The destructive version is my first attempt once I figured out how to
# get the damn thing to equal nil if the slot was empty. I kept thinking
# that it would make it always nil, but I guess it modifies the nil
# value if you actually put data in there. Thanks again, stackoverflow! 

# 4. Reflection

=begin
Mark and I worked on this for the full hour. Most of the time we were trying
to get the damn rspec to pass. We finally got it to pass all 9 once we found #dup.

I guess self always modifies itself if you set it equal to a variable or something.
I couldn't find a straightforward solution, so I just tried making a "copy" of it.

Phillip Blume posted the solution about the same time I found the page that had an
explanation on it. Great minds think alike or something. 
=end