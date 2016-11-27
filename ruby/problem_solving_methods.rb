#Release 0: Implement a Simple Search 

=begin

Write a method that takes an array of integers and an integer to search for.
The method should return the index of the item, or nil if the integer is not present
in the array. Don't use built-in array methods like .index. 
You are allowed to use .length and .each.
	
=end

arr = [42, 89, 23, 1]

def take_array(array, integer) 
  index = 0
  #program will start at the zero index and work it's way through the array
  array.each do |i|
    if i == integer
      puts "the integer #{integer} is at the index #{index}" 
    else
      index += 1
      #keeps searching for the number
    end
  end
end
p take_array(arr,1)