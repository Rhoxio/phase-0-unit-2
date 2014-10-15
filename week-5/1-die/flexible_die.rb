	def roll(array)
		#array = %w(a b c d)
		#array = [3,3,3,5,5]
		array.sample
	end

	def sides(array)
		array.count
	end
   


   print roll(%w(a b c))
   puts ""
   print sides(%w(a b c))

