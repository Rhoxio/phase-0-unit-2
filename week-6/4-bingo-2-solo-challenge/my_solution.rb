# U2.W6: Create a Bingo Scorer (SOLO CHALLENGE)


# 1. Pseudocode
=begin
	
You can use index values of the instance variables to check for diagonals very easily.

.all? {|x| x == b[0]} might be useful. 
	
=end

# sample_board =[[47, 44, 71, 8, 88],
#                [22, 69, 75, 65, 73],
#                [83, 85, 97, 89, 57],
#                [25, 31, 96, 68, 51],
#                [75, 70, 54, 80, 83]]




# 2. Initial Solution

class BingoBoard

  #attr_reader :row_check?

  def initialize(sel, num, bingo_board)
    #@bingo_board = Array.new(5) {Array(5.times.map{rand(1..100)})}
    @bingo_board = bingo_board
    @num = num
    @sel = sel.to_s.downcase

  #@b = ['x', 44, 71, 8, 88]
	#@i = [22, 'x', 75, 65, 73]
	#@n = [83, 85, 'x', 89, 57]
	#@g = [25, 31, 96, 'x', 51]
	#@o = [75, 70, 54, 80, 'x']
  
    @b = @bingo_board.collect {|index| index[0]}
    @i = @bingo_board.collect {|index| index[1]}
    @n = @bingo_board.collect {|index| index[2]}
    @g = @bingo_board.collect {|index| index[3]}
    @o = @bingo_board.collect {|index| index[4]}
  end
=begin
  public
  def row_check? #this method can be used to check arrays for all matching instances of any character. I added it to attr_reader so it can be read from everywhere. 
    if self.uniq.length == 1 #could also just do #count % 5 == 0 for this particular problem.
      return true
    else
      return false
    end
  end
=end


  def manipulation #original method to check for a matching slot. 
    if @b.include? @num and @sel == "b"
    puts "You got #{@sel.upcase} #{@num}!"
    @b.map! {|x| (x == @num) ? "x" : x}
  elsif @i.include? @num and @sel == "i"
    puts "You got #{@sel.upcase} #{@num}!"
    @i.map! {|x| (x == @num) ? "x" : x}
  elsif @n.include? @num and @sel == "n"
    puts "You got #{@sel.upcase} #{@num}!"
    @n.map! {|x| (x == @num) ? "x" : x}
  elsif @g.include? @num and @sel == "g"
    puts "You got #{@sel.upcase} #{@num}!"
    @g.map! {|x| (x == @num) ? "x" : x}
  elsif @o.include? @num and @sel == "o"
    puts "You got #{@sel.upcase} #{@num}!"
    @o.map! {|x| (x == @num) ? "x" : x}
  else
    puts "Not on the board! Try again!"
  end
  p @b
  p @i
  p @n
  p @g
  p @o
 end


  def row_ans

  columns = []
  all_columns = columns.push(@b,@i,@n,@g,@o)

  b = all_columns.collect {|index| index[0]}
  i = all_columns.collect {|index| index[1]}
  n = all_columns.collect {|index| index[2]}
  g = all_columns.collect {|index| index[3]}
  o = all_columns.collect {|index| index[4]}
	
  if b.all? {|x| x == b[0]}
		puts "true"
		return true
	elsif i.all? {|x| x == i[0]}
		puts "true"
		return true
	elsif n.all? {|x| x == n[0]}
		puts "true"
		return true
	elsif g.all? {|x| x == g[0]}
		puts "true"
		return true
	elsif o.all? {|x| x == o[0]}
		puts "true"
		return true
 	else
 		puts "false"
 		return false
	end
  end


  def column_check

	if @b.all? {|x| x == @b[0]}
		puts "true"
		return true
	elsif @i.all? {|x| x == @i[0]}
		puts "true"
		return true
	elsif @n.all? {|x| x == @n[0]}
		puts "true"
		return true
	elsif @g.all? {|x| x == @g[0]}
		puts "true"
		return true
	elsif @o.all? {|x| x == @o[0]}
		puts "true"
		return true
 	else
 		puts "false"
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
end




# 4. Refactored Solution

=begin
	
For the most part, the code can be broken down more by using blocks to select the element in the nested array, then choosing the
element in the element as the output. I thought my way was easier to handle logically, though. One thing that I
have noticed this week is that sometimes code isn't better simply because it is shorter. Sure, you can chain 
together a thousand methods to get an answer, but if someone looking at it sees it as a mass of jargon
with no flow of logic, you can't call it "good" code. I ammended the #column_check a bit, as it created too many
variables before. I decided to apply the concepts of scope and make local variables as opposed to using class or instance variables
for everything. 
	
=end

# 3. DRIVER TESTS GO BELOW THIS LINE
test = BingoBoard.new("b", 47, [[47, 44, 71, 8, 88],
   					           [54, 44, 36, 78, 5],
   							   [83, 85, 97, 89, 57],
   							   [25, 31, 96, 68, 51],
   							   [75, 70, 54, 80, 83]]).manipulation #this is a simple check for matching values.
test2 = BingoBoard.new("b", 63, [[47, 44, 71, 'x', 88],
   [22, 69, 75, 'x', 73],
   [83, 85, 97, 'x', 57],
   [25, 31, 96, 'x', 51],
   [75, 70, 54, 'x', 83]]).column_check #these three should ignore the inputs. They are only there so it doesn't throw argument errors. 
test3 =  BingoBoard.new("b", 63, [['x', 44, 71, 8, 88],
   [22, 'x', 75, 65, 73],
   [83, 85, 'x', 89, 57],
   [25, 31, 96, 'x', 51],
   [75, 70, 54, 80, 'x']]).check_diagonals 
test4 =  BingoBoard.new("b", 63, [[47, 44, 71, 8, 88],
   ['x', 'x', 'x', 'x', 'x'],
   [83, 85, 97, 89, 57],
   [25, 31, 96, 68, 51],
   [75, 70, 54, 80, 83]]).row_ans

test
test2
test3
test4 

# As a side note, if a puts gives you "true", it is the same as a "bingo".


# 5. Reflection
=begin
	
I realize that my solution essentially curcumvents the need to deal with nested arrays almost all the time, but I felt
like this code was much easier to read and devise a solution for once it was broken down in to smaller 
pieces instead of dealing with "invisible" values all over the place. It is true that you can break it down
a bit more by actually accessing the nested arrays and pulling values out of them directly, but again, I felt like having the 
code broken down not only made it eaiser for people who saw my code to understand what it is doing, but it made me understand how the process worked
more fluidly. Methods tend to hide your logic, and while they are great for simple refactoring, they are not always 
indicative of a better understanding of code. 
	
=end
