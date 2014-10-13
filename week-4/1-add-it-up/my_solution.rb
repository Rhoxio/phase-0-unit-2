# U2.W4: Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Add all integers in the array "list"
# Let initial variable = 0, each loop adds "new value" + initial variable,
# let total = initial variable + total
# (Written before I realized that the rspec makes you name the method total.
# Total is actually ans.)


# 1. total initial solution

 def total(list)
	ans = 0
	list.each do |num|
		ans = num + ans
	end
end

 total([1, 2, 3, 4, 5, 5, 7])

# I really feel like the rspec is
# not dynamic enough to be considered 
# an end-all solution. If I
# manually put in the array that is in the rspec,
# the code works exactly as it was
# desgined to. The rspec keeps returning
# it as nil, which means it isn't
# even going through any of my code
# for some reason. What is up? Is it expecting
# an intrinsic return of the value? How
# would you get an answer without assigning variables 
# and expect this rspec to actually work? You would
# have to refactor, as in condense it, by default to get it to return
# the values that the rspec is looking for intrinsically. No matter
# what, I think you'd have to have it look for a variable
# instead of an intrinsic return value if you are not using blocks
# or refactoring. 


# 3. total refactored solution

def total(list)
	sum = 0
	list.each { |x| sum+=x }
end

# The same problem crops up even though I have
# pretty much refactored it down to its
# simplest form imaginable. The rspec is simply
# looking for an answer that I can't give it.
# Maybe using a different method (.inject, maybe?) 
# would help, but why fix something that isn't broken? 

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!

# Define sentence_maker. If the input value is a string, add it to
# a variable value as a string and add a space after it. 
# Use .chomp to make it does not start on a new line. 

# For the first position, make sure you do .capitalize or it might not
# come out in the correct format. You should be able to add
# a period at the end easily by having the variables input before it.
# (Pseudocode written before I looked up .join. Boy was that an eye-opener) 


# 5. sentence_maker initial solution

array1 = [ "first", "of", "many,", "last", "of", "none"]

def sentence_maker(word)
	word.join(" ").capitalize.to_s << "."
end

puts sentence_maker(array1)


# 6. sentence_maker refactored solution

# The program above is essentially the already refactored version of 
# an EXTREMELY complicated problem if it were not in this format.
# It is far easier to just use .join than to deal with statements
# pertaining to the positioning of data in the array. I learned that the 
# hard way. I had originally been trying to only capitalize position 0, 
# but running it through a .each "loop" that essentially makes you add an empty
# space to maintain spacing between words made it far harder to handle than I
# originally anticipated. If I added the spacing afterwards instead of before, I
# would have run in to the same problem with adding a period at the end as
# opposed to having to get rid of space at the beginning. 
# It would shift over to position 1 (making it the new pos 0), and although I tried
# making it so the sentence would "push" one slot over, 
# I decided that using .join would probably make things 100x easier overall.
# Sticking the period at the end is much eaiser this way, too. Just add it as a string with <<.

# You can easily handle the integers in an array by simply converting
# the integers over to strings even if there are none present in the set.
# It all ends up as a string anyway, right?

# 7. reflection
# I added a ton of comments that are essentially reflections. Haha. Proactive! 
