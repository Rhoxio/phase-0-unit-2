# Release 0:
# It seems as if you are able to access pretty much anything from outside of the program aside from instance
# variables, which is what the readme was talking about. It kept saying something about "toplevel" which I have no idea about. 

# One of the main things that I noticed was how easy it was to change the variable from outside of the program itself. 
# It was being run from another file, and it basically just linked them together and checked if the variables existed. 


# Release 1

class GradeCalculator
  @@array_of_all_grades = []
  def initialize(array_of_grades)
    @grades = array_of_grades
    @number_of_grades = grades.length
    @challenge_grade = 'A'
  end

  def sum
    @grades.inject{|mean, grade| mean + grade}
  end

  def mean
    sum / @number_of_grades
  end

  def calulate_grade
    case mean #Method call?
      when 90..100
       "A"
      when 80..90
        "B"
      when 70..80
        "C"
      when 60..70
        "D"
      when 0..60
        "F"
      else
        "Error"
    end
  end

  def add_grades
    @@array_of_all_grades << calulate_grade
  end

  def return_global_array
    return @@array_of_all_grades
  end
end

grade = GradeCalculator.new([80,95,64,71,100,38,95,100])

p grade.calulate_grade
grade.add_grades
p grade.return_global_array




# Release 3: Reflection

=begin
  
I am under the asspuntion that since we are learning this stuff in paritcular, that we will
be embarking on a multi-class and module adventure fairly soon. The greatest thing that I 
have taken away from this exercise is that sometimes it is unecessary to come up with new variable names for
things in individual instances. I guess as long as the global variables and up dont conflit with each other, 
it kind of works out. 

This is essentially setting access permissions in a way. If you had a variable @a in a class, and $a in the same
class, they would technically have different values if you set them that way.

I went back and looked at some of my old code, but to be honest, I already had a fairly good idea of how
scope worked even before it was formally introduced. I was using instance variables before they were
introduced as well. I like having flexible code, and special variable properties make that possible. 
  
=end