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

end # end of the Puppy class

#driver code 

Nutmeg = Puppy.new
Nutmeg.speak(7)
Nutmeg.rollover


