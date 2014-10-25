# U2.W6: PezDispenser Class from User Stories SOLO CHALLENGE


# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.


# 2. Pseudocode

=begin 

I need to make a dynamic output for anything related to the number or flavor of the pez. This needs to be able to
be changed very quickly in the driver code. 

There needs to be an add and remove function (method) that saves the "flavor". 

An easy way to see all of the flavors is to .map an output for every item of an array. 

=end

# 3. Initial Solution

class PezDispenser

attr_accessor :flavors #I don't think this matters in this code in particular, but I added it to see it if threw errors. 

  def initialize(flavors, empty = true)
	@flavors = flavors
	@pez_num = @flavors.count
	@empty = empty
	
	if @pez_num > 0
		@empty = false
	else
		@empty = true
	end

  end

  def add_pez(input)
  	@flavors << input
  	puts "You added #{input}."
  end

  def pez_count
  	p @pez_num
  end

  def see_all_pez
	puts "Your Pez dispenser contains:"
  	puts @flavors
  end

  def empty? #I added a feature that checks if the pez dispenser is empty. 
  	@empty && true
  end

  def eat(pez)
  	@flavors.delete(pez)
  	puts "You ate #{pez}."
  end

  def get_pez # If I made this delete a pez, the driver test code would make more sense. More in the reflection...
  	p @flavors[0]
  end

end

# 5. Refactored Solution

# Unless I wanted to add more features that needed refactoring themselves,
# I think my initial solution is pretty well simplified. I did add puts stuff
# that was used for driver test code and simple output to the console, 
# but they will only print if those methods are specifically called. 

# I can probably break down the whole if statement in the initialize, and
# use a boolean operator, but I think I'll leave it alone for now since it is actually
# part of the "extra stuff" that was added. 

# 1. DRIVER TESTS GO BELOW THIS LINE

#p test = PezDispenser.new(%w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry))
#p test.add_pez("purple")
#test.see_all_pez

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"




# 6. Reflection
=begin

So, the way that the driver test code is set up by default doesn't seem to actually
modify that it implies. If I added a delete function to get_pez, then it would
pretty much just "eat" the first element of the @flavors array. Wouldn't that be making
redundant code?

This set of code was a little confusing to work with. I initally mispelled initialize, so when I was running
the blasted test code, it kept giving me 1 for 0 errors. I need spell check. Haha. Aside from that, I toyed with
the idea of creating an entirely new class to handle eating and giving out pez or something like that,
but everything the client asked for was easily able to be accomplished in just one class.

I also found an error I made on the drawer debugger as well. It is fairly obvious that
code was repurposed from that and used in this program. I had the remove value set to literally
the entire array. So when it ran, it would wipe out the whole array. I am glad that I caught that
before I tried repurposing the code more...  

=end