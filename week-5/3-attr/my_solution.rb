#U2.W6: Attr Methods

# I worked on this challenge [by myself]

 
 class NameData 
  attr_accessor :name
  attr_accessor :name2

  def greeting
		puts "Welcome to attributes, #{@name} and #{@name2}!"
  end
 end

greet = NameData.new

greet.name = "Kevin Maze"
greet.name2 = "Barney the Dinosaur"
greet.greeting


# Reflection

=begin
I made the assumption that a typo was made in the initial directions,
namely because if we are talking about modifying instance variables, 
they have to be within the same class. Making two different classes to
do what you can do with a simple method call seemed convoluted, 
so I refactored it down to a single class.

Unless the attr methods set everything as a globlal variable (@@), then making
a second class makes even less sense. There was no example of this in the
problems we were given, so I assume my reasoning is correct. 

Also, seeing how these work makes my head reel with ideas about how to actually
implement this stuff. You can just use to_i, to_s, and to_a to make the value
assigned to the symbol any type of data set that you want to. Powerful stuff! 
=end