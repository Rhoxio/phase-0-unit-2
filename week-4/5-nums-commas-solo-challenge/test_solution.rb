=begin
Instead of using negative values, use 
.reverse to make your life easier. You can always call
it again to reverse the thing before it is output. 

.join might help. If you split it up then just add 
commas every 3 slots, it will increase the length of the string
but output commas in the right spot.

.slice! essentially breaks num down in to blocks of three starting from slot 0.  

(Note) The solution only works if you convert the input to a string
before calling .reverse! method. It is probably because
reversing something that holds a value makes no sense unless the order 
itself is significant, like in a string.

=end

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

commas(100000000000)
