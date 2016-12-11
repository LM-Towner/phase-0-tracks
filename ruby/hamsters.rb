puts "what is the hamster's name?" 
name = gets.chomp

puts "How noisy is the hamster?" 
volume_level = gets.to_i

puts "Is the hamster a good candidate for addption?"
adoption = gets.chomp

puts "How old is the hamster? Put n/a if unsure "
age = gets.chomp
	if age == "n/a"
		age =  nil
		
end

puts " Name: #{name}" 
puts "Volume_level: #{volume_level}" 
puts "Adoption: #{adoption}"  
puts "Age: #{age}"





