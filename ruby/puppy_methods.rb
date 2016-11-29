class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def initialize
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

end # end of the Puppy class

#driver code 

Nutmeg = Puppy.new
Nutmeg.speak(7)
Nutmeg.rollover
Nutmeg.dog_years(5)

