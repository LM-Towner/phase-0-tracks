#declare an array and a hash, and populate each of them with some data. 

dog_name = []
#declaring an empty array
dog_name = %W[Ashley Tom Bob Danielle]

p dog_name
#printing the array

dog_information = Hash.new 
#declaring an empty hash
dog_information [:Ashley] = 6
dog_information[:Tom] = 1
dog_information[:Bob] = 3
dog_information[:Danielle] = 2

#could also declare hash like this:
#dog_information = {Ashley => 6,Tom =>1, Bob => 3, Danielle => 2}

p dog_information
#printing the hash

#Demonstrate that you can iterate through each one 
#using .each, and then using .map! (modifying the data in some way).
#Note that you can't call .map! on a hash, so you can skip that 
#(.map returns an array, so a destructive map method is logically impossible on a hash). 
#Print the data structures before and after each call to demonstrate whether they 
#have been modified or not.


#iteration through the hash using .each
dog_name.each {|name| puts "The dog's name is #{name}"}

p dog_name
#priting before the .map call

puts"-------------------------------"
#line spacing


#iteration through the hash using .map
dog_name.map! {|x| x.delete("o")}
#.map! deletes any instances of the letter 'o' if found from the name
p dog_name

dog_information.each do |name,age| puts "Dog information is the following: \nName #{name} #{age} year(s) old \n"
end