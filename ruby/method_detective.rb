# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

puts "iNvEsTiGaTiOn".swapcase
puts "iNvEsTiGaTiOn".swapcase!

# => “InVeStIgAtIoN”

puts "zom".insert(1,'o')
# => “zoom”

puts "enhance".center(20)
# => "    enhance    "

puts "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

puts "the usual".insert(9, ' suspects')
puts "the usual".ljust(18, ' suspects')
#=> "the usual suspects"

puts " suspects".insert(0, 'the usual')

# => "the usual suspects"

puts "The case of the disappearing last letter".chomp('r')
# => "The case of the disappearing last lette"

puts "The mystery of the missing first letter".delete("T")
# => "he mystery of the missing first letter"

puts "Elementary,    my   dear        Watson!".squeeze
# => "Elementary, my dear Watson!"

puts "z".ord
# => 122 
#122 is the ordinal number of z 
# (What is the significance of the number 122 in relation to the character z?)

puts "How many times does the letter 'a' appear in this string?".count("a")
# => 4