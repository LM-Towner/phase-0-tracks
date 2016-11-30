class Santa

	def initialize()
		print "initializing santa instance"
		puts
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end

end

#>>>>>>>>>>Driver Code<<<<<<<<<<<<<

Rubeun = Santa.new
Rubeun.speak
Rubeun.eat_milk_and_cookies('sugar')