class Dice
	def initialize(array, x)
		@array = array
		@x = x
	end

	#def roll
	#	@array.sample		
	#end

	#def sides
	#	@array.count	
	#end

	def show
	print @array.sample
	puts ""
	print @array.count
	puts ""
	end
end

Dice.new([1,2,3,4,5,6], 1).show

#array = %w(a b c d)
#array = [3,3,3,5,5]