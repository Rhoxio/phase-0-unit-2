class Array

def pad!(total_length, add = nil)
		while total_length > length
	self << add
	end
		self
	end
end

x = [1,2,3].pad!(5)
print x

def pad(total_length, add = nil)
		origin = self.dup
		
		  while total_length > length
			origin << add
		  end		
		print self
		print origin
end


y = [1,2,3].pad!(5)
print y