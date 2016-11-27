# User Interface

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



