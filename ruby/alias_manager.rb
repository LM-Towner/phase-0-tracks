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

def vowels (string)
	new_string = string.tr('aeiou','eioua')
	return new_string
end

def constonants(string)
	string = string.tr('bcdfghjklmnpqrstvwxyz','cdfghjklmnpqrstvwxyzb') 
	return string
end

#end of the methods declaring

stored_names = {}
real_name = ""
alias_name = ""

print "Welcome to the Alias Management System\n"
input = ""
  until input.downcase == "quit"
    print "Enter a  first and last name, OR Type 'quit'\n" 
      	change_name = gets.chomp
      	change_name = change_name.downcase
        real_name = change_name
    if change_name == "quit"
      break
    elsif
        change_name = vowels(change_name)
		change_name = constonants(change_name)
		change_name = change_name.split
		change_name = change_name.reverse
		alias_name = change_name
      end
    stored_names[real_name] = alias_name
  end

puts "A complete list of all the names we changed: "
stored_names.each do |key,value|
  puts "#{key} : #{value}"
end
