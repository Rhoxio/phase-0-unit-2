# Release 4:

# refactor this code to move method assignments to attr_ attributes. Like we did with age. Let's pare down the superfluous code.

# Your Code Here:

class Profile
# first let's finish refactoring this code
# note that there is a way to add all of the variables like :age on one line, how would we do that?
  attr_reader :age, :name, :occupation
  #attr_reader :name
  #attr_reader :occupation

  def initialize
    @age = 27
    @name = "Kim"
    @occupation = "Cartographer"
  end
end

  stuff = Profile.new
 p stuff.age
 p stuff.name
 p stuff.occupation
