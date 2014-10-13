# U2.W4: Calculate the mode
 # Pairing Challenge

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.

# I worked on this challenge with: .

# 0. Pseudocode
=begin
In order to get a mode, you must find out how many of each
object of the same type are in the array. This can be done by 
assigning the stuff in common a hash value, then calling the keys
if they are the most numerable in the list. 

Using .inject will make it so I don't have to initialize a hash. It
is a matter of grouping and iterating over the array, then storing the
values. 

I am not sure how I will get the most numerable hash keys. I'll google that
when I get to it. 
=end


# 1. Initial Solution

def mode(ary)
 mode_count = ary.inject({}){|x, y| x[y] = ary.count(y); x }
 mode_count.select {|x,y| y == mode_count.values.max }.keys
end

puts mode([5,5,5,6,6,6,7,8,15])

# 3. Refactored Solution
# This is a pretty well factored solution. I need to remind
# myself to keep my original copies and put my final code in here next time...



# 4. Reflection

=begin
I kept getting odd errors, so I decided to call x again to see if it
kept trying to iterate over the previous value. It turns out that it was!
So, I learned that when dealing with iteration, sometimes calling the variable again
"updates" it. 

I got a little stuck on the third line of the code, but luckily someone on
stackoverflow suggested using #values and #max together. Kudos! 

I went with #keys instead of literally creating a new array and assigning
it a variable. Methods really do make your life a LOT easier. 
=end