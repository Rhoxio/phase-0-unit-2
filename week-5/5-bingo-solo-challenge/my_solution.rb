# U2.W5: A Nested Array to Model a Bingo Board SOLO CHALLENGE


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
# Just make every position in the arrays equal to a new array based on the name of the row. (b,i,n,g,o)

# Check the called column for the number called.
# Assign all of the values their own column variable and make it easy on yourself. 

# If the number is in the column, replace with an 'x'
# .include? will work wonders here. Have it check for the correct letter, too. 

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Release 1: Initial Solution

class BingoBoard
  def initialize(sel, num)
    @bingo_board = Array.new(5) {Array(5.times.map{rand(1..100)})}
    #@bingo_board = [[45, 72, 1, 33, 24], [63, 42, 98, 63, 74], [67, 21, 18, 63, 59], [49, 100, 84, 44, 84], [38, 97, 28, 46, 85]]
    @num = num
    @sel = sel.to_s.downcase
  
    @b = @bingo_board.collect {|index| index[0]}
    @i = @bingo_board.collect {|index| index[1]}
    @n = @bingo_board.collect {|index| index[2]}
    @g = @bingo_board.collect {|index| index[3]}
    @o = @bingo_board.collect {|index| index[4]}
  end
  

  def manipulation
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
end




# Release 3: Refactored Solution

=begin
  
This program does actually sort by columns, but it sorts them "sideways". I could potentially
just add all of them to an element in an array and run the whole block 
that "sets" them again. It would then resemble original formatting of a "real" @bingo_board. 
That seems really redundant and would, in essence, have no impact on the way the game
can be played. It would just flip the array upright, essentially.

I could potentially just ditch that whole section of code and just get the b through o 
variables to their corresponding elements in the array. It woundn't sort by columns, then. It would
technically sort by rows. It seems to be two sides of the same coin. 
  
=end



# Release 2: DRIVER TESTS GO BELOW THIS LINE

answer = BingoBoard.new("b", 63).manipulation #It works for all imputs of numerals through 100, and takes a letter of "bingo"

# Release 4: Reflection

=begin
  
Nested arrays are not as hard to deal with as you might think. They are basically the same thing as
normal arrays, but you have to think of it as an element within an element. Like the readme for this
challenge implies, Kanye might get too excited about this. 

The formatting of the board is made very simple if you just assign new values to the "rows"
and/or "columns" then print them to the console. If they truly had to be in an array, you can just add them
to a new array with << or something. I didn't see it as being a huge deal as long as the program outputs 
what it needs to. Printing arrays with new lines mixed in seems overly complicated. You can always just make
them in to a new array without an output but still output the result with 'p' just for the sake of simplicity.
  
=end