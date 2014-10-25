# U2.W6: Drawer Debugger

# I worked on this challenge by myself.

# Original Code

class Drawer

attr_reader :contents

def initialize
	@contents = []
	@open = true
end

def open
	@open = true
end

def close
	@open = false
end

def add_item(item)
	@contents << item
end

def remove_item(item) #Pop is deleting the last element of the array. Why? It makes no sense. 
	@contents.delete(item) #If we remove an item, it simply gets deleted here.
end

def dump
	puts "Your drawer is empty."
	@contents = Array.new
end

def view_contents
	puts "The drawer contains:" #if the drawer contains nothing, then there is nothing to check. 
	@contents.each {|silverware| puts "- " + silverware.type }
end

end


class Silverware
	attr_reader :type

def initialize(type, clean = true, dirty_floor = true)
	@type = type
	@clean = clean
	@dirty_floor = dirty_floor
end

def eat
	puts "eating with the #{type}"
	@clean = false
end

def use
	puts "You use the #{type} to fish for your keys that fell behind the oven."
	@clean = false
end

def drop
	if dirty_floor = true
		puts "You dropped the #{type} on the floor and now it is covered in hair."
		@clean = false
	else 
		puts "You dropped #{type} on the floor, but it didn't pick up any nasty stuff!"
		@clean = true
	end
end

def lick
	puts "Although unsanitary, the #{type} is noticeably cleaner now."
	@clean = true
end

def clean_silverware
	@clean = true
end

def clean
	@clean && true
end

end





# DO NOT MODIFY THE DRIVER CODE UNLESS DIRECTED TO DO SO
knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1)
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork"))
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware
raise Exception.new("Your silverware is not actually clean!") unless removed_knife.clean_silverware == true

silverware_drawer.view_contents
silverware_drawer.dump
raise Exception.new("Your drawer is not actually empty") unless silverware_drawer.contents.empty?
silverware_drawer.view_contents

# What will you need here in order to remove a spoon? You may modify the driver code for this error.
silverware_drawer.remove_item("spoon")
spoon = Silverware.new("spoon")
if silverware_drawer.contents.include?("spoon") # I was seriously confused as to why the original code was even checking for this. You could have more than one spoon, but we weren't testing for that explicitly.  
	raise Exception.new("You still have a spoon left.")
end


silverware_drawer.remove_item("spoon") # The spoon is gone from the code earlier. This line is redundant. 
spoon.eat # I have to literally make a new object called spoon instead of just taking a boolean for its existence? 
puts spoon.clean #I guess this is why. You have to actually check the object with a custom-made #clean method. 

# DRIVER TESTS GO BELOW THIS LINE

drawer = Drawer.new
drawer.add_item(Silverware.new("Tongs"))
drawer.add_item(Silverware.new("Thermometer"))
drawer.view_contents

utensil = Silverware.new("utensil")
utensil.drop
utensil.lick
utensil.use




# Reflection
# To be honest, this exercise was irritating. I could tell what the blocks of code did, but not being able to
# modify what they test for felt far too limiting. If I am given a goal, or multiple goals, and can modify the code to eventually reach
# that finality, it makes debugging a hundred times easier than having to simply modify code to fit the driver code
# that was designed to be reverse-engineered in the first place. I understand why the exercise needed to be set up
# this way, but it felt unrealistic. I would NEVER make it so you had to create another object in the driver
# code to make code farther down the line work without checking to see how it reacted with the other code first. It would be bad
# form, and obviously caused more problems than it was worth. It should be much more sequential than that.

# I will admit, the way that they designed the last two errors was pretty smart. You had to modify the previous driver test statement to
# get the next one to pass correctly. 