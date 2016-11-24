#Release 0: Research with your pair

	#What does scope mean in terms of methods?
		#Scope is all about where something is visible

	#What is a local variable? 
		# A local variable is a variable which is either a variable declared within the function or as is an arument to a function

	#What is a global variable? 
		# A global variable (DEF) is a variable which is accessible in multiple scopes. 

	#What is implicit return? 
		# A methods ends when one of the following occurs. Immediately when the thread terminates.
		# Immediately when a raise / throw is encountered - excepting as such is handled. 
		#Immediately when a return is encountered. When it runs out of code or "reaches the end", in which case the value 
		#of the last expression is returned

	#Side Effect
		#There are also methods that return nothing; we just use for their side-effects.
		# When we say side-effect, we mean some sort of modification to a non-local variable or 
		#some sort of observable interaction with calling methods or the outside world.



def encrypt(string)

index_of_string = 0
#postilion of the character within the string, the substring of the string in question 

	while index_of_string < string.length
		#the character position in the index has to be less than the actual length of if the string
		if string[index_of_string] == "z"
			string[index_of_string] = "a"	
		elsif string[index_of_string] == ""
				
		# if the character is z, the program will automatically make the letter to be a so that it can be b when called next, and not aa
	else		
	string[index_of_string] = string[index_of_string].next

	end
		index_of_string = index_of_string + 1
	
	end
	return string
end

def decrypt(string)
index_of_string = 0
alphabet = "abcdefghijklmnopqrstuvwxyz"

	while index_of_string < string.length
		if string[index_of_string] == ""
		elsif string[index_of_string] == "a"
			string[index_of_string] = "z"
		else

		temporary_string = alphabet.index(string[index_of_string])
		#using another variable to hold a temporary string
		#What is the result of alphabet.index("some letter in the string")
		#for an example alphabet.index("b") => 1
		# temporary_string = 1
		
		temporary_string = temporary_string -1
		#temporary_string = 0
		#Taking the result of the output above and subtracting it by 1
		#creating an instance of going backwards 
		string[index_of_string] = alphabet[temporary_string]
		#Evaluate the right side first
		#alphabet[some number] => 
		#for an example string[index_of_string] = alphabet[0]
		#string[index_of_string] = a
		#	
		end
		index_of_string = index_of_string + 1
	
end 

	return string 
end 


#Driver Code 

puts " Would you like to encrypt or decrypt a string"
response = gets.chomp

if response == "encrypt"
 	puts "Enter string to encrypt"
 	eString = gets.chomp
 	puts encrypt(eString)
 elsif response == "decrypt"
 	puts "Enter string to decrypt"
 	dString = gets.chomp
 	puts decrypt(dString)
 	else 
 	puts "Invalid entry"
 end 



#puts encrypt("abc")
#puts encrypt("zed")
#puts decrypt("bcd")
#puts decrypt("afe")

