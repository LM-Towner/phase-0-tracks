module Shout

	#def self.yell_angrily(words) 
	#no need to use self anymore using the keyword 'include'
	def yell_angrily(words)
		puts words + "!!!!" + " :( "
	end


	#def self.yell_happily(words)
	#no need to use self anymore using the keyword 'include'
	def yell_happily(words)
		puts words + "!!!!!!" + " :)"
	end
end

#>>>>>>>>>>>Driver Code <<<<<<<<<<<<

class Student
	include Shout
end

class Guest
	include Shout
end

Angela = Student.new
Angela.yell_angrily("I FORGOT THE SEMICOLON")


John = Guest.new
John.yell_happily("Toast to the bride and groom")


#Shout.yell_happily("weee")
#Shout.yell_angrily("awww")