require_relative 'game'

describe Game do 
	let(:game) {Game.new("hello")}

  it "determines whether or not the letter inputted has been used" do 
    expect(game.storage("h")).to eq false
    game.guess("h")
    expect(game.storage("h")).to eq true
  end
  it "determines whether or not the user enter a string composed of only letters" do 
    expect(game.word?("abc")).to eq true
    expect(game.word?("abc3")).to eq false
    expect(game.word?("123")).to eq false
    expect(game.word?("@##@@$$")).to eq false
    end

  it "determines whether the user inputted a single letter, no spaces allowed" do
    expect(game.letter?("ab")).to eq false
    expect(game.letter?("a")).to eq true
    expect(game.letter?("")).to eq false
  end

  it "the character is compared to the string, it will how many instances there are " do
    expect(game.guess("h")).to eq 1
    expect(game.guess("l")).to eq 2
    expect(game.guess("f")).to eq 0
  end

  it "has a paper object that keeps track of the guesses, if guess is there, it will reveal itself" do 
      expect(game.paper).to eq ["_","_","_","_","_"]
      game.guess("o")
      expect(game.paper).to eq ["_","_","_","_", "o"]
  	end

  

  it "determines whether the player won" do
  	expect(game.win!).to eq false 
  	game.guess("h")
  	game.guess("e")
  	game.guess("l")
  	game.guess("l")
  	game.guess("o")
  	expect(game.win!).to eq true
  	end

	it "determines whether the player lost" do 
  	game.guess("j")
  	game.guess("e")
  	game.guess("l")
  	game.guess("l")
  	game.guess("l")
  	game.guess("o")
  	expect(game.win!).to eq false
	end
	
end