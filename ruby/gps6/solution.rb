# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#Require Relative is using a file within the same directory without using the file extension
#
require_relative 'state_data'

class VirusPredictor

	#just initializing the data for the class for each new instance	
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #method is calling the other methods predicted_deaths & speed of spread
  def virus_effects
    predicted_deaths
    #predicted_deaths(@population_density, @population, @state)
    #speed_of_spread(@population_density, @state)
    speed_of_spread
  end

  private

  #prediction of deaths of the population and state 
  #def predicted_deaths(population_density, population, state)
  def predicted_deaths
    # predicted deaths is solely based on population density
    num = 1
    prediction = number_of_deaths =(@population  * num).floor
    if @population_density >= 200
    	num = 0.4
    #number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      #number_of_deaths = (@population * 0.3).floor
      num = 0.3
    elsif @population_density >= 100
      #number_of_deaths = (@population * 0.2).floor
      num = 0.2
    elsif @population_density >= 50
      #number_of_deaths = (@population * 0.1).floor
      num = 0.1
    else
      #number_of_deaths = (@population * 0.05).floor
      num = 0.05
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #determining of fast the virus will spread
  def speed_of_spread
  #def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

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


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


def all_states(states)
	states.each do |state,population| 
		projection = VirusPredictor.new(state,population[:population_density],population[:population])
		projection.virus_effects
	end
end

all_states(STATE_DATA)



#=======================================================================
# Reflection Section
#The two different hashe syntaxes shown in the state_data file are the hashes and symbols
#Require_relative is used to refer to a file within the same directory. Require can be used to find a file somewhere on your computer. Like a library for your program
#You can iterate through a hash using .each or .map. 
#When refactoring virus_effects, I realized that they were using variables that did not need to be used since it was already declared in the initialize method, all it need to do was call the method and use the variables within the method.
#I learned what to look for when refactoring methods, and what all CAPS for declaring variable means.