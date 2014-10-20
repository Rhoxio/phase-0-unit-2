# U2.W4: Cipher Challenge


# I worked on this challenge with: Brittney Hodson



# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.



def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") 
                                           
  decoded_sentence = []                    
  cipher = {"e" => "a",              
            "f" => "b",
            "g" => "c",
            "h" => "d",
            "i" => "e",
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}

  input.each do |x|                               # Starting a very long each method-saying for each value the rest
                                                  #     of the code is going to be executed.
    found_match = false                           # There would be no way to actually tell if a statement was true
                                                  #     unless the default is set to false.
    cipher.each_key do |y|                        # Taking each key from cipher & applying the rest of the code.
      if x == y                                   # Comparing the key and the value. X is the value. Y is the key.
        puts "I am comparing x and y. X is #{x} and Y is #{y}." # prints to console
        decoded_sentence << cipher[y]             # << adds element to existing array, but here it seems
                                                  #   that it is working to apply the cipher keys to the #   decoded sentence.
        found_match = true                        # Signals if match was found, ie x==y.
        break                                     # It is breaking because x and y can be compared infinitely.
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*"
                                                  # Checking if any values are symbols.
        decoded_sentence << " "                   # Is applying blank space where any symbol appears.
        found_match = true                        # Signals if match was found, ie x==symbol.
        break                                     # It is breaking because x can be checked infinitely.
      elsif (0..9).to_a.include?(x)               # It's checking to see if x is an integer.
        decoded_sentence << x                     # Adds x(value) where integers are found.
        found_match = true                        # Signals if match was found, ie x==integer.
        break                                     # It is breaking because x can be checked infinitely.
      end                                         # If/elsif loop ends.
    end                                           # The each method on y is finally ending.
    if not found_match                            # If x(value) isn't == to y(key), a symbol, or integer then...
      decoded_sentence << x                       # Apply the value to the decoded sentence.
    end                                           # If statement ends
  end                                             # The each method on x is finally ending.
  decoded_sentence = decoded_sentence.join("")    # Joins the sentence back together after
                                                  # splitting it in order to disect each element.
  if decoded_sentence.match(/\d+/)                 #What is this matching? * \d+/ means 1 or more digits
     decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } # He's been known to exaggerate...
  end                                             # This expands match- it subs
                                                  # one or more digits for the block (basically # reducing every digit by a 1/100th)
  return decoded_sentence                         # Returns the answer sentence.
end                                               # north_korean_cipher method finally ends.

# Your Refactored Solution

def north_korean_cipher(coded_message)
  final = Array.new
  #coded_message = "m^aerx%e&gsoi!"
  #x = "a"
  input = coded_message.downcase.split("")
  symbols = ["@","#","$","%","^","&","*"]
  @alphabet = 'a'.upto('z').to_a


input.each do |x|

if @alphabet.include?(x)
  sel = @alphabet.index(x)
  new_pos = sel.to_i - 4
  final << @alphabet[new_pos]
elsif symbols.include?(x)
  final << " "
elsif (0..9).include?(x.to_i)
  final << x
else
  final << "~" #adds a ~ if the character is not recognized. Easier to debug this way. 
end
  #p final.join("") # Uncomment if you want to see the process.
end
p final.join("")
final
end

# Driver Test Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true

# Find out what Kim Jong Un is saying below and turn it into driver test code as well. Driver test code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")

# Reflection

=begin
This exercise in particular was a little challenging to find the right methods for refactoring. 
I used google and found out that getting the value of an index in an array is extremely easy. As
soon as I had that piece nailed down, the rest flowed out of me without end. I decided to use
fixed arrays to give the values that needed to be checked rather than using a bunch of
and statements. I eliminated the need for a hash as well by using
the @alphabet array as a reference instead of those stupid long-ass hash values. 

It went from 64 lines of active code down to 24. I'd say that is pretty good. There's probably a
way to do this in 10 lines or less using a block, but I am not that well-versed in their uses
quite yet. The code is plenty flexible, just not externally. I could make it externally flexible by adding
another parameter to the variables accepted with the def statement and setting it equal to the
"spacing" to make it so it could use any real integer as an input. 

(Sidenote) I could just have it call an error if it equals something out of it's range. -26 and 26 might give issues, 
but again, if an invalid input is given, I could just make a block that converts it in to a "nice" format 
using a modulus operation. The logic escapes me at the moment, but the idea is there. It would essentially scale the initial
value "down" to a format lesser than the hard-limit of the alphabet. (Less than 26, basically. If the cipher called for every 101, 
for example, it could be scaled down to every 25 then use the modulus to go one more slot over. Do a reduction until x < 26, basically.)
=end