# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge by myself.


# Pseudocode

# Should be straightforward. Make a class that generates songs based on
# two parameters, then create a class that adds the variables created
# to an array. I can use * to make it easier to handle as well as more dynamic.

# It has to use the variables from the Song itself in order to work when you call a method within Song.
# I think, at least. Why else would they have us trying to use global variables? 


# Initial Solution

class Song
	def initialize(name, artist)
		@name = name
		@artist = artist
	end

	def info
		puts "This song is #{$name} by #{artist}."
	end

	def play
		puts "Playing #{@name}..."
	end
end

class Playlist
	def initialize(*songs) #this may be what is messing up the outputs
		@songs = songs
	end

	def add(input1, input2) # How would this work for more than two parmeters? I can't use << to just add a *input to the end because it contains 2 values. 
		@songs << input1
		@songs << input2
	end

	def num_of_tracks
		p @songs.count
	end

	def remove(input)
		  @songs.delete(input)
		  puts "You deleted #{input} from the playlist."
	end

	def includes?(input)
		if @songs.include?(input)
			return true
		end
	end

	def play_all
		print "Playing all songs in current playlist..." # You can do blocks of timing. sleep 0.8 or something then skip
	end

	def display
		print @songs.to_s
	end
end



# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia") #just turning them in to classes
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under) #now this is a class

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)# add songs to the class. 
p my_playlist.num_of_tracks == 5
going_under.play #How would you model a song getting "played" in Ruby? You can do start and stop with states. Calling a gets to stop isn't a bad idea either. 
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection
=begin
	
The solution I have works, but for some reason, it keeps outputting some kind
of long hex value, probably a memory address, when I print anything at all. This even happens
within classes themselves. I am going to come back to this and figure it out, but I want
to move on to the other stuff for the moment. I think it has something to do with the
way that access rights are handled, but I could be wrong. 
	
=end