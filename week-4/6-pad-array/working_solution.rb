class Array
	def pad!(total_length, add = nil)
		while total_length > length
	self << add
	end
		self
	end

	def pad(total_length, add = nil)
		origin = self
		
		  while total_length > length
			origin << add
		  end		
		print self
		print origin
	end
end

x = [1,2,3].pad!(4, "n")
print x

y = [1,2,3].pad!(4, "x")
print y




