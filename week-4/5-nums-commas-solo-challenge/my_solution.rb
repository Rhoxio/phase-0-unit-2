# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.


# 0. Pseudocode

=begin
.join might help. If you break it up in to objects then add 
commas every slot you need filled, it will increase the length of the string
but output commas in the right spot.

(After doing some reading...)Instead of using negative values, use 
.reverse to make your life easier. You can always call
it again to reverse the thing before it is output. 

(Read some more...) .slice! essentially breaks num down in to blocks of three starting from any slot.
slot 0, every 3 would work I think...   

=end


# 1. Initial Solution

def commas(num)
  num = num.to_s
  section = Array.new 
  num.reverse!
  while (num.length > 0) 
    section << num.slice!(0,3)
  end
  num = section.join(',')
  num.reverse!
  puts num
end

# 2. Refactored Solution

# Again, I modified my original instead of modifying it here. My original
# didn't contain #reverse, so it was a sloppy attempt at best. I tried using
# negative index values to count "backward", but I ran in to logic and clarity problems.
# I basically tried to rewrite #slice in my own way. 

# 3. Reflection

=begin
	
For the most part, this challenge was straight-forward. Break something down,
then reconstruct it with a slightly modified output. The main problem I ran in to
was figuring out the syntax for the while loop. I eventually looked up methods that
might work, and .slice came up. 

(Note) The solution only works if you convert the input to a string
before calling .reverse! method. It is probably because
reversing something that holds a value makes no sense unless the order 
itself is significant, like in a string.

=end