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


#Release 1: Calculate Fibonacci Numbers 

=begin
The concept of Fibonacci numbers is pretty simple: you start off with a 0 and a 1, 
and keep adding numbers onto the list by adding the previous two. 
With that in mind, an array of the first six Fibonacci terms would be [0,1,1,2,3,5]. 
Each number in the array is the sum of the previous two numbers, except for the 0 and the 1, 
which we started out with.(Note that some Fibonacci sequences start out with two 1s instead. Don't let that confuse you.)	
=end

def fib(integer)

fib_arr = [0,1]
#declaring the beginning portion of the fibanocci sequence
index = 2
#starting at two because the array is already filled with the 0 & 1 index's filled 
	until index == integer 
# the integer will be the fib(x) for the sequence
	next_number = fib_arr[-1] + fib_arr[-2]
#the next number in the sequence will equal the last number in the array, represented by -1, and the second to
#last number represented by -2 added together.
	fib_arr << next_number
#feeding the next_number into the array
	index += 1
#changing to the next index in the array
	end
	puts fib_arr
#printing the new array
end

fib(100)