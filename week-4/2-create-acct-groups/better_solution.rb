=begin

Pseudo-planning:

Modulus of array (cohort) should be 50 % -4 = -2. Use this to count "backward"
from the end of the array if the modulus resolves to an uneven value (not == 0).
Remember that cohort.count / 4 leaves you with 12, not 13. The final object will
need to be stuck on the end of @final_array.

(Obsoleted) Final execution of looped code should only account for @remainder (number of) 
slots, not all 4. Potentially could use a non-variable -1 to signify final position
in the array.

I don't want to have it iterate over cohort.shuffle every time.
Leave it out of the loop, and make it an instance variable.

Make it non-destructive. Should be as easy as assigning a new instance variable
for .shuffle.
=end

@cohort = ["Aarthi Sarode", "Alex Szabo", "Alfred Calayag", "Amir Beheshtaein", "Anna Wu", "Anthony Ng", "Brandon Graham", "Brittney Marie Hodson", "CM Lotta", "Charles Kim", "David Kim", "Davide Curletti", "Derek Tang", "Devin Liu", "Devon Estes", "Enja Reyes", "Forrest Venable", "Gabrielle Chua", "J.H. Kevin Xu", "James Fallon", "Jasmeet Chatarath", "Jesse Germinario", "Juan Gomez", "Karen Lo", "Kevin Maze", "Kevin Xu", "Lance Tipton", "Leonard Bui", "Leyla Movahedi", "Liorr Morrison", "Mack McLean", "Mark Pfeffer", "Mark Reid", "Michael Christe", "Michelle Park", "Paul Yu", "Peter Brown", "Peter Fitzpatrick", "Philip Riley", "Quynh Chen", "Ram Ramakirishna", "Richard McCluskey", "Ryan Urie", "Sean Marman", "Stephen Brooks Clem", "Steve Zimmerman", "Thomas Yazmia", "Tina White", "Vincent Colavin", "Sagar Singh" ]
@remainder = 0
@group_count = 0
@final_array = Array.new

def values()
	@remainder = @cohort.count % -4
	@group_count = @cohort.count / 4
	puts @remainder
	puts ""
	puts @group_count
	puts ""
end

def shuffle()
	@list = @cohort.shuffle
end

def algorithm()
	x = 0
	y = 3
	loop_num = 0
	while loop_num < @group_count
		@final_array << @list[x..y]
		loop_num += 1
		x += 4
		y += 4
	end

	puts loop_num
	puts ""

	
	if @remainder != 0
		x = @cohort.count + @remainder
		puts ""
		@final_array << @list[x..-1]
	end
	
	
end

def print_groups()
	@final_array.each_with_index do |text, index|
		puts "Group #{index} is: #{text}"
		puts ""
		#puts @final_array
	end
end

values
shuffle
algorithm
print_groups

=begin
 I attempted to make the program as dynamic as possible. I could have potentially made it
 so the input for the method "values" could be simply linked to another array with a different name.
 I decided not to do that for the sake of simplicity. I was unsure of the syntax used to make an
 instance variable linked to a method, so I left it alone. The rest of the program
 is pretty much dynamic (minus the actual group sizes) as far as input and output goes. 
 You could insert any size of array and still get groups of 4 ordered correctly with the remaining 
 people slotted in to their own group at the end. 
 =end
