# U2.W5: Build a simple guessing game


# I worked on this challenge [by myself.

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @guess = nil
  end

  def guess(num)
  	@guess = num
  	if num > @answer
  		:high
  		puts "Guess of #{num} was too high."		
  	elsif num < @answer
  		:low
  		puts "Guess of #{num} was too low."		
  	elsif num == @answer
  		:correct
  		puts "Guess of #{num} was right on!"
  	end
  end

  def solved?
  	if @answer == @guess
  		true
  		puts "Solved!"
  		p @guess
  	else
  		false
  		puts "Not solved."
  		p @guess
  	end
  end 
end




# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

game = GuessingGame.new(10)
game.guess(10)
game.solved?

# As per personal style until a situation dictates otherwise, 
# I tend to put driver test code inside of my methods until I
# am sure that they are outputting the right data.
# This is shown by the numerous p, print, and puts commands that I tend to
# use while working out code solutions.

# 5. Reflection 

=begin
  
Not too much to look at on this one. I basically just checked if values are higher or lower, returned a symbol if so, and 
went on to the next line if the parameters didn't match up.The #solved? method was probably the trickiest to set up, only because
I was an idiot for about 10 minutes then realized that all I had to do to get it to evaluate true was to add true and false to the
statements depending on the conditions given in #guess.  
  
=end
