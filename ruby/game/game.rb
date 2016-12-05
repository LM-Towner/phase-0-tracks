class Game

attr_accessor :word
attr_reader :won_game, :guesses, :paper


	def initialize(word)

	@word = word.downcase
	#since my alphabet checker is all lowercase, I would prefer if all words given remain lowercase so that it doesn't cause any validation problems later on
	@won_game = false
	#flag for determiing whether or not the game is over
	@array_word = word.downcase.split("")
	#splitting the word on the spaces
	@guesses = word.length
	#User2 will only get the amount of guess equal to the amount of letters in the secret word
	@paper = Array.new(word.length){"_"}
	#essentially the gameboard for the 'hangman' style game
	@storage = []
	#storage of the guessed letters 
	@Alphabet = "abcdedfghijklmnopqrstuvwxyz"
	#this is used as a point of reference to compare  whether or not the inputted is part of the alphabet, will only work with downcases. Each istance of this game will start off with the acceptable charcters for  input into the game.
	@clear
	end
	
	#initalized method determines all of the attributes that all of the instances of the 'Guessing Game' will begin with. They will pick a word. The start off with the game begining with the word being transformed onto the 'paper' aka gameboard, an empty storage array for all the guessed lettes, the guesses equivalent to the length of the word. 
 

	def storage(letter)
		letter = letter.downcase
		@storage.include? letter
		
	end

	#this method creates the storage vessel for the guesses that player has guessed

	def letter?(letter)
		(@Alphabet.include? letter.downcase) && (letter.length == 1)
	end

	#making sure that letter is not a special character but indeed a letter, as well as making sure the user has not inputted any empty space by checking the length.

	def word?(word)
		word = word.downcase
		word.each_char {|x| return false if not letter?(x)}
		!word.empty?
		#is the character an  empty space?
	end

	#iteration through each character to make sure that the word has no special characters, and is not empty. So user will not be able to enter something like "#$% or he llo" Wards off bad user input. 

	def guess(letter)
		letter = letter.downcase
		count = 0 
		@array_word.each_index do |x|
			if @array_word[x] == letter
				@paper[x] = letter
				count = count + 1
			end
		end
		@storage << letter
		#add to the guess letter's storage vessel
		@guesses -= 1
		#substract the guesses from the total guesses allowed 
		return count 
		#this will be used to let the user know how they are doing
		
	end
	#the meat and potaotes of the program, this is where the program will spend most of it's time. figuring out whether or not the letter is on the gameboard or if it should go in the strored  array pile or should it reveal itself.
 
	def win!(guess = "")
		won_game = (@paper == @array_word || @word == guess)
	end
	#end of the game if these conditions are met



end # end of the class


#>>>>>>>>>>>>>>>>>>>>>> User Interface <<<<<<<<<<<<<<<<<<<#

#This is the part where we'll assign the roles to the user.

puts "This is the start of something great\n you will be embarking on a wonderful game call 'GUESS THE WORD', no affliation to Hangman"
puts "You will need two players, so grab a friend and let's play!!!"

puts "Player One, please ask Player Two, to turn around while you enter your word\n Please enter word now, please DO NOT enter any special characters or spaces"

gameword = gets.chomp
#hopefully player 1 will enter a word without issues if not we'll check with conditions below
game = Game.new(gameword)
#creating a new instances of the game

until game.word?(game.word)
	puts "Dude(tte)!! Enter a word, no spaces, and no special characters, let's be fair to player 2. Try again below"
	gameword = gets.chomp
	game = Game.new(gameword)
	
end #end of until

puts "Your word was collected."
puts " " * 100000
puts " "  * 10000
puts "Player 1 please ask Player 2 to turn around so we can begin this game"
puts "welcome back Player 2, Player one has inputted a lovely word for you to try to guess\n\n You have #{game.guesses} tries to complete this,\n let's see how you do:\n"

puts game.paper.join(" ")
#retorical blank game board that I like to call paper
puts "Enter one letter ONLY and hit Enter to continue the game play"
#displaying the "board" to player 2 

#Set up the game to continue until one of the two conditions are met
# 1) The guess  count is  used up.
# 2) The player won

while game.guesses > 0 

user_input = gets.chomp

while !game.letter?(user_input) || game.storage(user_input)
        puts "We've talked about this before, please only enter ONE letter at a time" if !game.letter?(user_input)
        puts "Unfortunately, I believe you've already entered this, please try again" if game.storage(user_input)
        user_input = gets.chomp
end 

 letters_in_game = game.guess(user_input) 
 #set the guess to correct if any letters were revealed
correct = letters_in_game > 0

#This code will only run if the player was able to  guess a word
 puts "You revealed #{letters_in_game} letters!" if letters_in_game != 1
 puts "You revealed #{letters_in_game} letter!" if letters_in_game == 1
 puts "You may be on to something Player 2!" if letters_in_game > 0

 puts " " * 50

#show user the current state of the game board
 puts "See the current status of your game:\n" if correct

 puts "Unfortunately, your game has not changed. See below" if !correct
 puts game.paper.join(" ")

 if game.win!
        puts "You did Player 2. You solved for the word: #{game.word}\n excellent job!!!!"
        break
 end
#This block of code will run if Player two has successfully completed the game

#notify users how many guesses they have left
 puts "Current Guess Count: #{game.guesses}" if game.guesses > 1
 puts "Make another guess!" if game.guesses > 0

 #to be fair to Player 2, an enter the complete word options was added on their last try so that they can  get a chance to win

 if game.guesses == 1
        puts "This is your last guess? Wanna guess the word? (yes/no)"
        answer = gets.chomp

        #Player two will need to enter the enter yes or no word before continue. Program will keep looping until they do.
        until answer == 'yes' or answer == 'no'
               puts "Please answer yes or no"
                answer = gets.chomp
        end

        #If  Player 2 is feeling fancy, let them make a guess. 
        if answer == 'yes'
               puts "So Player 2, guess Player One's word!"
               guess = gets.chomp.downcase
               if game.win! (guess)
                       puts "Whooopeeeee, Player 2, you did it.\n The correct word is: #{game.word}"
               end
               break
        end
        #prompt for a letter if they don't want to guess the whole word
        puts "Well someone has to win. Will it be You Player 2, or will it be you Player One\n\n Player 2 Please enter your last and final letter!"
 end
end
if not game.win!
  puts "Well it turns out that Player 1 has reign supreme, and you Player 2 are indeed a loser. Here's your loser's prize, the secret word of the day brought to you by your Player 1 friend\n\n The Word was  #{game.word}"
end