class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def initialize ()
  puts "intializing a new puppy class"
  
  end

  def speak(integer)
  	integer.times {puts "woof"}
  end

  def rollover
  	puts "*rolls over*"
  end

  def dog_years(integer)
  	age = 0
  	age = integer * 7 
  	p age
  end

 def sit(seconds)
 puts "Puppy will sit for #{seconds} seconds"
 end

end # end of the Puppy class

class Rapper

	def initialize
	"intializing the Rapper class"
	end

	def concert
	puts "Performs at a concert"
	end

	def studio()
	puts "Spending time in the studio"
	end
	
end # end of the Rapper class


#>>>>>>>>>>>>>>>>>DRIVER CODE <<<<<<<<<<<<<<<<<<<<<<<

#-----------Puppy Driver Code-----------#
Nutmeg = Puppy.new
Nutmeg.speak(7)
Nutmeg.rollover
Nutmeg.dog_years(5)
Nutmeg.sit(30)


#-----------Rapper Driver Code-----------#

#Use a loop to make 50 instances of your class and store it in a data structure

count = 1 
rapper_array = []

while count <= 50
puts "#{count}. Adding a new instance of a rapper"
rapper_array << Rapper.new
count = count + 1
end

rapper_array.each {|rapper|rapper.concert}
rapper_array.each{|rapper|rapper.studio}


