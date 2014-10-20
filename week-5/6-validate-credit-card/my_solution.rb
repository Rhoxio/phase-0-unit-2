# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode
=begin
Convert input to array of integers
Reverse, multiply every even slot by 2.
Split, add all integers.
If sum of integers % 10 == 0, true
If not, false.
=end

# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits

class CreditCard
	def initialize(origin_num)
		u_origin = origin_num.to_s.split('')			#I kept getting bignum errors. This is a temporary fix.
		@origin = u_origin.collect{|i| i.to_i}
		if @origin.count != 16
			raise ArgumentError.new("Card length invalid. Must be 16 digits.")
		# p @origin.reverse
		end
	end

	def algorithm()
		r_origin = @origin.reverse
		doubles_added = r_origin.map.with_index{|val, int| int % 2 == 0 ? val: val * 2}
		split_doubles = doubles_added.collect{|x| x.to_s}
		why_bignum = split_doubles.inject(:+) 		#Symbols for operators are strong! Just adds the individual strings together. 
		
		almost = why_bignum.split('')				#I have no idea why you cant just split the damn "bignum" value while it is an integer. 
		final_variant = almost.map {|y| y.to_i}
		ans = final_variant.inject(:+)
		p ans

		if ans % 10 == 0
			puts "Valid Card Number"
			return true
		else
			puts "Invalid Card Number"
			return false
		end
	end

end





# 4. Refactored Solution

=begin

I know how to refactor this in theory, but I have no idea how to deal with
BigNum stuff. I looked up documentation, but it seems so convoluted
that Ruby would distinguish between integrs simply because one is longer than
the other. I tried converting stuff to floats and doing all of that, 
but to no avail. Once I figure out challenge 5 for this week, I may revisit
this and try my best to refactor it. 
	
=end




# 1. DRIVER TESTS GO BELOW THIS LINE

p check = CreditCard.new(4563960122001999).algorithm


# 5. Reflection 
=begin
	
This challenge in particular threw me for a loop. I had to convert
the data over to a string to split it, then back to an integer, then back to 
an array with integers because I kept getting bignum errors. The documentation on them is
a little confusing, so I figured I could refactor this down a little
more and make some of the values one-line statements intead of having 
to manipulate arrays back and forth. At least I had the ability to get the 
values that I wanted without going completely insane. Haha. 

=end