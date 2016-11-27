=begin 

In this nested data structure, I will be creating Hash element named Amusement park which will
feature different components you may find in an amusement park.

Visual representation of nested data structures:

Amusement Park
Ride -> Roller Coaster, Ferris Wheel, Haunted House
Arcade -> Video Games, Bowling, Prizes
Concession Stand -> Hamburgers, French Fries.  Pizza, Cotton Candy
People -> Adults, Children, Teenager

=end 


#Creation of nested data structure, starting out with empty Hash 

amusement_park = Hash.new
amusement_park = {
	'rides' => ['roller coaster', 'ferris wheel'],
	'arcade'=> ['video games', 'bowling', 'prizes'],
	'concession'=> ['hamburgers', 'fries', 'pizza', 'cotton candy'],
	'people' => ['adults','children', 'teenager']
}

#p amusement_park
#printing the amusement park hash to make sure it was created sucessfully

p amusement_park['arcade'][2]
# => should print out prizes, because prizes is the 3rd element inside of the array

p amusement_park['rides'][1]=> ['Tommy', 'Allison', 'Jane']
#adding people onto the ferris wheel 
p amusement_park

p amusement_park['concession'][0] => ['with cheese', 'with mustard', 'no tomatoes']
#creating different types of hamburgers 

p amusement_park['people'].last
# printing the last elemennt in the people array

