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

puts "What is your telephone number"
number = gets.chomp

designer= {}
#declaring an empty array

designer['name'] = fname
designer['address'] = address
designer['kids'] = children
designer['travel'] = input
designer['p_number'] = number 
#constructing of the array from user input

#printing the designer's information to screen for them to view 
designer.each do |key,value|
  puts "#{key}: #{value}"
end

#giving the user the opportunity to change their information 

puts "After viewing your information that you've inputted, would you like to change any of the information listed? (yes/no)"
user_input = gets.chomp

if user_input == "no"
	puts "Thank you for your submission"
	# if user does not have any changes, the program will end

	else 
	puts "What would you like to change?"
	choice = gets.chomp
	
		if choice == 'name'
		puts "Update name"
		designer.delete('name')
		new_name = gets.chomp
		designer[:name] = new_name
		#designer[:name] == new_name


		elsif choice == 'address'
		puts "Update Address"
		designer.delete('address')
		new_address = gets.chomp
		designer[:address] = new_address


		elsif choice == 'kids'
		puts "Update the amount of kids"
		designer.delete('kids')
		new_kids = gets.to_i
		designer[:kids] == new_kids

		elsif choice == 'travel'
		puts "Are you able to travel"
		designer.delete('travel')
		new_travel = gets.chomp
		designer[:travel] = new_travel

		elsif choice == 'telephone'
		puts "Update your telephone number"
		designer.delete('p_number')
		new_telephone = gets.chomp 
		designer[:p_number] = new_telephone	
  
   end 
	
	puts "------------------------------------"	
		puts "The information you've updated: "
		designer.each do |key,value|
 		puts "#{key}: #{value}"	
end

 
puts ""
puts "Thank you for your submission"

end

