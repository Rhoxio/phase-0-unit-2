# U2.W6: Create a Bingo Scorer (SOLO CHALLENGE)


# 1. Pseudocode

# sample_board =[[47, 44, 71, 8, 88],
#                [22, 69, 75, 65, 73],
#                [83, 85, 97, 89, 57],
#                [25, 31, 96, 68, 51],
#                [75, 70, 54, 80, 83]]




# 2. Initial Solution
@b = ['x', 44, 71, 8, 88]
@i = [22, 'x', 75, 65, 73]
@n = [83, 85, 'x', 89, 57]
@g = [25, 31, 96, 'x', 51]
@o = [75, 70, 54, 80, 'x']

#columns = Array.new
#all_columns = columns.push(@b,@i,@n,@g,@o)


public
def row_check?
    if self.uniq.length == 1 #could also just do #count % 5 == 0.
      return true
    else
      return false
    end
end

def row_ans
	if @b.row_check? == true
		puts "true"
		return true
	elsif @i.row_check? == true
		puts "true"
		return true
	elsif @n.row_check? == true
		puts "true"
		return true
	elsif @g.row_check? == true
		puts "true"
		return true
	elsif @o.row_check? == true
		puts "true"
		return true
 	else
 		puts "false"
 		return false
	end
end

def column_check
	columns = Array.new
	all_columns = columns.push(@b,@i,@n,@g,@o)

 	b = all_columns.collect {|index| index[0]}
 	i = all_columns.collect {|index| index[1]}
 	n = all_columns.collect {|index| index[2]}
 	g = all_columns.collect {|index| index[3]}
 	o = all_columns.collect {|index| index[4]}

	if b.row_check? == true
		puts "true"
		return true
	elsif i.row_check? == true
		puts "true"
		return true
	elsif n.row_check? == true
		puts "true"
		return true
	elsif g.row_check? == true
		puts "true"
		return true
	elsif o.row_check? == true
		puts "true"
		return true
 	else
 		puts "incorrect"
 		return false
	end
end

def check_diagonals
	 if @b[0] == "x" && @i[1] == "x" && @n[2] == "x" && @g[3] == "x" && @o[4] == "x"
	 	puts "true"
	 elsif @b[4] == "x" && @i[3] == "x" && @n[2] == "x" && @g[1] == "x" && @o[0] == "x"
	 	puts "true"
	 else
	 	puts "false"
	 end
end

check_diagonals

  #your code here

end




# 4. Refactored Solution






# 3. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:


# 5. Reflection