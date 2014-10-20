# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: 






# Our Refactored Solution

# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: 

Kevin Maze

Michael Chu




# Our Refactored Solution

def bakery_num(people, fav_food)       #define a method that takes 2 parameters
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1}
  pie_qty = 0
  cake_qty = 0
  cookie_qty = 0
  
  has_fave = false            # change conditions so that it's not always true

  my_list.each_key {|k|     # iterating through list
    if k == fav_food            # if k = fav_food sets fav_food = k
       has_fave = true
       fav_food = k
    end}

  if has_fave == false        # if the food is not on thel ist prints ArugmentError
     raise ArgumentError.new("You can't make that food")
  else
  
  fav_food_qty = my_list[fav_food]     #checking the values in my_list for fav_food
  if people % fav_food_qty == 0               # check to see if theres a proportionate number of food
     num_of_food = people / fav_food_qty       
     return "You need to make #{num_of_food} #{fav_food}(s)."
  else people % fav_food_qty != 0            # check to see if it's not proportionate
     while people > 0                         # must have more than 0 people eating cake
       if people / my_list["pie"] && people / my_list["cake"] > 0           # if not proportionate         
          pie_qty = people / my_list["pie"]        # pie_qty = people / 8
          people = people % my_list["pie"]  # people = people left over
          cake_qty = people / my_list["cake"]      # same operation as above
          people = people % my_list["cake"] # same operation as above
       else
          cookie_qty = people
       end
     end
       return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
  end
  end
end








#DRIVER TEST CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver test code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!




#  Reflection 



