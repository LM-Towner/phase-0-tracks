A game challenge

-> User1 will enter a word (Driver)
-> User2 will attempt guess User1 word(Driver)
-> declare a variable to store User1 word (Computer)

Initialize Methods
empty word spaces: _ _ _ _ _ _ _ (based on the word length, youll see that many guesses)
guess count set to zero


	Methods to consider
---------------------------------
-> Verifying whether the word is a word, no special characters.
	->using the alphabet to verify, using downcase input/output

-> Determine whether or not a player should be able to enter only one letter or not,
	-> if they enter multiple letters, spit out an prompt that it is an invalid number

-> storing word 

 		word = "abc"
			

-> Splitting word 

		word.split("") #split on the characters
		#word = ["a", "b", "c"]

	--> After word split find method that allows you to show empty array, make elements private?

		word.fill("_") # turns the spaces in the array to whatever you want them to be. Example below

			-> ("_","_", "_") #this is what the viewer will see instead of ["a", "b", "c"]

-> Replace Letter method

			-> If I wanted to replace a letter with a space I would use
			word.insert(0, "a")
			-> this doesnt replace, it just inserts a new index. I need to find another method or build my own

			-> word.fill(" ")
					if letter is at index 0
				word[0] = letter
			else put it in stored guess array
					# => "letter", "_" , "_"

->Create a method that stores the guess letters
			
			storage = []
			user_input = "a"
			storage << user_input 
			# => "a"

	--> Compare guessed letters with previous letters guessed?
	how would I compare the letters given to the one in the array?

			word.include?("a")
			#will return => true
			storage.include?("b")
			#will return => false, theres was no guess of b

	Assuming that well have to use an index scanner of some sort

		word.include?("a")
			#will return => true

		--->If guess is already there, ignore with guess counter


			--->Else add to stored guesses


-> Guesses are determined before game, guesses equal the amount of letters within the word. 


	--> guesses = word length


->Let users know how many guesses they have, and how many many they have left


->End game message
	--> Congratualations message is the game is won

	-->Taunting message if lost	

	

Example Methods 
#storing word

def store(word)
	word.split("") #splitting on the characters of the word/creates an array
end

def guess(number)


end
