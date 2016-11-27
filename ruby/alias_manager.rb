=begin 

A) Designing method to take a string and reverse it. 
Steps to begin this process is as followed:

1) Splitting the string
	string = "Luke John"
	new_string = string.split(" ")
	which transforms the string into an array
	Method will split the string on the spaces, indicating the first and last name 
		=> ["Luke", "John"]

2) Using .reverse! to change the order of the array
String is now represented inside of an array.We can now call the method .reverse. 
However we will call .reverse using the bang operator to alter the string permanetely 
	new_string = ["Luke", "John"].reverse!
			=> ["John", "Luke"]

3) Using .join to transform the array back into a string	
	new_string = ["John", "Luke"].join(",")
		=> "John, Luke"

B) Designing a method that will change all the vowels (aeious to the next vowel)

	Changing all the vowels (aeiou to the next vowel) using the method .gsub
	string_name.gsub(/[aeiou]/, 'a'=> 'e', 'e'=> 'i', 
	'i' => 'o', 'o' => 'u', 'u'=> 'a')		
				
	realized that was a waste of time to use .gsub
	Could use .tr instead
	
	string_name.tr('aeiou','eioua')


C) Designing a method that will change the consonants letters in the alphabet
	
	We will need a counter to check the length of the string to make sure that all characters
	within the string is counted so that they can be changed

---------------------End of the PsuedoCoding---------------------

=end 

# User Interface


=begin
puts "Welcome to the Alias Management System"
puts " "
puts "You may enter as many fake names as you would like, type 'quit' to exit the program"
puts "Enter name: "
names = []
#empty array to store the names that the user gives to the program

while user_input != 'quit'
#until the user enters the word 'quit', the program will keep prompting for a name
names << user_input
#adds the names to the names array
puts "Enter name "
user_input = gets.chomp
end

puts names
#prints the names that are now stored in the array
=end

def split(string)
	new_string = string.split(" ")
	return string
end

#p split("hello love")

def reverse(array)
	array = array.reverse!
	return array
end

#reverse(["love", "pray"])

def join(name)
	string = name.join(",")
	return string
end

#oin(["pray", "love"])





