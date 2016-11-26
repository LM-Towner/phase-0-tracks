#Asking the user for input
#Collecting the data given in a hash 
	#Asking the client for their fullname(string input)
	#Their address (String input)
	#How many children they have(integer)
		#will have to convert the string input to a integer output by using a method
	#Can they travel (boolean- True or False)
	#Their telephone number (String)
# Printing the hash to the screen to verify that all the information was correct.
# If information is incorrect, all the user to update the value for the keys given
#Go through each key, value pair and promp the user whether or not they want to change their information
	#If user response is "yes" allow the user to update their  value information for the keys
	#Go through each each key/value pair until the user is finished with the update
		#This portion of the program will only allow the user to update their information once
# If the user does not need to update their information, the program will then print the information and close. 
#And the information will be stored within the program (hash)


#prompting the user for their information

puts "What is your Full Name"
fname = gets.chomp

puts "What is your address "
address = gets.chomp

puts "How many children do you have?"
children = gets.to_i
#converting the children output to a integer instead of leaving it as string

puts "Are you able to travel (yes/no)"
input = gets.chomp
	if input == 'yes'
		travel = true
	elsif input == 'no'
		travel = false
end

puts " What is your telephone number"
number = gets.chomp

designer= {}
#declaring an empty array

designer['name'] = 'fname'
designer['address'] = 'address'
designer['kids'] = children
designer['travel'] = input
designer[number] = 'number' 
#constructing of the array from user input

designer.each do |key,value|
  puts "#{key}: #{value}"
end


#Asking the user for input
#Collecting the data given in a hash 
	#Asking the client for their fullname(string input)
	#Their address (String input)
	#How many children they have(integer)
		#will have to convert the string input to a integer output by using a method
	#Can they travel (boolean- True or False)
	#Their telephone number (String)
# Printing the hash to the screen to verify that all the information was correct.
# If information is incorrect, all the user to update the value for the keys given
#Go through each key, value pair and promp the user whether or not they want to change their information
	#If user response is "yes" allow the user to update their  value information for the keys
	#Go through each each key/value pair until the user is finished with the update
		#This portion of the program will only allow the user to update their information once
# If the user does not need to update their information, the program will then print the information and close. 
#And the information will be stored within the program (hash)


#prompting the user for their information

puts "What is your Full Name"
fname = gets.chomp

puts "What is your address "
address = gets.chomp

puts "How many children do you have?"
children = gets.to_i
#converting the children output to a integer instead of leaving it as string

puts "Are you able to travel (yes/no)"
input = gets.chomp
	if input == 'yes'
		travel = true
	elsif input == 'no'
		travel = false
end

puts " What is your telephone number"
number = gets.chomp

designer= {}
#declaring an empty array

designer['name'] = 'fname'
designer['address'] = 'address'
designer['kids'] = children
designer['travel'] = input
designer[number] = 'number' 
#constructing of the array from user input

#printing the designer's information to screen for them to view 
designer.each do |key,value|
  puts "#{key}: #{value}"
end



