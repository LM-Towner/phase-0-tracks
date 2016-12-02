class Santa
  
attr_reader :gender, :ethnicity


	def initialize(gender,ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		#passed in on intialization, defaults to 0 
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end
	
	def celebrate_birthday
	   @age += 1 
	 #celebration a birthday by adding one to the age  
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

#sample genders to chose from

ethnicities = ["black", "Latino", "white", "Japanese-African", 
	"prefer not to say", "Mystical Creature (unicorn)", "N/A", "Russian", 
	"Australian", "British","black", "Latino", "white", 
	"Japanese-African", "prefer not to say", 
	"Mystical Creature (unicorn)", "N/A", "Russian",
	 "Australian", "British"]

#sample ethnicities to chose from

#>>>>>>>>>>>>>>>>User Interface <<<<<<<<<<<<<<<<<#

puts "Welcome to Santa Con 2016\n Let's make some SANTASSSSSSSSS!!!!"

puts "How many Santas do you want to make today?!!?"

answer = gets.to_i
#converting the answer to integer
number = 0 
#setting the value of santas to 0

@age = (1..140).to_a
#random number of 1-140 converted to an array, instead of manually inputting each number 

puts "We will be making #{answer} Santas: "

  while number <= answer
 
  santas = []
	#initialization of santas array	
	 
	 number.times do |i|
	santas << Santa.new(genders.shuffle[i], ethnicities.shuffle[i])
	end
	#creating the santa instances
  
	santas.each do |santa|
	number.times {santas.pop}
	#getting rid of repeats
 	puts "#{number}. The gender of this santa is #{santa.gender}, 
  	their origin is  #{santa.ethnicity}, 
 	 & is  #{@age.sample} years old."
	#printing each santa seperately
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
#intializing a new santa named Rebuen
Rubeun.speak
#testing the mettod of speak
Rubeun.eat_milk_and_cookies('sugar')

santas = Santa.new("female", "non-gender")
puts "Santa will get mad a dasher and move him to the end of rankings"
santas.get_mad_at("Dasher")


santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "Cis", "MTF", "Two-Spirt", "Neither"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "Russian", "Australian", "British"]



example_genders.length.times do |i|santas << Santa.new(example_genders[i], example_ethnicities[i])
end

#taking the length of the gender array converting to a number. 
#initializing a new santa with a gender, and ethnicity and adding it to the Santa array.


santas.each do |santa|
  puts "The gender of the santa is #{santa.gender},\n  
  and it's ethnicity is: #{santa.ethnicity}"
end
# for each santa printing out it's gender, and ethnicity.

=end