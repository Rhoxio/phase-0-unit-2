# U2.W5: Virus Predictor

# I worked on this challenge [with: Michael Criste].

# EXPLANATION OF require_relative
# Needs this to run the code correctly. It is a reference to a data sheet that holds all of the values we are going to be calculating. 

require_relative 'state_data' #They are nested hashes. Each value is a hash unto itself. 

class VirusPredictor
  
  #Setting up the variables and making them accessible across the class. 
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin 
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

  #These variables are woven in to the entire class. The instance variables are available throughout the class. 
  def virus_effects  #HINT: What is the SCOPE of instance variables?
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private #Able to access earlier varables, but not able to be modified or be seen from the "outside".
  
  #It's calculating the data from "state_data" and giving a calculated output. 
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density

    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else 
      number_of_deaths = (@population * 0.05).floor
    end


    # We tried refactoring it after the GPS. What we were getting it was essentially
    # having it "scale" down. I was thinking about trying a yield, but I was unsure about how to
    # effectively implement it. I could just make it cascade down, but that wouldn't
    # be refactoring it, as it would take just as many lines to get to the answer
    # as the original solution. 
    # x = 200
    # o = 0.4
    # if @population_density >= x
    #     number_of_deaths = (@population * o)
    # elsif @population_denstity <= x
    #     x -= 50
    #     o -= 0.1
    # end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #It's setting up a process for calculating speed over a spread of population density. 
  def speed_of_spread(population_density, state) #in months
  #   # We are still perfecting our formula here. The speed is also affected
  #   # by additional factors we haven't added into this functionality. 
  #

  # The same idea was applied here. We used 650 as the "roof" (highest density was 644) and started to count down,
  # but this gives you huge speed values because of how many times it has to loop to reach
  # lower values of population_density. I understand the problem, I am just not sure how to go about
  # breaking this down more than it already is. It seems pretty straight-forward to me. 
  #   x = 650
  #   speed = 0.0
  #   until x <= @population_density
  #     speed += 0.5
  #     x -= 50
  #   end
  #   
  # end

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else 
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

#test = VirusPredictor.new

#var = VirusPredictor.new("#{state}", STATE_DATA["#{state}"][:population_density], STATE_DATA["#{state}"][:population], STATE_DATA["#{state}"][:region], STATE_DATA["#{state}"][:regional_spread]) 

STATE_DATA.each_key do |state|
    thing = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population], STATE_DATA[state][:region], STATE_DATA[state][:regional_spread]) 
    thing.virus_effects
end

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
alaska.virus_effects
=end



#=======================================================================
# Reflection Section
=begin
  
We struggled with the refactoring section of this challenge. We had an idea of how to tackle the
problem, but to be honest, the original code looks pretty well defined and doesn't really require much refactoring in itself.
You can see the attempts at logically sequencing a relationship between the numbers, but to be honest, the
original solution would end up being close to the same length and complexity anyway. 

The only piece that we were really missing was the fact that you can call the keys and values directly from the state_data sheet. 
After that, things became a little easier. 
  
=end
