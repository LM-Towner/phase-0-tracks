
puts "What is your name? "
employee_name = gets.capitalize!
puts "Hello, #{employee_name}"

puts "For our records we wanted to know how old are you?"
employee_age = gets.to_i 
puts "Thank you for inputting that"
puts "Just out of curiousity, what year were you born?"
employee_YOB = gets.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you? yes/no "
garlic_bread = gets.downcase

puts "Would you like to enroll in the company’s health insurance? yes/no "
health_insurance = gets.chomp

# using if/else to verify the employee's employee_age

current_year = 2016
	if 
		current_year - employee_YOB == employee_age
		puts "Your information seems correct"
		employee_knows_age = true 
	else
		puts "Hmm...Something doesn't quit add up"
		employee_knows_age = false 
	 end
	 
#verifying if employee likes garlic bread	 
if
	garlic_bread == "yes"
	puts "We'll order garlic bread"
	garlic = true
else
	garlic = false
end

if 
	health_insurance == "yes"
	health = true
else
	health = false
end

#If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”


if employee_knows_age = true && garlic = true ||health = true
	puts "probably not a vampire"
else
	puts "most likely a vampire!"
end



#If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”


if employee_knows_age != true && garlic != true ||health != true
	puts "Almost certainly a vampire"
	else
	puts "probably not a vampire"
end


#Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire. Otherwise, print “Results inconclusive.”


if 
	employee_name == "Drake Cula" || "Tu Fang"
	puts "Definitely a vampire"
else
	puts "Results are inconclusive"
end



#At the beginning of your program, ask the user how many employees will be processed, then begin the survey process for the first employee. After you print the result for that employee, start the survey over again, and repeat until all the employees have been processed.


puts "How many employees are going to be processed today"
count = gets.to_i
current_count = 1


while current_count <= count

	puts "What is the employee's  name? "
	employee_name = gets.capitalize!


	puts "For our records we wanted to know how old they are?"
	employee_age = gets.to_i 
	puts "What year were they born?"
	employee_YOB = gets.to_i

	puts "Our company cafeteria serves garlic bread. Should we order some them some? yes/no "
	garlic_bread = gets.downcase

	puts "Would they like to enroll in the company’s health insurance? yes/no "
	health_insurance = gets.chomp
	
	puts "The employee information is the following: "
	puts " Name: #{employee_name}"
	puts "Age: #{employee_age}"
	puts "Employees Year of Birth: #{employee_YOB}"
	puts "Order Garlic bread: #{garlic_bread}"
	puts "health Insurance: #{health_insurance}"
	
	current_count += 1 
	
end 

puts "Thank You for inputting your Employees"




#In addition to the other questions in the survey, use a loop to ask the employee to name any allergies, one at a time. The employee can type “done” when finished.

#As long as the allergy is not “sunshine,” continue the loop for as long as is needed. If at any point the employee lists “sunshine” as an allergy, skip directly to the result of “Probably a vampire.”




puts "What is your name? "
employee_name = gets.capitalize!
puts "Hello, #{employee_name}"

puts "For our records we wanted to know how old are you?"
employee_age = gets.to_i 
puts "Thank you for inputting that"
puts "Just out of curiousity, what year were you born?"
employee_YOB = gets.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you? yes/no "
garlic_bread = gets.downcase

puts "Would you like to enroll in the company’s health insurance? yes/no "
health_insurance = gets.chomp



#In addition to the other questions in the survey, use a loop to ask the employee to name any allergies, one at a time. The employee can type “done” when finished.

#As long as the allergy is not “sunshine,” continue the loop for as long as is needed. If at any point the employee lists “sunshine” as an allergy, skip directly to the result of “Probably a vampire.”
puts "Do you have any allergies? yes/no"
answer = gets.downcase
	if answer == "yes"
		
puts "List some of your allergies, type 'done' when you are finished"
allergies = gets.chomp

		if allergies == "sunshine"
	puts " Vampire!!"
		else
			until allergies == "sunshine" || allergies == "done"
	puts "What are your allergies?"
	allergies = gets.chomp

		end
			end
puts "Thank you for your time"

end



#Release 5: Plot Twist

 puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends." 




