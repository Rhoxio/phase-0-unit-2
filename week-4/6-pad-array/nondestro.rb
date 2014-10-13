class Array


def pad(total_length, add = nil)
		origin = self
		
		while total_length > length
			origin << add
		end
		
		print self
		print origin
end
end

x = [1,2,3,4,5].pad(6, "n")
print x
		