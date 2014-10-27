# U2.W6: Refactoring for Code Readability


# I worked on this challenge [by myself, with: Kevin Xu ].


# Original Solution
=begin
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
=end
# Refactored Solution
class CreditCard
	def initialize(origin_num)
		@origin = origin_num.to_s.split('').map{|i| i.to_i} # No bignum error here. I wonder why it changed, because I had used this before, but it threw an error. 
			raise ArgumentError.new("Card length invalid. Must be 16 digits.") if @origin.count != 16
	end

	def algorithm
		@origin.map.with_index{|x,y| y % 2 == 0 ? x : x*2}.map{|x|x.to_s.chars.map(&:to_i)}.flatten.inject(0){|x,y|x+=y} % 10 == 0
	end

end





# DRIVER TESTS GO BELOW THIS LINE


test = CreditCard.new(4563960122001999).algorithm


# Reflection
=begin
	
This session totally made me rethink how code can be handled. It was a good experience to see
someone else's coding style as they learn and evolve at this stage in the program.

I am not wholly convinced that this is the most efficient way to display the code to humans, though.
This is beautifully simplified, but if anyone aside from a computer were to look at it, they may 
find it extremely hard to read. My original code had things more broken down in to steps. There
is no questioning that this code is more efficient, technically, but is is efficient overall? 

I think this is a good question to ask in the GPS tomorrow. 
	
=end
