=begin
Method to create a list 
Input: 
	string of item seperated by spaces(example: "carrot apples cereal pizza")
Steps:
	1) Using a me thod split the string on the spaces
	2) String will now be stored in an array
	3) Until the array is empty
	4) Populate each array element into a hash using a key value pair
	5) Using the hash create a key vallue pair with the key being the item, and the value being the quantity
	6)Print the list to the screen using a print method that will be created in a later feature
Output: Hash

Method to add an item to a list
Input: item name, list and quantity
Steps: 
	1) Defining method add list
	2) Adding the item is defining the name and the quantityto the list
	3) Make use of the print method
	4)Print the list 
Output: Hash

Method to remove an item from the list
Input: list, item
Stepts:
	1)Removing the item which will delete all instances of the item from the list
	2)Locate the item you will wish to delete
	3)Remove the item and its quantity from the list
	4) Use the print method to verify tha the item was removed
Output: Hash 

Method to update the quantity of an item
Input: list, items, quantity
Steps: 
	1)Determine wheter or not the item is in the list
	2)Locate which item to update
	3)If a mistake was made while adding the item, use this method
Output: Hash 

=end

def shopping_list(items,list)
	items = items.split(" ")
	#splitting the string, strings automatically gets loaded into an array
	items.each{|item|
	list[item] = 1
	# hash[key] = 1
	# hash{key => 1}

}
	#populating each item in the array with the quantity of 1
	list
end

def add_to_list(list,item, quantity)
	list[item] = quantity
	# list{item => quantity}
	list 
end

def remove_item(list, item)
	list.delete(item)
	list
end

def update_item(list,item,quantity)
	list[item] = quantity
	list 
end

def print_list(list)
	list.each{|item, quantity|
		puts "List: #{item}, quantity: #{quantity}"
	}
end

#>>>>>>>>>>>Driver Code <<<<<<<<<<<<<<<<<

grocery_bag = {}

puts 
grocery_bag = shopping_list("carrots apples cereal pizza", grocery_bag)
puts "Items inside of the grocery bag" 
p grocery_bag
puts ("_" * 75)

puts

grocery_bag = add_to_list(grocery_bag, "Lemonade",2 )
puts "Verifying that Lemonade was added to the grocery bag hash"
p grocery_bag
puts ("_" * 75)

puts

grocery_bag = add_to_list(grocery_bag, "Tomatoes",3 )
puts "Verifying that Tomatoes was added to the grocery bag hash"
p grocery_bag
puts ("_" * 75)

puts

grocery_bag = add_to_list(grocery_bag, "Onions",4 )
puts "Verifying that Onions was added to the grocery bag hash"
p grocery_bag
puts ("_" * 200)

puts

grocery_bag = add_to_list(grocery_bag, "Ice Cream",4 )
puts "Verifying that Ice Cream was added to the grocery bag hash"
p grocery_bag
puts ("_" * 200)

puts

grocery_bag = remove_item(grocery_bag, "Lemonade")
puts "Verifying that Lemonade was delete from the grocery bag hash"
p grocery_bag
puts ("_" * 200)

puts

grocery_bag = update_item(grocery_bag, "Ice Cream", 1 )
puts "Verifying that Ice Cream updated in the grocery bag hash"
p grocery_bag
puts ("_" * 200)
puts





