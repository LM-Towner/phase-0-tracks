class Santa
  
attr_reader :gender, :ethnicity


	def initialize(gender,ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end
	
	def celebrate_birthday
	   @age += 1 
	end 
	
	def get_mad_at(name)

	 deleted_item  = @reindeer_ranking.delete_at(@reindeer_ranking.index(name))
	 @reindeer_ranking << deleted_item
	 #old code below, refactoring for tighter code
	 #i_str_num = @reindeer_ranking.index(name)
	 #deleted_item = @reindeer_ranking.delete_at(i_str_num)
	 #@reindeer_ranking << deleted_item 
	puts "Santa is now mad at #{name}, here is the new rankings of their favorite reinder #{@reindeer_ranking}"
	  
	end

end #end of class

santas = []

genders = ["agender", "female", "bigender", "male", "female", 
	"gender fluid", "N/A", "Cis", "MTF", "Two-Spirt", "Neither","agender",
	"female", "bigender", "male", "female", "gender fluid",
	"N/A", "Cis", "MTF", "Two-Spirt", "Neither"]

ethnicities = ["black", "Latino", "white", "Japanese-African", 
	"prefer not to say", "Mystical Creature (unicorn)", "N/A", "Russian", 
	"Australian", "British","black", "Latino", "white", 
	"Japanese-African", "prefer not to say", 
	"Mystical Creature (unicorn)", "N/A", "Russian",
	 "Australian", "British"]




puts "Welcome to Santa Con 2016\n Let's make some SANTASSSSSSSSS!!!!"

puts "How many Santas do you want to make today?!!?"

answer = gets.to_i
number = 0 
@age = (1..140).to_a
puts "We will be making #{answer} Santas"

  while number <= answer
 
  santas = []
	
	 
	 number.times do |i|
	santas << Santa.new(genders.shuffle[i], ethnicities.shuffle[i])
	end
  
	santas.each do |santa|
	number.times {santas.pop}
 	puts "#{number}. The gender of this santa is #{santa.gender}, 
  	their origin is  #{santa.ethnicity}, 
 	 & is  #{@age.sample} years old."
  	
	end
	 
	 number = number + 1 
	 
  end 


#genders.length.times do |i|
#	santas << Santa.new(genders.shuffle[i], ethnicities.shuffle[i])
#end



#santas.each do |santa|
 #	puts "The gender of the santa is #{santa.gender}, 
 # and it's ethnicity is: #{santa.ethnicity}, they are #{@age} years old"
#end





# >>>>>>>>>>Driver Code<<<<<<<<<<<<<

=begin

Rubeun = Santa.new
Rubeun.speak
Rubeun.eat_milk_and_cookies('sugar')

santas = Santa.new("female", "non-gender")
santas.get_mad_at("Dasher")


santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "Cis", "MTF", "Two-Spirt", "Neither"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "Russian", "Australian", "British"]



example_genders.length.times do |i|santas << Santa.new(example_genders[i], example_ethnicities[i])
end


santas.each do |santa|
  puts "The gender of the santa is #{santa.gender},\n  
  and it's ethnicity is: #{santa.ethnicity}"
end

=end