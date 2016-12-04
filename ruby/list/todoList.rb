class TodoList

attr_reader :list
#attr_reader was added to this class because the rspec asked for 

	def initialize(new_array)
		@list = new_array
	end

	def get_items
		@list
	end

	def add_item(item)
		@list << item
	end

	def delete_item(item)
		@list.delete(item)
	end

	def get_item(num)
		@list[num]
	end 


end

